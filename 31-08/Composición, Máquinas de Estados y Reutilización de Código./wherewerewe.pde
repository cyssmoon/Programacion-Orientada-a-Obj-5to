class DuplaDeTubos {
  Cuadrado sup;
  Cuadrado inf;
  float velocidadX = -3.5;
  boolean sumado = false;

  DuplaDeTubos(float x, float altoHueco, float anchoTubo) {
    float altoArriba = random(60, height - altoHueco - 100);
    color verdeTubo = color(46, 204, 113);
    sup = new Cuadrado(x, 0, anchoTubo, altoArriba, velocidadX, 0, verdeTubo);
    inf = new Cuadrado(x, altoArriba + altoHueco, anchoTubo, height - (altoArriba + altoHueco), velocidadX, 0, verdeTubo);
  }

  void mover() {
    sup.mover();
    inf.mover();
  }

  void mostrar() {
    sup.mostrar();
    inf.mostrar();
  }

  boolean colisiona(Circulo bird) {
    return sup.colisiona(bird) || inf.colisiona(bird);
  }

  boolean fueraDePantalla() {
    return (sup.pos.x + sup.ancho) < 0;
  }
}
