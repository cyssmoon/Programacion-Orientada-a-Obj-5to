class Movil {
  PVector pos;
  PVector vel = new PVector(0, 0);   
  PVector acel = new PVector(0, 0);
  float d = 40; 

  Movil(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    fill(255, 160); 
    stroke(255);
    circle(pos.x, pos.y, d);
  }

  void seguir(PVector objetivo) {
    PVector fuerzaAtraccion = PVector.sub(objetivo, pos); 
    float distancia = fuerzaAtraccion.mag();              
    if (distancia > 5) { 
      fuerzaAtraccion.normalize(); 
      fuerzaAtraccion.mult(0.6);  
      agregarFuerza(fuerzaAtraccion);
    }
  }

  void agregarFuerza(PVector F) {
    acel.add(F);
  }

  void mover() {
    vel.add(acel);
    vel.limit(8);    
    pos.add(vel);
    acel.mult(0);    
    vel.mult(0.92);   
    contener();
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
}
