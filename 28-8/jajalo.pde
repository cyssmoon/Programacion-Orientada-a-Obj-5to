void agregartubos(){
  float tActual = millis();
  float dt = tActual - UltimoPar;

  if (dt > 5000){
    float ancho = 60;
    float altoHueco = 150; 
    float altoArriba = random(50, 400); 
    tubos.add(new Cuadrado(width, 0, ancho, altoArriba));
    tubos.add(new Cuadrado(width, altoArriba + altoHueco, ancho, height - (altoArriba + altoHueco)));
    UltimoPar = tActual;
  }
}
