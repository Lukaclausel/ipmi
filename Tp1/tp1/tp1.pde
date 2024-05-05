PImage manzana;

void setup(){
  size(800, 400);
  manzana = loadImage ("manzana");
}




void draw(){
  background(255);
  image(manzana, 300, 80, 330, 180);
  
}
