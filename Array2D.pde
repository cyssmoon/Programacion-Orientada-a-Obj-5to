int col = 20;
int fil = 20;
float[][] distancia;
int tamCol;

void setup() {
  size(800, 400);   
  tamCol = width / col;
  distancia = new float[col][fil];
}

void draw() {
  background(255);
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {
      float x = i * tamCol + tamCol/2;
      float y = j * tamCol + tamCol/2;
      float d = dist(mouseX, mouseY, x, y);
      distancia[i][j] = d; 
      float gris = map(d, 0, dist(0, 0, width, height), 255, 0);
      fill(gris);
      noStroke();
      rect(i * tamCol, j * tamCol, tamCol, tamCol);
    }
  }
}
