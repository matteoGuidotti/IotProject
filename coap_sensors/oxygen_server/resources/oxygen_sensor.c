#include <stdio.h>
#include <stdlib.h>
#include "coap-engine.h"
#include "dev/leds.h"
#include <time.h>
#include <../utils/constants.h>

/* Log configuration */
#include "sys/log.h"
#define LOG_MODULE "App"
#define LOG_LEVEL LOG_LEVEL_APP


/* Two simple actuators example, depending on the post variables, the actuators are turn on or off */

static void res_put_post_handler(coap_message_t *request, coap_message_t *response, uint8_t *buffer, uint16_t preferred_size, int32_t *offset);
static void get_oxygen_handler(coap_message_t *request, coap_message_t *response, uint8_t *buffer, uint16_t preferred_size, int32_t *offset);

static void oxygen_event_handler(void);

EVENT_RESOURCE(oxygen_sensor,
         "title=\"Oxygen sensor;obs",
         get_oxygen_handler,
         res_put_post_handler,
         res_put_post_handler,
         NULL,
         oxygen_event_handler);


static double oxygen_level = 21.0;
static double old_oxygen_level = 21.0;
static bool oxygen_emitter = false;
static bool oxygen_filter = false;
static bool oxygen_fast = false;


enum Risk{LOW, MEDIUM_LOW, MEDIUM, HIGH};
static enum Risk current_risk = LOW;
enum Cause{CTRL, FIRE, ADMIN};
static enum Cause filtration_cause  = CTRL;
static enum Cause emission_cause  = CTRL;

char json_response[512];

//coap-client -m POST|PUT coap://[fd00::20x:x:x:x]/oxygen_sensor -e "{\"type\":\"emitter|filter\", \"cause\": \"CTRL|FIRE|ADMIN\", \"mode\":\"on|off\"}"


static void res_put_post_handler(coap_message_t *request, coap_message_t *response, uint8_t *buffer, uint16_t preferred_size, int32_t *offset)
{
  size_t len = 0;
  const uint8_t* payload = NULL;
  int success = 1;

	if((len = coap_get_payload(request, &payload))) 
	{
		if(success && strcmp((char*)payload, JSON_OX_EMITTER_SLOW) == 0) {
		
			oxygen_emitter = true;
			oxygen_filter = false;
			emission_cause = CTRL;
			LOG_INFO("Oxygen emitter turn on in CTRL (slow) mode! \n");
		}
		else if(success && strcmp((char*)payload, JSON_OX_EMITTER_FAST) == 0)
		{	
				oxygen_emitter = true;
				oxygen_filter = false;
				emission_cause = ADMIN;
				LOG_INFO("Oxygen emitter turn on in ADMIN (fast) mode!\n");

		}
		else if(success && strcmp((char*)payload, JSON_OX_FILTER_FAST) == 0)
		{	
				oxygen_filter = true;
				oxygen_fast = false;
				filtration_cause = FIRE;
				LOG_INFO("Oxygen filter turn on in FIRE (fast) mode!\n");

		}
		else if(success && strcmp((char*)payload, JSON_OX_FILTER_SLOW) == 0)
		{	
				oxygen_filter = true;
				oxygen_fast = false;
				filtration_cause = CTRL;
				LOG_INFO("Oxygen filter turn on in CTRL (slow) mode!\n");

		}
		else if(success && strcmp((char*)payload, JSON_OX_EMITTER_OFF) == 0)
		{	
				oxygen_emitter = false;
				oxygen_filter = false;
				LOG_INFO("Oxygen emitter turn off!\n");

		}
		else if(success && strcmp((char*)payload, JSON_OX_FILTER_OFF) == 0)
		{	
				oxygen_filter = false;
				oxygen_emitter = false;
				LOG_INFO("Oxygen filter turn off!\n");

		}
		
		else{
			printf("ERROR: UNKNOWN COMMAND\n");
			success = 0;
		}

	}
	else{
		printf("ERROR: UNKNOWN COMMAND\n");
		success = 0;
	}
		
	if(!success) {
		coap_set_status_code(response, BAD_REQUEST_4_00);
	}
}





/*---------------------------------------------------------------------------*/

static enum Risk simulate_oxygen_change(){

	int type = 0;
	double variation = (double)(rand() % 5) / 10;
	double variationFast = 0.5;
	double variationCTRL = 0.1;
	
	old_oxygen_level = oxygen_level;
	

	if(oxygen_filter && filtration_cause == FIRE){
		printf("Decreasing fast\n");
		oxygen_level = oxygen_level - variationFast;
		
	} else if(oxygen_filter && filtration_cause == CTRL){
		printf("Decreasing slow\n");
		oxygen_level = oxygen_level - variationCTRL;
	}
	else if(oxygen_emitter && emission_cause == CTRL) {
		printf("Increasing slow\n");
		oxygen_level = oxygen_level + variationCTRL;
	}
	else if(oxygen_emitter && emission_cause == ADMIN){
		printf("Increasing fast\n");
		oxygen_level = oxygen_level + variationFast;
	}
	else{
			type = rand()%100;
			//We emulate the increase or decrease in oxygen assuming that there is a change in 10% of the cases
			if((rand()%100) < 10)
			{
				//With an high probability, oxygen is decreasing due to internal combustion in the furnace
				if(type >= 2)
					oxygen_level = oxygen_level - variation;
				//With a low probability the oxygen level inside the furnace increases due to a failure
				else if(type < 2 )
					oxygen_level = oxygen_level + variation;
			}	
		}
	
	
	if (oxygen_level >= 20.0)
		return LOW;
	else if (oxygen_level < 20.0 && oxygen_level >= 15.0)
		return MEDIUM_LOW;
	else if (oxygen_level < 15.0 && oxygen_level >= 13.0)
		return MEDIUM;
	else return HIGH;
	
}



static void get_oxygen_handler(coap_message_t *request, coap_message_t *response, uint8_t *buffer, uint16_t preferred_size, int32_t *offset)
{
	char message[30];
	int len;
	sprintf(message, "%g", oxygen_level);
	int parteIntera = (int) oxygen_level;
	int parteDecimale = (int)((oxygen_level - parteIntera) * 10);
	sprintf(json_response, "{\"oxygen_value\": %d.%d}", parteIntera, parteDecimale);
	printf("%s\n", json_response);

	coap_set_header_content_format(response, APPLICATION_JSON);
	coap_set_header_etag(response, (uint8_t *)&len, 1);
	coap_set_payload(response, json_response, strlen(json_response));

}


static void oxygen_event_handler(void)
{
  enum Risk sensed_risk = simulate_oxygen_change();
  
  if (current_risk != sensed_risk){
	current_risk = sensed_risk;
	switch (current_risk) {
		case LOW:
			LOG_INFO("LOW risk \n");
			leds_single_off(LEDS_GREEN);
			leds_single_off(LEDS_RED);
			leds_on(LEDS_GREEN);
			
			break;
		case MEDIUM_LOW:
			LOG_INFO("MEDIUM-LOW risk \n");
			leds_single_off(LEDS_GREEN);
			leds_single_off(LEDS_RED);
			leds_on(LEDS_GREEN);
			leds_on(LEDS_RED);
		
		case MEDIUM:
			LOG_INFO("MEDIUM risk \n");
			leds_single_off(LEDS_GREEN);
			leds_single_off(LEDS_RED);
			leds_on(LEDS_GREEN);
			leds_on(LEDS_RED);
		
			break;
		case HIGH:
			LOG_INFO("HIGH risk \n");
			leds_single_off(LEDS_GREEN);
			leds_single_off(LEDS_RED);
			leds_on(LEDS_RED);
			break;
	}
  }
  
 
	if(old_oxygen_level != oxygen_level)
	{
		printf("There is a change, I'm going to notify it!\n");
  		coap_notify_observers(&oxygen_sensor);
	}
		
  
}