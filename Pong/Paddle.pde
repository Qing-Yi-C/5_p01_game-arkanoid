class Paddle {
  int x, y; //position of the paddle
  int pw, ph; //width and height of the paddle
  int lm; //speed limit
  color pc;
  
  Paddle() {
    x = width / 2 - pw;
    y = height - 75;
    pw = width / 4;
    ph = 25;
    pc = #00873E;
    lm = 14;
  } //constructor

  void display() {
    fill(pc);
    rect(x, y, pw, ph);
  } //display

  void move() {
    if ((mouseX >= pw / 2) && (mouseX <= width - pw / 2)) {
      x = mouseX - (p.pw / 2);
    }
  } //move

  void bounce(Ball b) {
    if ((b.cy + b.br >= y) && (b.cx >= x) && (b.cx < x + (pw * (1 / 4)))) {
      if (abs(b.xVel) >= lm) {
        b.xVel = b.xVel;
      } else if (b.xVel > 0) {
        b.xVel++ ;
      } else if (b.xVel < 0) {
        b.xVel-- ;
      } else if (b.xVel == 0) {
        b.xVel = -1;
      }
    } //top 0

    if ((b.cy + b.br >= y) && (b.cx >= x + (pw * (1 / 4))) && (b.cx < x + (pw * (2 / 4)))) {
      if (abs(b.yVel) >= lm) {
        b.yVel = b.yVel;
      } else {
        b.yVel = -b.yVel - 1;
      }
    } //top 1

    if ((b.cy + b.br >= y) && (b.cx >= x + (pw * (2 / 4))) && (b.cx < x + (pw * (3 / 4)))) {
      if (abs(b.yVel) >= lm) {
        b.yVel = b.yVel;
      } else {
        b.yVel = -b.yVel - 1;
      }
    } //top 2

    if ((b.cy + b.br >= y) && (b.cx >= x + (pw * (3 / 4))) && (b.cx <= x + pw)) {
      if (abs(b.yVel) >= lm) {
        b.yVel = b.yVel;
      } else {
        b.yVel = -b.yVel - 1;
      }

      if (abs(b.xVel) >= lm) {
        b.xVel = b.xVel;
      } else if (b.xVel > 0) {
        b.xVel++ ;
      } else if (b.xVel < 0) {
        b.xVel-- ;
      } else if (b.xVel == 0) {
        b.xVel = 1;
      }
    } //top 3
  } //bounce
} //Paddle class
