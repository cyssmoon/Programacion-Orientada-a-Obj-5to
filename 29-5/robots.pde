movil[] robots;

void setup() {
  size(800, 400);
  int n = 5;
  robots = new movil[n];
  for (int i = 0; i < n; i++) {
    float x = 100 + i * 120;
    float y = height/2;
    robots[i] = new movil(x, y);
  }
}

void draw() {
  background(220);
  for (int i = 0; i < robots.length; i++) {
    robots[i].mover();
    robots[i].mostrar();
  }
}