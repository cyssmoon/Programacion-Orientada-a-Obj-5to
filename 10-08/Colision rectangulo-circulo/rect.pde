class Rectangulo {
  float x, y, ancho, alto;

  Rectangulo(float tempX, float tempY, float tempAncho, float tempAlto) {
    x = tempX;
    y = tempY;
    ancho = tempAncho;
    alto = tempAlto;
  }

  void dibujar(boolean colisionando) {
    rectMode(CENTER);
    stroke(255);
    strokeWeight(2);
    
    // Si colisiona, cambia a rojo, si no, azul
    fill(colisionando ? color(231, 76, 60) : color(52, 152, 219));
    rect(x, y, ancho, alto);
  }

  boolean colisionaCon(Circulo c) {
    // Buscamos el punto del rectángulo más cercano al círculo
    float bordeX = constrain(c.x, x - ancho/2, x + ancho/2);
    float bordeY = constrain(c.y, y - alto/2, y + alto/2);

    // Calculamos distancia entre el círculo y ese punto
    float distanciaX = c.x - bordeX;
    float distanciaY = c.y - bordeY;
    
    // Si la distancia al cuadrado es menor que radio al cuadrado -> COLISIÓN
    return (distanciaX*distanciaX + distanciaY*distanciaY) < (c.radio*c.radio);
  }
}
