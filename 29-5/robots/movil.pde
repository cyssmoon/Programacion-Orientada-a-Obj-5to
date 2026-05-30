class Movil {
  PVector pos, vel;
  int r = 30;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(-2, 2));
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    fill(100, 200, 100);
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width)  { pos.sub(vel); vel.x *= -1; }
    if (pos.y < 0 || pos.y > height) { pos.sub(vel); vel.y *= -1; }
  }
}
