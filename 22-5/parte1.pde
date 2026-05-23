
/*
Ejercicio 1: Simulador de Ritmo Cardíaco (Vectores, Ciclos y Gráficos)
Enunciado: Crea un sketch que simule un monitor de ritmo cardíaco.
Define un array unidimensional (1D) de tipo entero con un tamaño de 40 elementos llamado lecturas y llénalo con valores aleatorios entre de altura (que representarán pulsaciones por minuto).
Desarrolla un procedimiento llamado dibujarGrafica() que y dibuje una serie de barras verticales (o una línea continua que conecte los puntos para punto extra) a lo largo de la pantalla para representar visualmente el historial de datos.
Diseña una función llamada calcularPromedio() que reciba el arreglo como parámetro, calcule la media de las pulsaciones y devuelva ese valor (float). Con ese valor mostrar una línea roja en la pantalla que represente ese promedio.
*/
//Luna Estanga
int cantFil=1;
int cantCol= 10;
int y,x,i,j;
int cantBarras= 0;
int lectura[];
void setup(){
size (800,600);
 lectura = new int[cantBarras];
 noLoop();
}

void draw(){
  float ancho= width/ cantCol;
 float alto= height/ cantFil;
 for(int i= 0; i< cantCol; i++){
 for(int j= 0; j<cantFil; j++){
  float x = i*ancho;
  float y= j*alto;
  rect(x,y,ancho,alto);
 }
 }
}

void dibujarGrafica(){
 int alto = width/ cantBarras; 
  for(int i=0; i<cantBarras; i++);
  int x = i* width;
  int y = j* height;
  println(lectura[i]);
  rect(x,y, width, height);
  }
  
 void calcularPromedio(){
}

