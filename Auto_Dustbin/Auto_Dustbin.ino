#include<Servo.h>
#define trans 6
#define recv 5
float dur;
int dist,l;
Servo motor;
int sensor(){
  digitalWrite(trans,LOW);
  delayMicroseconds(2);
  digitalWrite(trans,HIGH);
  delayMicroseconds(10);
  digitalWrite(trans,LOW);
  dur=pulseIn(recv,HIGH);
  dist=(dur*0.034)/2;
  Serial.print("Distance ");
  Serial.println(dist);
  return dist;
}
int servo(int x){
  if(x<=30){
    Serial.println("object!!!");
    motor.write(0);
    delay(1000);
    
  }
  else{
    motor.write(180);
    delay(500);
  }
}
void setup() {
 
  Serial.begin(9600);
  pinMode(trans,OUTPUT);
  pinMode(recv,INPUT);
  pinMode(12,OUTPUT);
  motor.attach(10);
}

void loop() {
  digitalWrite(12,HIGH);
  l=sensor();
  servo(l);
 delay(50);
}
