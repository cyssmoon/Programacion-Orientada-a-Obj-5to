void setup() {
  size(800, 600);
}
void draw() {
  circuloTocado(width/4,height/7,80);
  circuloTocado(width/3,height/2,80);
}
void circuloTocado( int cx, int cy, int r) {
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
