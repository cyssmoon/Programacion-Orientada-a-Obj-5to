/*
Ejercicio 2: Mapa de Calor Topográfico (Matrices y Ciclos Anidados)
Enunciado: Diseña un sketch que genere y renderice una cuadrícula interactiva representando un terreno topográfico utilizando una matriz bidimensional (2D).
Declara una matriz de enteros de tamaño variable que representará las elevaciones de un terreno. En el setup(), asigna a cada celda un valor entero aleatorio entre 0 y 255 mediante el uso de ciclos anidados.
En el método draw(), recorre la matriz usando ciclos anidados para dibujar la cuadrícula. El color de relleno (fill) de cada celda debe corresponder directamente al valor numérico guardado en la matriz (creando un mapa en escala de grises).
Añade interactividad: cuando el usuario haga clic sobre una celda específica de la cuadrícula, el valor de esa posición en la matriz debe incrementarse en 25 unidades (sin superar el límite de 255), provocando que visualmente esa zona se aclare.

*/
//2, Luna Estanga, no pude hacer lo de fill..

int tam;
boolean [][] matrices;
int cantFil = 8;
int cantCol = 10;
float tamCol, tamFil;
int [][] colores;
int x,y;
void setup(){
  size(800,600);
  tamCol= width/ cantCol;
  tamFil= height/ cantFil;
  
}

void draw(){
   float ancho= width/ cantCol;
  float alto= height/ cantFil;
  for( int i= 0; i< cantCol; i++){
    for( int j= 0; j< cantFil; j++) {
     float x = i*ancho;
     float y= j*alto;
     rect (x,y,ancho,alto);
    }
}
}
