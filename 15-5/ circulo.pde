PVector pos, vel;
float d= 40;
void setuo(){
size (800,600);
pos=new PVector(width/2, height/2);
vel=new PVector (4,3);
}
void draw() {
pos.add(vel);
vel.rotate(PI/300);
if()
vel.y= vel.j* -1;
//println(pos.x,pos.y);
circoe(pos.x,pos.y,d);