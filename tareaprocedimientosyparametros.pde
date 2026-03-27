void setup() {
  size(800, 600);
  background(255);
}

void draw() {
}

void mousePressed() {
  lacarita(mouseX, mouseY, 80, 80);
}

void lacarita(float posicionX, float posicionY, float ancho, float alto) {
  fill(255, 220, 0);
  ellipse(posicionX, posicionY, ancho, alto);
  fill(0);
  ellipse(posicionX - ancho * 0.2, posicionY - alto * 0.2, ancho * 0.1, alto * 0.1);
  ellipse(posicionX + ancho * 0.2, posicionY - alto * 0.2, ancho * 0.1, alto * 0.1);
  stroke(0);
  line(posicionX - ancho * 0.2, posicionY + alto * 0.25,
       posicionX + ancho * 0.2, posicionY + alto * 0.25);
}
