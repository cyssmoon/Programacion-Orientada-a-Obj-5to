
class Movil {
  PVector pos, vel;
  int r = 30;
  int fila, columna;

  Movil(int f, int c) {
    fila    = f;
    columna = c;
    float x = map(columna, 0, cols, 0, width)  + celW / 2;
    float y = map(fila,    0, filas, 0, height) + celH / 2;
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(-2, 2));
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    fill(100, 180, 255);
    ellipse(pos.x, pos.y, r, r);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(10);
    text("[" + fila + "," + columna + "]", pos.x, pos.y);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width)  { pos.sub(vel); vel.x *= -1; }
    if (pos.y < 0 || pos.y > height) { pos.sub(vel); vel.y *= -1; }
  }
}
