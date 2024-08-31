// Luka Clausel
// TP3 COM5
// Enlace al video: https://youtu.be/7Yf7qKK43pA

let C;             
let x = 450;
let y = 70;
let size = 240;
let reduc = 20;
let numeroCuadrados = 6;
let posX = 5;
let posY = 5;
let rotarAngulo = 0.0;
let Rotar = false;

function preload() {
  C = loadImage("data/C.png"); 
}

function setup() {
  createCanvas(800, 400); 
}

function draw() {
  background(255);
  image(C, 100, 100);

  if (keyIsPressed) {
    if (key === 'a') {
      x -= posX;  
    } else if (key === 'd') {
      x += posX;  
    } else if (key === 'w') {
      y -= posY;  
    } else if (key === 's') {
      y += posY; 
    } else if (key === 'r') {
      x = 450;
      y = 70;
      size = 240;
      reduc = 20;
      rotarAngulo = 0.0;
    }

    x = constrain(x, 0, width - size);
    y = constrain(y, 0, height - size);
  }

  push();
  translate(x + size / 2, y + size / 2);
  rotate(rotarAngulo);

  for (let i = 0; i < numeroCuadrados; i++) {
    if (Rotar) {
      fill(random(256), random(256), random(256));
    } else {
      if (i % 2 === 0) {
        fill(0);
      } else { 
        fill(255);
      }
    }

    let rectSize = size - 2 * i * reduc;
    rect(-rectSize / 2, -rectSize / 2, rectSize, rectSize);
  }

  pop();

  if (Rotar) {
    rotarAngulo += 0.01;
  }
}

function mousePressed() {
  Rotar = true; 
}

function mouseReleased() {
  Rotar = false; 
}

function mouseClicked() {
  console.log(mouseX + "," + mouseY); 
}
