void borrartubos() {
  for (int i = tubos.size()-1; i >= 0; i--) {
    Cuadrado aux = tubos.get(i);
      if (aux.pos.x + aux.ancho < 0) {

      tubos.remove(i);
    }
  }
}
