class Pelota {
  PVector pos;
  PVector vel;
  float r = 15;
  color c = color(255);

  Pelota() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(4, 3);
  }

  void mover() {
    pos.add(vel);
    rebotar();
    reinicio();
  }

  void mostrar() {
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, r*2, r*2);
  }

  void rebotar() {
    if (pos.y > height - r || pos.y < r) {
      vel.y *= -1;
    }
  }

  void reinicio() {
    if (pos.x > width + r || pos.x < -r) {
      pos.set(width/2, height/2);
      vel.x *= -1;
    }
  }
}

class Barrita {
  PVector pos;
  float velocidad = 7;
  int tamAlto = 80;
  int tamAncho = 15;
  color c = color(255);
  
  int teclaArriba;
  int teclaAbajo;
  boolean moviendoArriba = false;
  boolean moviendoAbajo = false;

  Barrita(float x, float y, int up, int down) {
    pos = new PVector(x, y);
    teclaArriba = up;
    teclaAbajo = down;
  }

  void mover() {
    if (moviendoArriba && pos.y > 0) {
      pos.y -= velocidad;
    }
    if (moviendoAbajo && pos.y < height - tamAlto) {
      pos.y += velocidad;
    }
  }

  void mostrar() {
    fill(c);
    noStroke();
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }

  void presionarTecla(int k) {
    if (k == teclaArriba) moviendoArriba = true;
    if (k == teclaAbajo) moviendoAbajo = true;
  }

  void soltarTecla(int k) {
    if (k == teclaArriba) moviendoArriba = false;
    if (k == teclaAbajo) moviendoAbajo = false;
  }
}
