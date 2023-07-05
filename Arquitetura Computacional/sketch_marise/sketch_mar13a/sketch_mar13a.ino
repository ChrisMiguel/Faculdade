//Sensor de temperatura usando o LM35
 
const int LM35 = A1; // Define o pino que lera a saída do LM35
float temperatura; // Variável que armazenará a temperatura medida
 
//Função que será executada uma vez quando ligar ou resetar o Arduino
void setup() {
Serial.begin(9600); // inicializa a comunicação serial
}
 
//Função que será executada continuamente
void loop() {
temperatura = (float(analogRead(LM35))*5/(1023))/0.01;
Serial.print("Temperatura: "); // Esse 'Temperatura pode ser retirado, para na hora do registro só mostrar a 
//temperatura por Graus Celsius e não a palavra 'Temperatura'.
Serial.println(temperatura);
delay(1000);//1 segundo
}