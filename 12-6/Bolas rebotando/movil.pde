class Movil {
  PVector pos;
  //PVector exppos = new PVector(-1000,-1000);
  PVector vel = new PVector(4, 3);
  PVector acel= new PVector (0,0);
  float d=40;
  int contador= 0;
  Movil(float origenX, float origenY) {
    pos= new PVector(origenX, origenY);
  }
  void mostrar() {
    fill(255);
    circle(pos.x, pos.y, d);
    /*
    for(int i = 0; i < 10 ; i++){
    noFill();
    stroke(255,255-contador*5);
    circle(exppos.x,exppos.y,i*5+contador*5);
    }
    */
  }
  void contener() {
    if (pos.x  > width || pos.x < 0) {
      vel.x =vel.x* -1;
      //reiniciarexplosion();
    }
    if (pos.y  > height || pos.y  < 0) {
      vel.y =vel.y* -1;
      //reiniciarexplosion();
    }
  }
  /*
  void reiniciarexplosion(){
  contador = 0;
  exppos = pos.copy();
}
*/
  void mover() {
    pos.add(vel);
    vel.add(acel);
    acel.mult(0);
    //vel.rotate(PI/300);
    //contador=contador+1;
    contener();
}
void agregarFuerza(PVector F){
acel.add(F);
}
}
