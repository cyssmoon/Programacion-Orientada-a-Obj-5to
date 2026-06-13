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
  float h= m.pos.x;
  float s= m.pos.y;
  float b= otro.pos.x;
  background(h,s,b);
  m.agregarFuerza(G);

  MXY.x = mouseX;
  MXY.y= mouseY;
  m.alejar(MXY,2);
  m.mover();

  m.mostrar();
 
}      
