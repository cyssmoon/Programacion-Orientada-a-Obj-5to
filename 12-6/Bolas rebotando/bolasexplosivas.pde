Movil m;
Movil otro;
Movil bola;
Movil bolon;
PVector G= new PVector (0,1);
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
  float h= m.pos.x;
  float s= m.pos.y;
  float b= otro.pos.x;
  background(h,s,b);
  m.agregarFuerza(G);
  otro.agregarFuerza(G);
  bola.agregarFuerza(G);
  bolon.agregarFuerza(G);
  m.mover();
  otro.mover();
  bola.mover();
  bolon.mover();
  bola.mostrar();
  bolon.mostrar();
  m.mostrar();
  otro.mostrar();
  
}
