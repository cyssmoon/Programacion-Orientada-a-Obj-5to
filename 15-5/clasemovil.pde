class Movil{
PVector pos;
PVector vel = new PVector(4,3(;
float d= 40;

Movil(float origenX, float origenY){
pos = new PVector(origenX,origenY);
}
void mostrar(){
circle(pos.x, pos.y, d);
}
void contener(){
}
void mover(){
pod.add(vel);
}
}
