//mover la barra y teclas como atributo
class Pelota {
  PVector pos;
  PVector vel;
  PVector acel;
  float r = 10;
  color c = color(255);

  Pelota() {
    pos= new PVector( width/2, height/2);
    vel= new PVector(1, 1);
  }

  void mover() {
    pos.add(vel);
    rebotar();
    reinicio();
  }

  void mostrar() {
    fill(c);
    circle(pos.x, pos.y, r);
  }


  void rebotar() {
    if (pos.y > height - r || pos.y< r) {
      vel.y=vel.y*-1;
    }
  }

  void reinicio() {
    if ( pos.x > width - r || pos.x < r) {
      pos= new PVector(width/2, height/2);
    }
  }
}
class Barrita {
  PVector vel;
  PVector acel;
  PVector pos;

  int tamAlto= 50;
  int tamAncho = 10;
  int c= color(255);

  void mostrar() {
    fill(c);
    rect(0+40, height/2 ,tamAncho, tamAlto);
  }
  void mostrarBarrita(){
  fill(c);
  rect(width-40, height/2, tamAncho, tamAlto);
  }
  void moverArriba() {
    pos.add(vel);
    vel.add(acel);
    vel.y=vel.y*-1;
  }

  void moverAbajo() {
    pos.add(vel);
    vel.add(acel);
    vel.x=vel.x*-1;
  }
}
