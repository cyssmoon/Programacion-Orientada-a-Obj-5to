//no termiandoi
class Pelota{
PVector pos;
PVector vel;
float radioPelota = 10;


Pelota(){
pos = new PVector (random(width),random(height));
vel = new PVector (random(-3,3), random(-3,3));
}

void mover() {
pos.add(vel);
if (pos.x < 0 || pos.x > width){
vel.x *=-1;
}
if(pos.y < 0 || pos.y > height){
vel.y *=-1;
}
}

void mostrar(){
float distancia = PVector.dist(pos, centro);
if(distancia > numPelotas){
                                                  
}
}
}
