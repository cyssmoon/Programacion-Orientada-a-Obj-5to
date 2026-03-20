//1eraparte
/*
int PmouseX;
int PmouseY;
*/
void setup () {
  size(800, 600);
}

void draw() {
  strokeWeight(randomI(20));
  line(mouseX, mouseY, pmouseX, pmouseY);

  //dibujarPaisaje();

  /*
  void dibujarPaisjae(){
   background
   line..
   } 
}
/*
  int randomI() {
    int val= round(random(10));

    return val;
  }
  */
  int randomI(float maximo){
    int val= round(random(maximo));
    
    return val;
  }
  //2da parte
  void setup(){
    size(800,600);
  }
  void draw() {
  strokeWeight(MouseVel());
  line(mouseX, mouseY, pmouseX, pmouseY);
}
  float MouseVel(){
    float ca= pmouseX-mouseX;
    float co= pmouseY-mouseY;
    float h= sqrt(ca*ca+co*co);
    return h;
  }
//3ra parte
void setup(){
  size(800,600);
}
void draw(){
  if(estatocandoelcirculo())fill(255,60,60);
  else fill(255);
 circle(width/2, height/2, width/2); 
}
  boolean estatocandoelcirculo(){
   float f= width/4;
   float d= dist(mouseX,mouseY, width/2, height/2);
   if (d>f) return false;
   else return true;
  }
