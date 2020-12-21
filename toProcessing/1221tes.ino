int sensor1; // 変数の定義 (sensor1 はアナログ 0 番の入力)
int senout; // 変数の定義 (senout は sensor1 を変換したもの）
void setup(){
Serial.begin(9600);
}
void loop(){

/*analog_inの時
sensor1= analogRead(0); // アナログ 0 番ピンの入力を sensor1 に代入
senout=map(sensor1,0,1023,0,255); // データを 1 バイト(0~255)に圧縮
Serial.write(senout); // データをシリアル通信で送信(バイトデータ)
*/

for(int i=0;i<256;i++){
  Serial.write(senout);
}

delay(100);
}
