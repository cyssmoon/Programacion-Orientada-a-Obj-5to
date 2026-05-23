/*
Ejercicio 2: Mapa de Calor Topográfico
2, Luna Estanga
*/

int cantFil = 8;
int cantCol = 10;

float tamCol;
float tamFil;

int [][] colores;

void setup() {
  size(800, 600);
  tamCol = width / cantCol;
  tamFil = height / cantFil;
  colores = new int[cantFil][cantCol];
  for (int i = 0; i < cantFil; i++) {
    for (int j = 0; j < cantCol; j++) {
      colores[i][j] = int(random(0, 256));

    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cantFil; i++) {
    for (int j = 0; j < cantCol; j++) {
      float x = j * tamCol;
      float y = i * tamFil;
      fill(colores[i][j]);

      rect(x, y, tamCol, tamFil);
    }
  }
}

void mousePressed() {
  int col = int(mouseX / tamCol);
  int fil = int(mouseY / tamFil);
  colores[fil][col] += 25;
  if (colores[fil][col] > 255) {
    colores[fil][col] = 255;
  }
}