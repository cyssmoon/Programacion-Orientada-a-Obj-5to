class Movil {
  PVector pos, vel;
  int r = 40;
  int fila;
  int columna;

  Movil(int f, int c, float x, float y){
    fila = f;
    columna = c;
    pos = new PVector(x, y);
    vel = new PVector(random(-4, 4), random(-4, 4));
  }
  void mover(){
    pos.add(vel);
    contener();
  }
  void mostrar(){
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width){
      pos.sub(vel);
      vel.x *= -1;
    }
    if (pos.y < 0 || pos.y > height){
      pos.sub(vel);
      vel.y *= -1;
    }
  }
}
