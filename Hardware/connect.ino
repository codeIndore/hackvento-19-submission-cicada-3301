
#include <ESP8266HTTPClient.h>
#include<ESP8266WiFi.h>
String ssid="PIYUSHKK";
String password="123456789";
int s1= 12;
int s2= 13;
int res;
void setup()
{
 Serial.begin(115200);
 WiFi.begin(ssid,password);  // add ssid and password here

 while(WiFi.status() !=WL_CONNECTED)
 {
   delay(500);
   Serial.println("Waiting for connection");
 }
 
 Serial.println("Connected...");
 delay(1000);
 if (WiFi.status() ==WL_CONNECTED)
 {
   Serial.println("Wi-Fi Connected!");
 }
 delay(2000);
 Serial.println("Sending message to server espcomm");
 delay(5000);
 res=sendmessage("Hi,Server");
 delay(1000);
 if (res==1)
 {
   Serial.println("Send Successfully");
 }
 else
 {
   Serial.println("Error on Server side or client side.");
 }
  pinMode(s1, INPUT);
  pinMode(s2, INPUT);
}


void loop()
{
if(digitalRead(s1)==1){
   delay(1000);
   res=sendmessage("001");
   if (res==1)
 {
   Serial.println("Send Successfully");
 }
 else
 {
   Serial.println("Error on Server side or client side.");
 }
   }
   if(digitalRead(s2)==1){
   delay(1000);
   res=sendmessage("002");
   if (res==1)
 {
   Serial.println("Send Successfully");
 }
 else
 {
   Serial.println("Error on Server side or client side.");
 }
   }
}


int sendmessage(String d)
{
 int sres;
 int net;
 if (WiFi.status()==WL_CONNECTED)
 {
   HTTPClient http;
   String url="http://simplexmetalprocessors.com/iet/connect.php?product="+d;
   http.begin(url);
   http.addHeader("Content-Type","text/plain");
   int httpCode=http.GET();
   String payload=http.getString();
   Serial.println("While sending I received this from server : "+payload);
   if (payload=="SUCCESS. Data written in file.")
   {
     sres=1;
   }
   else
   {
     sres=0;
   }
   http.end();
   net=1;
 }
 else
 {
   Serial.println("Internet Problem!");
   net=0;
 }
 return (net && sres);
}