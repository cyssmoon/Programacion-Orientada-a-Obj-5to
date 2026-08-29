ArrayList <Cuadrado> tubos;
Pelota bird; float UlimoPar=0;
PVector G= new PVector(0,2);

void setup(){
size(800,600);
tubos = new ArrayList <Cuadrado>();
bird= new Pelota (100,h/2);
}

void draw(){
background(0);
agregartubos();
bird.addFuerza(G);
bird.mover();
borrartubos();
for(Cuadrado t: tubos){
t.mover();
t.mostrar();
}
bird.mostrar();
}
