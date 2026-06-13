PVector acel= new PVector (0,0);

void alejar(PVector otro
               float cuanto){
PVector r= pas, copy();
r.sub(otro);
r.normalize();
r.mult(cuanto);
agregarFuerza(r);
               }

void global(){
PVector MXY=new PVector (0,0);
}              

void draw (){
MXY.x= mouseX;
MXY.y= mouseY;
m.alejan(MXY,2);
}

//agregarlo al archivo de bolitas rebotando tmb
