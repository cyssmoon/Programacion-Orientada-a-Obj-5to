//1era parte (esta es una de las tareas que el mando, lineas hacia el centro y abajp ya hecho en clase x mi)

int i;
int cant= 10;
void setup() {
  size(800, 600);
}

void draw() {
  for (int i=0; i<cant; i++) {
    float px= width/cant;
    float py= i*px;
    line( py, 0, width/2, height/2);
    line( py, height, width/2, height/2);
  }
}
//la segunda tarea que mando, una grilla ya hecho x mi en clase
int i,j;
int cant = 10;
int filas = 10;
float sepX, sepX2, sepY, sepY2;
void setup(){
 size(800,600); 
}

void draw(){
for (int i = 0; i<cant; i++) {
 for (int j = 0; j<filas; j++) {
   sepX2= width/cant;
   sepX= j*sepX2;
   sepY=height/cant;
   sepY2=i*sepY;
   rect(sepX, sepY2,sepX2, sepY);
  
 }
}
}

//2da parte
