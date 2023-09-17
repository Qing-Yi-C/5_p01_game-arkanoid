class Ball {
  
  int cx, cy; //position of ball center
  int xVel, yVel; //speed of the ball
  int br; //ball radius
  color c; //ball color
  int dir; //speed and direction for xVel
  
  Ball (int x, int y, int xv, int yv, int radius, color bc) {
    cx = x;
    cy = y;
    if (dir >= 0) {
      dir = int(random(-1, 2));
    }
    xVel = xv * dir;
    yVel = yv;
    br = radius;
    c = bc;
  } //constructor
  
  void display() {
    fill(c); //fill color
    circle(cx, cy, br * 2); //circle
  } //display
  
  void move() {
    if (cx <= br || cx >= (width - br -1)) {
      xVel*= -1;
    }//x bounce
    if (cy <= br || cy >= (height - br -1)) {
      yVel*= -1;
    }//y bounce
    cx+= xVel;
    cy+= yVel;
  }//moveBall
  
  void reset() {
    cx = width/2;
    cy = height/2 + 100;
    xVel = 1;
    yVel = 1;
  }//resetBall
}// Ball class
