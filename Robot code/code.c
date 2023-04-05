#include<Servo.h>
#include<DHT.h>
int in1=7;
int in2=8;
int in3=9;
int in4=10;
DHT dht(2,DHT11);
Servo ms;
Servo ms1;
int Tair;
int Hair;
int PinAnalog=A0;
int Hsol ;      
int hsolA;  
int p=180;
int p1;
void setup() {
  // put your setup code here, to run once:
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
pinMode(10,OUTPUT);
ms.attach(11);
ms1.attach(12);
for(p=130;p<=180;p++){
ms.write(p);
delay(20);
}
for(p1=0;p1<=180;p1++){
ms1.write(p1);
delay(20);
}

Serial.begin(9600);  
pinMode(PinAnalog, INPUT); 
dht.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(in1,HIGH);
digitalWrite(in2,LOW);
digitalWrite(in3,LOW);
digitalWrite(in4,HIGH);
delay(3000);
digitalWrite(in1,LOW);
digitalWrite(in2,LOW);
digitalWrite(in3,LOW);
digitalWrite(in4,LOW);
delay(1000);
Tair=dht.readTemperature();
Hair=dht.readHumidity();
Serial.print("Tair:");
Serial.print(Tair);
Serial.println("°C");
Serial.print("Hair");
Serial.print(Hair);
Serial.println("%");
for(p=180;p>=100;p--){
ms.write(p);
delay(20);
}
for(p1=0;p1<=180;p1++){
ms1.write(p1);
delay(20);
}

hsolA = analogRead(PinAnalog); 
Hsol=map(hsolA,0,1023,100,0);
Serial.print("Hsol:");
Serial.print(Hsol);
Serial.println("%");
Serial.println("-------------------------------------");
delay(2500);
for(p1=180;p1>=0;p1--){
ms1.write(p1);
delay(20);
}
delay(2500);
for(p=100;p<=180;p++){
ms.write(p);
delay(20);
}

}