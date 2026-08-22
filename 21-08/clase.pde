class Pelota{
PImage img;
Pelota(float tipo){
if(tipo==1) img= loadImage("1.bmp")
}
void mostrar(){
image(img,pos.x,pos.y);
}
}
