import processing.serial.*;
Serial port;
int data1;

void setup() {
  size(300, 300);
  port = new Serial(this, Serial.list()[0], 9600);
  background(0, 0, 0);
}

void draw() {
  // 描画エリア設定
  fill(255);
  noStroke();
  rect(0, 0, width, height);
  fill(0);
  textSize(height*0.10);
  textAlign(LEFT);
  text(data1, width*0.5, height*0.5);
}

void serialEvent(Serial port){
  // シリアルポートからデータを受け取ったら
  if (port.available() >=1) {
    //// シリアルデータ受信
    data1 = port.read();
  }
}
