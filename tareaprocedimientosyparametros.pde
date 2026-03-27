void setup() {
  size(800, 600);
  background(255);
}

void draw() {

}

void mousePressed() {
  dibujarFigura(mouseX, mouseY, 80, 80);
}

void dibujarFigura(float posicionX, float posicionY, float ancho, float alto) {
  
  rectMode(CENTER);
  fill(100, 150, 255);
  rect(posicionX, posicionY, ancho, alto);
  
  fill(255);
  ellipse(posicionX - ancho * 0.2, posicionY - alto * 0.2, ancho * 0.2, alto * 0.2);
  ellipse(posicionX + ancho * 0.2, posicionY - alto * 0.2, ancho * 0.2, alto * 0.2);
  fill(0);
  ellipse(posicionX - ancho * 0.2, posicionY - alto * 0.2, ancho * 0.1, alto * 0.1);
  ellipse(posicionX + ancho * 0.2, posicionY - alto * 0.2, ancho * 0.1, alto * 0.1);
  
  stroke(0);
  line(posicionX - ancho * 0.2, posicionY + alto * 0.2,
       posicionX + ancho * 0.2, posicionY + alto * 0.2);
}
