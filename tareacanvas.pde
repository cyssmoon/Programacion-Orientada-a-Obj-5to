void setup() {
  size(500, 500);
}

void draw() {
  background(220);

  dibujarCara(width/2, height/2);
}

void dibujarCara(float x, float y) {

  // cabeza
  fill(255, 220, 180);
  ellipse(x, y, width*0.4, width*0.4);

  // ojo izquierdo
  fill(0);
  ellipse(x-width*0.08, y-height*0.05, width*0.05, width*0.05);

  // ojo derecho
  ellipse(x+width*0.08, y-height*0.05, width*0.05, width*0.05);

  // boca
  line(x-width*0.08, y+height*0.08, x+width*0.08, y+height*0.08);
}