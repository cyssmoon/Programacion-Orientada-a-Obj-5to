int col = 16;
int fil = 9;
boolean[][] estados;
int tam;

void setup() {
  size(800, 450);
  tam = width / col;
  estados = new boolean[col][fil];
}

void draw() {
  background(200);
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {
      float x = i * tam;
      float y = j * tam;
      if (estados[i][j] == false) {
        fill(255);
        rect(x, y, tam, tam);
      } else {
        dibujarEstampa(x, y, tam, tam);
      }
    }
  }
}

void mousePressed() {
  int columna = mouseX / tam;
  int fila = mouseY / tam;
  if (columna < col && fila < fil) {
    estados[columna][fila] = !estados[columna][fila];
  }
}

void dibujarEstampa(float x, float y, float w, float h) {
  fill(0);
  rect(x, y, w, h);

  fill(255);
  ellipse(x + w/2, y + h/2, w/2, h/2);
}
