Movil[][] estac;
int filas = 5;
int columnas = 8;

void setup(){
  size(800, 600);
  moviles = new Movil[filas][columnas];
  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++){
      float x = random(width);
      float y = random(height);
      moviles[f][c] = new Movil(f, c, x, y);
    }
  }
}
void draw(){
  background(0);
  for (int f = 0; f < filas; f++){
    for (int c = 0; c < columnas; c++){
      moviles[f][c].mover();
      moviles[f][c].mostrar();
    }
  }
