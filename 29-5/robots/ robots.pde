Movil[] robots;
int cant = 10;

void setup() {
  size(800, 600);
  robots = new Movil[cant];
  for (int i = 0; i < cant; i++) {
    float x = 50 + i * 70; 
    float y = height/2;
    robots[i] = new Movil(x, y);
  }
}

void draw() {
  background(20);
  for (int i = 0; i < cant; i++) {
    robots[i].mover();
    robots[i].mostrar();
  }
}
