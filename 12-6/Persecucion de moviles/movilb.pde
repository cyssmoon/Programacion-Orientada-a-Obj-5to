class MovilB {
  PVector pos;
  PVector vel = new PVector(0, 0);
  PVector acel = new PVector(0, 0);
  float d = 30;
  float velocidadMaxima = 4;

  MovilB(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    fill(200, 0, 0);
    stroke(0);
    circle(pos.x, pos.y, d);
  }

  void perseguir(PVector objetivo) {
    PVector direccion = PVector.sub(objetivo, pos);
    direccion.normalize();
    direccion.mult(0.15); 
    acel.add(direccion);
  }

  void mover() {
    vel.add(acel);
    vel.limit(velocidadMaxima);
    pos.add(vel);
    acel.mult(0);
  }
}
