int cantidad = 20;
float[] barras;
int anchoBarra;

void setup() {
  size(800, 400);
  barras = new float[cantidad];
  anchoBarra = width / cantidad;
}

void draw() {
  background(0);
  for (int i = 0; i < cantidad; i++) {
    float x = i * anchoBarra;
    float h = barras[i];
    fill(255);
    rect(x, height - h, anchoBarra, h);
  }
}

void mouseDragged() {
  int indice = mouseX / anchoBarra;
  if (indice >= 0 && indice < cantidad) {
    float h = height - mouseY;
    h = constrain(h, 0, height);
    barras[indice] = h;
  }
}
