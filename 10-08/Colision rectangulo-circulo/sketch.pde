Circulo bola;
Rectangulo obstaculo;

void setup() {
  size(800, 600);
  obstaculo = new Rectangulo(width/2, height/2, 160, 100);
  bola = new Circulo(50, 50, 30, 3.5, 2.5);
}

void draw() {
  background(30);
  bola.mover();
  boolean colision = obstaculo.colisionaCon(bola);
  obstaculo.dibujar(colision);
  bola.dibujar(colision);
}
