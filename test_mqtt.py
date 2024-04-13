import paho.mqtt.client as paho

from paho import mqtt

client = paho.Client(paho.CallbackAPIVersion.VERSION1,client_id="", userdata=None, protocol=paho.MQTTv5)
client.tls_set(tls_version=mqtt.client.ssl.PROTOCOL_TLS)
client.username_pw_set("username", "password")
client.connect("MQTT Broker URL", 8883)
client.publish("topic-name", payload="message", qos=1)
