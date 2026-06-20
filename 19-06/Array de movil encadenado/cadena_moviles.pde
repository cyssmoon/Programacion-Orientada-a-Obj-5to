int cantidadElementos = 15;
Movil[] cadena = new Movil[cantidadElementos];

void setup() {
  size(800, 600);
  for (int i = 0; i < cantidadElementos; i++) {
    cadena[i] = new Movil(width / 2, height / 2);
    cadena[i].d = 20 + (i * 2); 
  }
}

void draw() {
  background(40); 
  for (int i = 0; i < cantidadElementos; i++) {
    if (i < cantidadElementos - 1) {
      cadena[i].seguir(cadena[i+1].pos);
    } else {
      PVector mousePos = new PVector(mouseX, mouseY);
      cadena[i].seguir(mousePos);
    }
    cadena[i].mover();
    cadena[i].mostrar();
  }
}
