//no esta terminado
int col = 20;
int fil= 20;

float [][]distancia;
int tamCol;

void setup(){
 background(800,400);
 tamCol = width/col;
 distancia = new float [col] [fil];
}

void draw(){
  background(255);
  for ( int i=0; i<col ; i++){
   for ( int j=0; j<fil; j++){
    float x= i*tamCol + tamCol/2;
    float y= j*tamCol + tamCol/2;
    float d= dist(mouseX, mouseY, x,y); 
   }
  }   
}
