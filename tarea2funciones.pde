float cx, cy, r;
void setup() {
  size(800, 600);
  cx = random(width);
  cy = random(height);
  r = random(100, 400);
}
void draw() {
  if (hayColision(mouseX, mouseY, cx, cy, r))
    fill(255, 0, 0);
  else  fill (255);
  circle(cx, cy, r*2);
}
boolean hayColision(float px, float py, float cx, float cy, float r) {

  float d= dist(px, py, cx, cy);
  if (d > r) return false;
  else return true;
}
