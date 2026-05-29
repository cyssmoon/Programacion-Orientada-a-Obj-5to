movil ne;

void setup(){
size(800,600);
ne= new movil(width/2,height/2);
ne= new movil(width/2,height/3);
}

void draw(){
background(20);
ne.mover();
ne.mostrar();
}
