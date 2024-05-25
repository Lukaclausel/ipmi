PImage orden, portada, book;
PFont fuente;
int pantalla, tiempo, diametro;
int miVariable = frameCount;

void setup() {
  size(640, 460);
  fuente = loadFont("Bodonimt.vlw");
  textFont (fuente);
  textSize(25);
  textAlign(LEFT, TOP);
  orden = loadImage("orden.png");
  portada = loadImage("portada.png");
  book = loadImage("book.jpg");
  tiempo = 0;
  pantalla = 0;
  diametro = width/10;
  println(frameCount);
}

void draw() {
  background(255);
  if (pantalla == 0) {
    if (mouseX <= 255) {
      
    }
    image(orden, mouseX, 0, 580, 300);
    push();
    fill(0);
    text("Las Crónicas de Narnia es un relato de aventuras, de lucha \nentre el bien y el mal, en una tierra de magia y fantasía, \nque tiene 7 ediciones escritas por C. S. Lewis, Sinclair Lewis, \ny Clive Staples Lewis", mouseX, 320);
    pop();
  }
  if (pantalla == 1) {
    image(portada, 0, mouseY, 300, 300);
    push();
    fill(0);
    text("La historia narra las aventuras de los cuatro \nhermanos Pevensie: \nLucy, Edmund, Susan y Peter, que...", 300, mouseY);
    pop();
  }
  if (pantalla == 2) {
    image(book, mouseX, mouseY, 220, 300);
    push();
    fill(0); 
    text("durante la Segunda Guerra Mundial descubren Narnia, \nal cual acceden a través de un ropero mágico mientras \njuegan al escondite en la casa de campo de un viejo \nprofesor", 100, mouseY);
    pop();

    push();
    circle(width/2, height/2, diametro);
    fill(0);
    textSize(12);
    textAlign(CENTER, CENTER);

    text("Reiniciar", width/2, height/2 );
    pop();
  }
  tiempo++;
  if (tiempo >= 180) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    }
  }
  miVariable = frameCount / 4; 
  println(miVariable); 
}
void mouseClicked() {
  if (pantalla > 2) {
    pantalla = 0;
  }

  if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
    
   
  
