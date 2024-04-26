PImage manzana;

void setup(){
  size(800, 400);
  manzana = loadImage ("manzana.jpg");
}




void draw(){
  background(255);
  image(manzana, 0, 0, 250, 250);
  fill(127, 0, 0);
  circle(550, 148, 180);
  fill(255, 0, 0, 191);
  circle(550, 150, 180);
  fill(0, 0, 0, 200);
  rect(547, 27, 4, 35);
  fill(39, 174, 96);
  ellipse(570, 40, 40, 20);
}
 
  
