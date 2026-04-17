void setup (){
  size(800,600);
  int cantPuntos= 5;
int separacion = width / (cantPuntos-1);
 for(int i = 0; i < cantPuntos; i++){
   point(i*separacion, 0);
 for(int j = 0; j < cantPuntos; j++){
   point(j*separacion, height);
   line(i*separacion, 0, j*separacion, height);
 }
} 
}
