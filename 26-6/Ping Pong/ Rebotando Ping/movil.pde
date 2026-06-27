class Pelota {
  PVector pos;
  PVector vel;
  float r = 10;
  color c = color(255);

  Pelota() {
    pos= new PVector( width/2, height/2);
    vel= new PVector(1, 1);
  }

  void mover() {
    pos.add(vel);
    rebotar();
    if( pos.x > width - r || pos.x < r){
       vel.x=vel.x*-1; 
      }
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
}
