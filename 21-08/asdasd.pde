PImage img;
void setup(){
size(800,600);
img= loadImage("nombre.ext");
}
void draw (){
image(img,mouseX,mouseY);
}
