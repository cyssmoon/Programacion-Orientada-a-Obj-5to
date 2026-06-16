class Movil {
  PVector pos;
  PVector vel = new PVector(4, -3); 
  PVector acel = new PVector(0, 0);
  float d = 40; 
  Movil(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }
  void mostrar() {
    fill(255);
    circle(pos.x, pos.y, d);
  }
  void contener() {
    float radio = d / 2;
    if (pos.x > width - radio) {
      pos.x = width - radio;
      vel.x *= -1;
    } else if (pos.x < radio) {
      pos.x = radio;
      vel.x *= -1;
    }
    
    if (pos.y > height - radio) {
      pos.y = height - radio;
      vel.y *= -1;
    } else if (pos.y < radio) {
      pos.y = radio;
      vel.y *= -1;
    }
  }
  void mover() {
    vel.add(acel);
    vel.limit(15); 
    pos.add(vel);
    acel.mult(0); 
    contener();
  }
  void agregarFuerza(PVector F) {
    acel.add(F);
  }
  boolean chocaConCirculo(PVector otraPos, float diametroOtro) {
    float distancia = dist(pos.x, pos.y, otraPos.x, otraPos.y);
    float sumaRadios = (d / 2) + (diametroOtro / 2); 
    return (distancia < sumaRadios);
  }
  void rebotarYAchicar(Movil elOtroMovil) {
    PVector direccion = PVector.sub(pos, elOtroMovil.pos);
    direccion.normalize();
    vel = direccion.mult(5); 
    if (d > 10) {
      d -= 5; 
    }
  }
}
