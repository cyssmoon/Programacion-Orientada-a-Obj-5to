//no terminado
PVector pos;
float radioCentral = 150;
int numPelotas = 20;
Pelota [] pelotas;
int cantidad = 40;
void setup(){
size(800,600);
pos= new PVector(width/2, height/2);
pelotas= new PVector[cantidad];
for(int i =0; i < numPelotas; i++){
pelotas[i] = new Pelota();
}
}
void draw(){
background(50);
ellipse(centro.X, centro.Y, radioCentral * 2, radioCentral * 2);
for(int i = 0; i< cantidad; i++){
pelotas[i].mover();
pelotas[i].mostrar();
}
}

