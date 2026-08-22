PImage img;
color c;
void setup(){
size(800,600);
img= loadImage("data/descarga.jpg");
}
void draw (){
int x= random(width);
int y= random(height);
int t= map(mouseY,0,height,0,255);
int d= map(mouseX,0,width,0,30);
color c= img.get(x,y);
fill(c,t);
ellipse(x,y,d,d);
}
