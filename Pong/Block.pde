class Block {
  int x, y; //position of the brick
  int size; //size of the brick
  int rectW, rectH;
  int state;
  color c;
  
  Block(int gx, int gy, int gsize, color gc) {
    x = gx;
    y = gy;
    size = gsize;
    rectW = size;
    rectH = size/2;
    c = gc;
  }//constructor
  
  void display(Ball b) {
    if (state == BLOCK) {
      fill(c);
      bounce(b);
    }//exists
    if (state == SPACE) {
      fill(0);
    }//gone
    rect(x, y, rectW, rectH);
  }//display
  
  void bounce(Ball b) {
    if ((b.cy >= y - b.br) && (b.cy <= y) && (b.cx >= x) && (b.cx <= x + rectW)) {
      b.yVel *= -1;
      state = SPACE;
      count-- ;
      score++ ;
    } //top
    if ((b.cy <= y + rectH + b.br) && (b.cy >= y + rectH) && (b.cx >= x) && (b.cx <= x + rectW)) {
      b.yVel *= -1;
      state = SPACE;
      count-- ;
      score++ ;
    } //bottom
    if ((b.cx >= x - b.br) && (b.cx <= x) && (b.cy >= y) && (b.cy <= y + rectH)) {
      b.xVel *= -1;
      state = SPACE;
      count-- ;
      score++ ;
    } //left
    if ((b.cx >= x + rectW) && (b.cx <= x + rectW + b.br) && (b.cy >= y) && (b.cy <= y + rectH)) {
      b.xVel *= -1;
      state = SPACE;
      count-- ;
      score++ ;
    } //right
  } //bounce
  
} //Block class
