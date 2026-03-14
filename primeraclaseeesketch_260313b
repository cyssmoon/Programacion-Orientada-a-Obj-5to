//1era parte
int xprev= 0;
int yprev= 0;
int rx= 0;
int ry = 0;
void setup() {
size(800, 600);
frameRate(120);
}

void draw() {
//background(255,30,80);
//line(mouseX, mouseY, 500, 200);
if ( mousePressed) {
line(mouseX, mouseY, xprev, yprev);
line( width-mouseX, mouseY, width-xprev, yprev);
line( mouseX, height-mouseY, xprev, height-yprev);
line( width-mouseX, height-mouseY, width-xprev, height- yprev);
}
//else{
//background(255,30,80);
//}
xprev=mouseX;
yprev=mouseY;
ry= width-mouseX;
ry= mouseY;
}

//2da parte

int xprev= 0;
int yprev= 0;
int rx= 0;
int ry = 0;
void setup() {
  size(800, 600);
  //frameRate(120);
}
void setear_linea() {
  stroke(1, 274, 293);
  strokeWeight (50);
}
void ImprimirCuatroLineas() {
  //background(255,30,80);
  //line(mouseX, mouseY, 500, 200);
  if ( mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
    line( width-mouseX, mouseY, width-xprev, yprev);
    line( mouseX, height-mouseY, xprev, height-yprev);
    line( width-mouseX, height-mouseY, width-xprev, height- yprev);
  }

  //else{
  //background(255,30,80);
  //}
  xprev=mouseX;
  yprev=mouseY;
}
/*
  ry= width-mouseX;
 ry= mouseY;
 */
void draw() {
  setear_linea();
  ImprimirCuatroLineas();
}
