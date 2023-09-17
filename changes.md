# Changes
* hit R to reset entire game (regenerates all blocks)
* mousePress to pause or start the game
* no unpausing or pausing if you lose
* include messages at the end of the game, either when player wins or loses
* instead of speed changing when hitting certain blocks, we decided to have the speed of the ball update itself whenever the ball hit the paddle
* display lives at top, display score at bottom
* score is calculated by how many blocks hit
* christmas colors !!!

### CLASS Paddle
* included reset method
* added speed limit since the speed can increase to an extent where the game is nearly impossible to win or play
### CLASS Ball
* included reset method
* made move method include xbounce and ybounce
### CLASS Block
* add state variable (if BLOCK or if SPACE)
* make a bounce method to detect whether the ball hits the block top, left, right, or bottom. adjusts velo, state (BLOCK --> SPACE), score, and number of blocks remaining accordingly.
### CLASS Grid
* 2d array
* included reset method 
* answer to some questions: the 2D array will be used to store [rows] and [columns] of blocks
