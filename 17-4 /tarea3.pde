void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  noFill();
  stroke(0);
  rect(50, 100, 700, 200);
  int cantidad = 6;       
  float x = 100;          
  float y = height / 2;   

  for (int i = 0; i < cantidad; i++) {
    float diametro = 20 + i * 40; 
    ellipse(x, y, diametro, diametro);
    x += diametro / 2 + 20; 
  }
}