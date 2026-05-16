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
  if(pos.x + d/2 >= width || pos.x - d/2 <= 0){
    vel.x *= -1;
  }
  if(pos.y + d/2 >= height || pos.y - d/2 <= 0){
    vel.y *= -1;
  }
}

}
void mover(){
pod.add(vel);
}
}
