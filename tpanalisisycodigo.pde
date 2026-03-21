int radio = 0;

void setup() {
  size(800, 800);
  ellipseMode(RADIUS);
  strokeWeight(2);
  fill(255, 30);
}

void draw() {
  if (mousePressed) {
    radio++;
    reCirculos(mouseX, mouseY, radio);
  }
}

void mouseReleased() {
  radio = 0;
}

void reCirculos(float x, float y, float r) {
  ellipse(x, y, r/2, r/2);
  noFill();
  ellipse(x, y, r/4, r/4);
  ellipse(x, y, r/8, r/8);
  ellipse(x, y, r/16, r/16);
  ellipse(x, y, r/32, r/32);
  ellipse(x, y, r/64, r/64);
}
