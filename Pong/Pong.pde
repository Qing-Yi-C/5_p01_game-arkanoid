//global constants
int BLOCK = 0;
int SPACE = 1;
int lives;
int row;
int col;
int count;
int score;
boolean playing;

//Driver variables
Ball b;
Block b0;
Paddle p;
Grid g;

void setup() {
  size(1000, 900);
  lives = 4;
  row = 10;
  col = 10;
  count = row * col; //how many blocks
  b = new Ball(width / 2, height / 2 + 100, int(random(1, 3)), int(random(1, 3)), 20, 255);
  p = new Paddle();
  g = new Grid(row, col);

  playing = false;
}//setup

void draw() {
  background(0);

  p.display();
  p.bounce(b);
  g.showGrid();
  b.display();

  if (playing == true) {
    p.move();
    b.move();
  }//playing
  
  if (b.cy >= height - p.ph) {
    delay(500);
    playing = false;
    b.reset();
    lives-- ;
  }//out of bounds,

  textSize(30);
  text("Score: " + score, 0, height - 40);
  text("Lives: " + lives, 0, 40);

  if (count == 0) {
    textSize(100);
    text("You win!", width/3, height/2);
  }//cleared

  if (lives == 0) {
    textSize(100);
    text("Rest in peace...", width/5, height/2);
  }//lost
}//draw

void mousePressed () { //pausing feature
  if (lives > 0) {
    if (playing == true) {
      playing = false;
    } else {
      playing = true;
    }//start
  }
}//mousePressed

void keyPressed() {
  if (key == 'r') {
    playing = false;
    b.reset();
    g.reset();
    score = 0;
    lives = 4;
  }//reset
}//keyPressed
