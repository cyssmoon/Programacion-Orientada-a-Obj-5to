void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  
}

void mousePressed() {
  dibujarFigura(mouseX, mouseY, 80, 80);
}

void dibujarFigura(float x, float y, float ancho, float alto) {
  fill(255, 220, 180);
  ellipse(x, y, ancho, alto);
  fill(0);
  ellipse(x - ancho * 0.2, y - alto * 0.2, ancho * 0.1, alto * 0.1);
  ellipse(x + ancho * 0.2, y - alto * 0.2, ancho * 0.1, alto * 0.1);
  noFill();
  arc(x, y + alto * 0.1, ancho * 0.5, alto * 0.4, 0, PI);
}
