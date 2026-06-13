//no terminado
Movil m;
Movil otro;
Movil bola;
Movil bolon;
PVector G= new PVector (0,1);
PVector MXY = new PVector (0,0);
void setup() {
  //size(800, 600);
  fullScreen();
  colorMode(HSB,width);
  m= new Movil(width/2, height/2);
  otro= new Movil(200,300);
  bola= new Movil(600,450);
  bolon= new Movil(100,350);
  bolon.d = 60;
}
void draw() {
  background(200);
  if(m.chocaConCirculo(otro.pos,20) == true){
    m.alejar(otro.pos,otro.d/2);
    otro.alejar(m.pos,m.d/2);
  }
  m.agregarFuerza(G);
  otro.agregarFuerza(G);
  m.mover();
  otro.mover();
  m.mostrar();   
  otro.mostrar();
}      
