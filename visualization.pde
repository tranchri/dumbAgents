// The 8 different directions 
// the agent can go
int N = 0;
int NE = 1;
int E = 2;
int SE = 3;
int S = 4;
int SW = 5;
int W = 6;
int NW = 7;

// how big of a step the agent takes 
// and the size of the agent itsef
int stepSize = 8;
int diameter;
int posY = (int)random(0, height);
int posX = (int)random(0, width);
int direction;

void setup() {
   pixelDensity(2);
   fullScreen();
   background(18, 13, 30);
}

// Remember that (0,0) is the upper left-hand corner
void draw() {
  for (int i = 0; i <= mouseX; i++) {
    direction = (int) random(0,8);
    if (direction == N) {
      posY -= stepSize;
    }
    else if (direction == NE) {
      posY -= stepSize;
      posX += stepSize;
  }
    else if (direction == E) {
      posX += stepSize;
    }
    else if (direction == SE) {
      posY += stepSize;
      posX += stepSize;
    }
    else if (direction == S) {
      posY += stepSize;
    }
    else if (direction == SW) {
      posY += stepSize;
      posX -= stepSize;
    }
    else if (direction == W) {
      posX -= stepSize;
    }
    else if (direction == NW) {
      posY -= stepSize;
      posX -=stepSize;
    }
    
    // Keep the agent on the canvas
    if (posX > width)
      posX = 0;
    if (posX < 0)
      posX = width;
    if (posY < 0)
      posY = height;
    if (posY > height)
      posY = 0;
    
    // Draw a circle at the position.
    noStroke();
    if ((int)random(0, width) == posX || (int)random(0, height) == posY) {
       diameter = 5;
       stroke(255);
       fill(215, 186, 0);
    }
    else {
      diameter = 1;
      noStroke();
      fill(255, 100);
    }
    ellipse(posX + stepSize/2, posY + stepSize/2, diameter, diameter);
  }
}