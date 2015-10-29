//declare variables
float x, y, velX, velY, diam;
float x1;
float y1;
float diam1;
float velX1;
float velY1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  x1=width/2 +50;
  y1=height/2+60;
  diam1=40;
  velX1=10;
  velY1=10;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  ellipse(x1, y1, diam1, diam1);
  x1 += velX1;
  y1 += velY1;
  if (x1 + diam1/2 >= width) {
    velX1 = -abs(velX1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x1 - diam1/2 <= 0) {
    velX1 = abs(velX1);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y1 + diam1/2 >= height) {
    velY1 = -abs(velY1);
  } else if (y1 - diam1/2 <= 0) {
    velY1 = abs(velY1);
  }
  if(mousePressed) {
   fill(random(255),random(255),random(255)); 
  }
  if(keyPressed) {
   velY=velY*1.02;
   velX=velX*1.02;
  }
}