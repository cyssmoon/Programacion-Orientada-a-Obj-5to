Pelota p;
Barrita jugUno;
Barrita jugDos;

void setup() {
  size(800, 600);
  p = new Pelota();
  
  jugUno = new Barrita(40, height/2 - 40, 'W', 'S');
  jugDos = new Barrita(width - 40 - 15, height/2 - 40, UP, DOWN);
}

void draw() {
  background(0);
  
  p.mover();
  p.mostrar();
  
  jugUno.mover();
  jugUno.mostrar();
  
  jugDos.mover();
  jugDos.mostrar();

  if (p.pos.x - p.r < jugUno.pos.x + jugUno.tamAncho && p.pos.x + p.r > jugUno.pos.x && p.pos.y + p.r > jugUno.pos.y && p.pos.y - p.r < jugUno.pos.y + jugUno.tamAlto) {
    p.vel.x *= -1;
    p.pos.x = jugUno.pos.x + jugUno.tamAncho + p.r;
  }

  if (p.pos.x + p.r > jugDos.pos.x && p.pos.x - p.r < jugDos.pos.x + jugDos.tamAncho && p.pos.y + p.r > jugDos.pos.y && p.pos.y - p.r < jugDos.pos.y + jugDos.tamAlto) {
    p.vel.x *= -1;
    p.pos.x = jugDos.pos.x - p.r;
  }
}

void keyPressed() {
  int k = (key == CODED) ? keyCode : int(toUpperCase(key));
  jugUno.presionarTecla(k);
  jugDos.presionarTecla(k);
}

void keyReleased() {
  int k = (key == CODED) ? keyCode : int(toUpperCase(key));
  jugUno.soltarTecla(k);
  jugDos.soltarTecla(k);
}

char toUpperCase(char ch) {
  if (ch >= 'a' && ch <= 'z') {
    return (char)(ch - 32);
  }
  return ch;
}
