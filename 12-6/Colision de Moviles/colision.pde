Movil m;
Movil otro;
PVector G = new PVector(0, 0.2); 
void setup() {
  size(800, 600); 
  m = new Movil(300, 100);
  otro = new Movil(500, 100);
  m.vel = new PVector(3, 0);
  otro.vel = new PVector(-3, 0);
}

void draw() {
  background(50);
  m.agregarFuerza(G);
  otro.agregarFuerza(G);
  if (m.chocaConCirculo(otro.pos, otro.d)) {
    m.rebotarYAchicar(otro);
    otro.rebotarYAchicar(m);
  }
  m.mover();
  otro.mover();
  
  m.mostrar();   
  otro.mostrar();
}
