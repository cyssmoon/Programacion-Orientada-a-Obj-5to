PImage img;
color c;
void setup(){
size(800,600);
img= loadImage("data/descarga.jpg");
}
void draw (){
int x= int(random(width));
int y= int(random(height));
int t= int(map(mouseY,0,height,0,255));
int d= int(map(mouseX,0,width,0,30));
color c= img.get(x,y);
fill(c,t);
ellipse(x,y,d,d);
}
//agrego noStroke() para q no aparezca en circulos
