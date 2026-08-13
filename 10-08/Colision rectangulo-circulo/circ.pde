class Circulo {
  float x, y, radio;
  float velX, velY;

  Circulo(float tempX, float tempY, float tempRadio, float vX, float vY) {
    x = tempX;
    y = tempY;
    radio = tempRadio;
    velX = vX;
    velY = vY;
  }

  void mover() {
    x += velX;
    y += velY;
    if (x - radio < 0 || x + radio > width) velX *= -1;
    if (y - radio < 0 || y + radio > height) velY *= -1;
  }

  void dibujar(boolean colisionando) {
    noStroke();
    fill(colisionando ? color(241, 196, 15) : color(46, 204, 113));
    ellipse(x, y, radio*2, radio*2);
  }
}
