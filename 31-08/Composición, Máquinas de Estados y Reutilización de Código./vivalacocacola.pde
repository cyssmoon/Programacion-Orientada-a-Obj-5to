class Circulo {
  PVector pos;
  PVector vel;
  PVector acc;
  float radio;
  color colorRelleno;

  Circulo(float x, float y, float r, color c) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    radio = r;
    colorRelleno = c;
  }

  void aplicarFuerza(PVector f) {
    acc.add(f);
  }

  void mover() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0); 
  }

  void saltar(float fuerza) {
    vel.y = fuerza;
  }

  void mostrar() {
    fill(colorRelleno);
    noStroke();
    ellipse(pos.x, pos.y, radio * 2, radio * 2);
  }
}
