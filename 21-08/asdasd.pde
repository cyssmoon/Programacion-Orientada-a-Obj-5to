PImage img;
void setup(){
size(800,600);
img= loadImage("data/descarga.jpg");
}
void draw (){
image(img,mouseX,mouseY);
}
