class Cuadrado {
  PVector pos;
  float ancho, alto;
  PVector vel;
  color colorRelleno;

  Cuadrado(float x, float y, float w, float h) {
    pos = new PVector(x, y);
    ancho = w;
    alto = h;
    vel = new PVector(0, 0);
    colorRelleno = color(255);
  }
  
  Cuadrado(float x, float y, float w, float h, float vx, float vy, color c) {
    this(x, y, w, h);
    vel.set(vx, vy);
    colorRelleno = c;
  }

  void mover() {
    pos.add(vel);
  }

  void mostrar() {
    fill(colorRelleno);
    noStroke();
    rect(pos.x, pos.y, ancho, alto, 6); 
  }

  boolean colisiona(Circulo c) {
    float cercaX = constrain(c.pos.x, pos.x, pos.x + ancho);
    float cercaY = constrain(c.pos.y, pos.y, pos.y + alto);
    float distSq = sq(c.pos.x - cercaX) + sq(c.pos.y - cercaY);
    return distSq < sq(c.radio);
  }
}
