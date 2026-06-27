Pelota p;
Barrita juguno;
void setup(){
size(800,600);
p = new Pelota();
juguno = new Barrita();
}
void draw(){
background(0);
p.mover();
juguno.mostrar();
p.rebotar();
p.mostrar();
p.rebotar();
}
