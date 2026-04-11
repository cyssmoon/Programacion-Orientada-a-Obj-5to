int col = 10;
int fil = 10;
int tam = 100;

boolean[][][] lab;

void setup() {
  size(800, 600);
  lab = new boolean[col][fil][6];
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {
      for (int k = 0; k < 6; k++) {
        lab[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
  background(255);
  stroke(0);

  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {
      float x = i * tam;
      float y = j * tam;
      if (lab[i][j][0]) line(x, y, x+tam, y);
      if (lab[i][j][1]) line(x, y+tam, x+tam, y+tam);
      if (lab[i][j][2]) line(x, y, x, y+tam);
      if (lab[i][j][3]) line(x+tam, y, x+tam, y+tam);
      if (lab[i][j][4]) line(x, y, x+tam, y+tam);
      if (lab[i][j][5]) line(x+tam, y, x, y+tam);
    }
  }
}
