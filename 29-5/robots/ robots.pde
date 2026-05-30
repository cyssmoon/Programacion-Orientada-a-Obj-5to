
int N = 6;       
Movil[] fila;          

void setup() {
  size(800, 600);
  fila = new Movil[N]; 
  float separacion = width / N;
  for (int i = 0; i < N; i++) {
    float x = separacion * i + separacion / 2; 
    float y = height / 2;                       // todos en la línea central
    fila[i] = new Movil(x, y);
  }
}

void draw() {
  background(20);
  for (int i = 0; i < N; i++) {
    fila[i].mover();
    fila[i].mostrar();
  }
}
