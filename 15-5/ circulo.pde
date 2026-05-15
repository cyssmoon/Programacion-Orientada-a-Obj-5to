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
if (pos.x + d/2 > width || pos.x - d/2 < 0) {
    vel.x *= -1;
  }
if (pos.y + d/2 > height || pos.y - d/2 < 0) {
    vel.y *= -1;
  }
vel.y= vel.j* -1;
//println(pos.x,pos.y);
circle(pos.x,pos.y,d);

