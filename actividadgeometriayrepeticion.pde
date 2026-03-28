int cant = 10;
int sepx, sepy;
void setup() {
  size(800, 600);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
//izq inferior
    line(0, i*sepy, i*sepx, height);
//derecho superior
    line(width, i*sepy, i*sepx, 0);
//izq superior
    line(0, i*sepy, width- i*sepx,0);
//derecho inferior
    line(width, i*sepy, width- i*sepx,height);
  }
}
