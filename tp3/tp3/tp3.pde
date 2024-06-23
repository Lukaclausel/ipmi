//Luka Clausel
//TP3 COM5
//link video: https://youtu.be/5e7ltAJvO5I
PImage C;
int x = 450;
int y = 70;
int size = 240;
int reduc = 20;
int numeroCuadrados = 6;
int posX = 5; 
int posY = 5; 
float rotarAngulo = 0.0; 
boolean Rotar = false; 

void setup() {
  size(800, 400);
  C = loadImage("C.png");
}

void draw() {
  background(255);
  image(C, 100, 100);
  
  
  if (keyPressed) {
    if (key == 'a') {
      x -= posX;  
    } else if (key == 'd') {
      x += posX;  
    } else if (key == 'w') {
      y -= posY;  
    } else if (key == 's') {
      y += posY; 
    } else if (key == 'r') {
      
      x = 450;
      y = 70;
      size = 240;
      reduc = 20;
      rotarAngulo = 0.0;
    }
    
    x = constrain(x, 0, width - size);
    y = constrain(y, 0, height - size);
  }
  
  pushMatrix();
  
  translate(x + size/2, y + size/2);
  rotate(rotarAngulo);
  
  for (int i = 0; i < numeroCuadrados; i++) {
    if (Rotar) {
      fill(random(256), random(256), random(256));
    } else {
      if (i % 2 == 0) {
        fill(0);
      } else { 
        fill(255);
      }
    }
    
    int rectSize = size - 2 * i * reduc;
    rect(-rectSize/2, -rectSize/2, rectSize, rectSize);
  }
  
  popMatrix(); 
  
  if (Rotar) {
    rotarAngulo += 0.01;
  }
}

void mousePressed() {
  Rotar = true;
}

void mouseReleased() {
  Rotar = false;
}

void mouseClicked() {
  println(mouseX, ",", mouseY);
}
