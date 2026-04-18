int cols = 10;
int filas = 6;

float w;
float h;

void setup() {
  size(800, 400);
  
  w = width / float(cols);
  h = height / float(filas);
}

void draw() {
  background(255);
  stroke(0);
  noFill();

  for (int y = 0; y < filas; y++) {
    
    float offset = 0;
    if (y % 2 == 1) {
      offset = w / 2;
    }

    for (int x = 0; x < cols; x++) {
      float posX = x * w - offset;
      float posY = y * h;

      rect(posX, posY, w, h);
    }
  }
}