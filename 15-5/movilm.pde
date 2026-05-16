
Movil m;
Movil otro;
void setup(){
size(800,600);
m= new Movil(width/2, height/2);
}

void draw(){
m.mover();
otro.mover();
m.mostrar();
otro.mostrar();
}
//completar void contener