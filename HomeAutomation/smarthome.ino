//relay NO config
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <WiFiServer.h>
#include <ESP8266WebServer.h>
ESP8266WebServer server(80);
#define light1 5
#define light2 4
#define light3 14
#define fan 12
String l1="OFF";
String l2="OFF";
String l3="OFF";
String l4="OFF";
String html=R"rawliteral(
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8' name='viewport' content='width=device-width,initial-scale=1.0'>
    <title>Home</title>
</head>
<style>
    button{
    background-color:grey;
    padding:0px 30px;
    border:2px solid green;
    cursor:pointer;
    font-size:17px;

    }
</style>
<body align='center' style='background-color:black' >
<h1 style='color:white'>Home Servers </h1>
)rawliteral";
String s(String a1,String a2, String a3,String a4 ){
String  l="<a href='clicked1'><button type='button' >Light 1 <p>Status:"+a1+"</p></button></a><br><br><a href='clicked2'><button type='button' >Light 2 <p>Status:"+a2+"</p></button></a><br><br><a href='clicked3'><button type='button3' >Light 3 <p>Status:"+a3+"</p></button></a><br><br><a href='clicked4'><button type='button' style='padding:0px 28px'>Fan <p>Status:"+a4+"</p></button></a><br><br></body></html>";
  String k=html+l;
  return k;
}

void lighton1(){
  if(l1=="OFF"){
    digitalWrite(light1,LOW);
    l1="ON";
  }
  else{
    digitalWrite(light1,HIGH);
    l1="OFF";
  }
  server.sendHeader("Location","/");
  server.send(303);
}
void lighton2(){
  if(l2=="OFF"){
    digitalWrite(light2,LOW);
    l2="ON";
  }
  else{
    digitalWrite(light2,HIGH);
    l2="OFF";
  }
  server.sendHeader("Location","/");
  server.send(303);
}
void lighton3(){
  if(l3=="OFF"){
    digitalWrite(light3,LOW);
    l3="ON";
  }
  else{
    digitalWrite(light3,HIGH);
   l3="OFF";
  }
  server.sendHeader("Location","/");
  server.send(303);
}
void lighton4(){
  if(l4=="OFF"){
    digitalWrite(fan,LOW);
    l4="ON";
  }
  else{
    digitalWrite(fan,HIGH);
    l4="OFF";
  }
  server.sendHeader("Location","/");
  server.send(303);
}
void root(){
  server.sendHeader("Refresh","8");
  server.send(200,"text/html",s(l1,l2,l3,l4));
}
void setup() {
  Serial.begin(115200);
  pinMode(light1,OUTPUT);
  pinMode(light2,OUTPUT);
  pinMode(light3,OUTPUT);
  pinMode(fan,OUTPUT);
  digitalWrite(light1,HIGH);
  digitalWrite(light2,HIGH);
  digitalWrite(light3,HIGH);
  digitalWrite(fan,HIGH);
  WiFi.softAP("home_server","Karantaas123@");
  Serial.print(WiFi.localIP());
  server.on("/",HTTP_GET,root);
  server.on("/clicked1",HTTP_GET,lighton1);
  server.on("/clicked2",HTTP_GET,lighton2);
  server.on("/clicked3",HTTP_GET,lighton3);
  server.on("/clicked4",HTTP_GET,lighton4);
  server.begin();
}

void loop() {
  server.handleClient();
  
}
