
final int MENU = 0;
final int PONG = 1;
final int FLAPPY = 2;
final int GAME_OVER = 3;
int estadoDelJuego = MENU;
int juegoSeleccionado = PONG;
Cuadrado paletaIzada, paletaDerecha;
Circulo pelotaPong;
int ptosIzq = 0, ptosDer = 0;
Circulo bird;
ArrayList<DuplaDeTubos> tubos;
float ultimoTubo = 0;
PVector gravedad = new PVector(0, 0.45);
int puntajeFlappy = 0;

void setup() {
  size(800, 600);
  rectMode(CORNER);
}

void draw() {
  switch(estadoDelJuego) {
    case MENU:
      dibujarMenu();
      break;
    case PONG:
      actualizarPong();
      break;
    case FLAPPY:
      actualizarFlappy();
      break;
    case GAME_OVER:
      dibujarGameOver();
      break;
  }
}

void inicializarPong() {
  paletaIzada = new Cuadrado(30, height/2 - 50, 15, 100, 0, 0, color(52, 152, 219));
  paletaDerecha = new Cuadrado(width - 45, height/2 - 50, 15, 100, 0, 0, color(231, 76, 60));
  pelotaPong = new Circulo(width/2, height/2, 10, color(241, 196, 15));
  pelotaPong.vel = new PVector(random(1) > 0.5 ? 5 : -5, random(-3, 3));
  ptosIzq = 0;
  ptosDer = 0;
}

void inicializarFlappy() {
  bird = new Circulo(120, height/2, 14, color(241, 196, 15));
  tubos = new ArrayList<DuplaDeTubos>();
  ultimoTubo = 0;
  puntajeFlappy = 0;
}

void actualizarPong() {
  background(24, 28, 36);
  stroke(255, 30);
  strokeWeight(2);
  for (int y = 0; y < height; y += 20) {
    line(width/2, y, width/2, y + 10);
  }

  paletaIzada.mover();
  paletaDerecha.mover();
  paletaIzada.pos.y = constrain(paletaIzada.pos.y, 0, height - paletaIzada.alto);
  paletaDerecha.pos.y = constrain(paletaDerecha.pos.y, 0, height - paletaDerecha.alto);
  pelotaPong.mover();
  if (pelotaPong.pos.y - pelotaPong.radio < 0 || pelotaPong.pos.y + pelotaPong.radio > height) {
    pelotaPong.vel.y *= -1;
  }
  if (paletaIzada.colisiona(pelotaPong) || paletaDerecha.colisiona(pelotaPong)) {
    pelotaPong.vel.x *= -1.05;
  }
  if (pelotaPong.pos.x < 0) {
    ptosDer++;
    pelotaPong.pos.set(width/2, height/2);
    pelotaPong.vel.set(5, random(-3, 3));
  } else if (pelotaPong.pos.x > width) {
    ptosIzq++;
    pelotaPong.pos.set(width/2, height/2);
    pelotaPong.vel.set(-5, random(-3, 3));
  }

  if (ptosIzq >= 5 || ptosDer >= 5) {
    juegoSeleccionado = PONG;
    estadoDelJuego = GAME_OVER;
  }
  paletaIzada.mostrar();
  paletaDerecha.mostrar();
  pelotaPong.mostrar();
  textAlign(CENTER, TOP);
  textSize(36);
  fill(52, 152, 219); text(ptosIzq, width/2 - 60, 20);
  fill(231, 76, 60);  text(ptosDer, width/2 + 60, 20);
}

void actualizarFlappy() {
  background(44, 62, 80);
  if (millis() - ultimoTubo > 1800) {
    tubos.add(new DuplaDeTubos(width, 170, 65));
    ultimoTubo = millis();
  }

  bird.aplicarFuerza(gravedad);
  bird.mover();

  if (bird.pos.y > height || bird.pos.y < 0) {
    juegoSeleccionado = FLAPPY;
    estadoDelJuego = GAME_OVER;
  }

  for (int i = tubos.size() - 1; i >= 0; i--) {
    DuplaDeTubos t = tubos.get(i);
    t.mover();
    t.mostrar();

    if (t.colisiona(bird)) {
      juegoSeleccionado = FLAPPY;
      estadoDelJuego = GAME_OVER;
    }

    if (!t.sumado && t.sup.pos.x + t.sup.ancho < bird.pos.x) {
      puntajeFlappy++;
      t.sumado = true;
    }

    if (t.fueraDePantalla()) {
      tubos.remove(i);
    }
  }

  bird.mostrar();
  textAlign(CENTER, TOP);
  fill(255);
  textSize(40);
  text(puntajeFlappy, width/2, 20);
}

void dibujarMenu() {
  background(15, 23, 42);

  // Título principal
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(42);
  text("ARCADE HUB", width/2, 100);

  boolean hoverPong = mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 220 && mouseY < 290;
  fill(hoverPong ? color(52, 152, 219) : color(30, 41, 59));
  stroke(52, 152, 219);
  strokeWeight(2);
  rect(width/2 - 150, 220, 300, 70, 12);
  fill(255);
  textSize(22);
  text("[1] PONG", width/2, 255);

  boolean hoverFlappy = mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 320 && mouseY < 390;
  fill(hoverFlappy ? color(46, 204, 113) : color(30, 41, 59));
  stroke(46, 204, 113);
  strokeWeight(2);
  rect(width/2 - 150, 320, 300, 70, 12);
  fill(255);
  textSize(22);
  text("[2] FLAPPY BIRD", width/2, 355);

  noStroke();
  fill(148, 163, 184);
  textSize(14);
  text("Haz clic en una opción o presiona la tecla [1] o [2]", width/2, 470);
}

void dibujarGameOver() {
  background(15, 23, 42);

  textAlign(CENTER, CENTER);
  fill(239, 68, 68);
  textSize(48);
  text("¡FIN DEL JUEGO!", width/2, 180);

  fill(255);
  textSize(22);
  if (juegoSeleccionado == PONG) {
    String ganador = (ptosIzq >= 5) ? "Jugador Izquierdo" : "Jugador Derecho";
    text("Ganador: " + ganador, width/2, 260);
  } else {
    text("Puntaje final: " + puntajeFlappy, width/2, 260);
  }

  fill(148, 163, 184);
  textSize(16);
  text("Presiona [R] para reiniciar partida", width/2, 350);
  text("Presiona [M] para regresar al menú principal", width/2, 390);
}

void mousePressed() {
  if (estadoDelJuego == MENU) {
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150) {
      if (mouseY > 220 && mouseY < 290) {
        inicializarPong();
        estadoDelJuego = PONG;
      } else if (mouseY > 320 && mouseY < 390) {
        inicializarFlappy();
        estadoDelJuego = FLAPPY;
      }
    }
  }
}

void keyPressed() {
  if (estadoDelJuego == MENU) {
    if (key == '1') {
      inicializarPong();
      estadoDelJuego = PONG;
    } else if (key == '2') {
      inicializarFlappy();
      estadoDelJuego = FLAPPY;
    }
  } 
  else if (estadoDelJuego == PONG) {
    if (keyCode == UP) paletaDerecha.vel.y = -6;
    if (keyCode == DOWN) paletaDerecha.vel.y = 6;
    if (key == 'w' || key == 'W') paletaIzada.vel.y = -6;
    if (key == 's' || key == 'S') paletaIzada.vel.y = 6;
  } 
  else if (estadoDelJuego == FLAPPY) {
    if (key == ' ') {
      bird.saltar(-7.5);
    }
  } 
  else if (estadoDelJuego == GAME_OVER) {
    if (key == 'r' || key == 'R') {
      if (juegoSeleccionado == PONG) {
        inicializarPong();
        estadoDelJuego = PONG;
      } else {
        inicializarFlappy();
        estadoDelJuego = FLAPPY;
      }
    } else if (key == 'm' || key == 'M') {
      estadoDelJuego = MENU;
    }
  }
}

void keyReleased() {
  if (estadoDelJuego == PONG) {
    if (keyCode == UP || keyCode == DOWN) paletaDerecha.vel.y = 0;
    if (key == 'w' || key == 'W' || key == 's' || key == 'S') paletaIzada.vel.y = 0;
  }
}
