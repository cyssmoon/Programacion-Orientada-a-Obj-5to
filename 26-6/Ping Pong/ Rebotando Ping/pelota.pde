Pelota p;
void setup(){
size(800,600);
p = new Pelota(); 
}
void draw(){
background(0);
p.mover();
p.rebotar();
p.mostrar();
p.rebotar();
}
