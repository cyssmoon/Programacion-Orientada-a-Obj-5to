int max = 10;
float[] x = new float[max];
float[] y = new float[max];
int indice = 0;    
int cantidad = 0;  
void setup() {
  size(600, 400);
}
void draw() {
  background(0);
  for (int i = 0; i < cantidad; i++) {
    ellipse(x[i], y[i], 20, 20);
  }
}
void mousePressed() {
  x[indice] = mouseX;
  y[indice] = mouseY;
  indice++;  
  if (indice >= max) {
    indice = 0;
  }
  if (cantidad < max) {
    cantidad++;
  }
}
