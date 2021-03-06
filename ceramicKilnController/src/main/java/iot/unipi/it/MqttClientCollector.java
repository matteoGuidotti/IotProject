package iot.unipi.it;

import java.util.HashMap;
import java.util.Map;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

import iot.unipi.it.Utils;

public class MqttClientCollector implements MqttCallback{

	private final String brokerAddr = "tcp://127.0.0.1:1883";
	private final String clientId = "Java_MqttClient";

	private final String JSON_HEATER_ON = "{\"heater_on\":true}";
	private final String JSON_HEATER_OFF = "{\"heater_on\":false}";

	//topic to be subscribed to
	private final String subTopic = "current_temperature";
	//topic to publish in
	private final String pubTopic = "heater_state"; 

	private MqttClient mqttClient = null;

	//temperature to be reached
	private int targetTemp;
	//the kiln temperature is acceptable if belongs to [targetTemp - acceptableRange; targetTemp + acceptableRange]
	private int acceptableRange;

	//it is different from 0 if a temperature value is already arrived 
	private double firstTemperatureValue = 0;

	public MqttClientCollector(int temp, int range){
		targetTemp = temp;
		acceptableRange = range;
		do{
			try{
				mqttClient = new MqttClient(brokerAddr, clientId);
				System.out.println("Connecting to the broker " + brokerAddr);
				mqttClient.setCallback(this);
				mqttClient.connect();
				System.out.println("Connection to the broker successful");
				mqttClient.subscribe(subTopic);
				System.out.println("Application correctly subscribed to the topic " + subTopic);
			} catch(MqttException e){
				System.out.println("Not able to connect. Retrying...");
			}
		} while (!mqttClient.isConnected());
	}

	public void connectionLost(Throwable cause) {
		System.out.println("Connection is broken: " + cause);
		int timeWindow = 3000;
		while (!mqttClient.isConnected()) {
			try {
				System.out.println("Trying to reconnect in " + timeWindow/1000 + " seconds.");
				Thread.sleep(timeWindow);
				System.out.println("Reconnecting ...");
				timeWindow *= 2;
				mqttClient.connect();
				
				mqttClient.subscribe(subTopic);
				System.out.println("Connection is restored");
			}catch(MqttException me) {
				System.out.println("I could not connect");
			} catch (InterruptedException e) {
				System.out.println("I could not connect");
			}
		}
	}

	public void messageArrived(String topic, MqttMessage message) throws Exception {
		System.out.println("A new message at the topic " + topic + " has been received");
		String receivedPayload = new String(message.getPayload());
		Map<String, Object> receivedJson = Utils.jsonParser(receivedPayload);
		double receivedTemperature = (Double)receivedJson.get("current_temperature");
		if(firstTemperatureValue == 0){
			firstTemperatureValue = receivedTemperature;
		}
		else{
			String heater_state = (String)receivedJson.get("heater_state");
			double averageTemp = (firstTemperatureValue + receivedTemperature) / 2;
			DbUtility.insertTemperature(averageTemp);
			if(averageTemp >= targetTemp){
				//need to decrease temperature
				System.out.println("Temperature is too high, need to decrease it");
				publish(pubTopic, JSON_HEATER_OFF);
			}
			else if(averageTemp < targetTemp - acceptableRange){
				//need to increase the temperature
				System.out.println("Temperature is too low, need to encrease it");
				publish(pubTopic, JSON_HEATER_ON);
			}
			firstTemperatureValue = 0;
		}
	}

	public void deliveryComplete(IMqttDeliveryToken token) {
		System.out.println("Delivery of the message correctly completed");		
	}

	public void publish(final String topic, final String content){
		try {
			MqttMessage message = new MqttMessage(content.getBytes());
			mqttClient.publish(topic, message);
			System.out.println("New message published succesfully to the topic " + topic + ". Message = " + content);
		} catch(MqttException me) {
			me.printStackTrace();
		}
	}
	
	public void changeTargetTemp(int temp){
		targetTemp = temp;
	}

	public void changeAccTemp(int range){
		acceptableRange = range;
	}
}
