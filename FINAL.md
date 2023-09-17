# Project 01 For NeXT CS
### Class Period: 5
### Name0: Qing Yi Chen
### Name1: Phoebe Zheng
#### Selected Game: Breakout/Arkanoid
---

### How To Play
To start the game, press your mouse anywhere on the screen. The ball will initially move slowly downward, but will increase velocity every time it hits the paddle. Move your mouse to move the paddle left and right so it can hit the ball. The goal is to reflect the ball upward to hit the blocks, eventually eliminating them all to win the game. You start with 4 lives, and if the ball hits the bottom of the screen (missing the Paddle), you lose a life and the ball goes back to the middle,and waits for you to press the mouse to start moving again at a slower speed. You lose the game if you have 0 lives left. Press your mouse every time you wish to pause/unpause the game. Press the R key to completely reset the game if you lose or just wish to restart.

---

### Features
* Block is eliminated and ball bounces if the ball hits a block
* Score increases every time a block is eliminated
* Speed of ball is determined by how many times the ball hits the paddle
* There is a speed limit of the ball to ensure the velocity is not too fast to the extent of impossibility.
* Pausing/unpausing the game through pressing the mouse anywhere on the screen
* Cannot pause/unpause if you have no more lives,but you can press 'r' to reset
* If ball moves past bottom of screen it's reset to the starting point and takes away one life 
* Completely resets game (all blocks come back, lives restored, score set to 0, ball set to starting position) if you press the R key
* Displays winning message if player manages to eliminate all blocks
* Displays losing message if player reaches 0 lives (have to press R to completely reset the game)
* Remaining lives are displayed at top-left of screen and the score is displayed at bottom-left of screen

---

### Changes


#### Feedback Changes:

###### Changes
* hit R to reset entire game
* hit P to pause game (we already planned on pressing the mouse, but having both commands work too)

###### CLASS Paddle
* add reset method
* add onPaddle method (boolean)
* add hitLeft, hitRight, hitMid to return different xvelocity and yvelocity
###### CLASS Ball
* split move into move, xbounce, ybounce
* add reset method
* split apart collisionCheck method to onPaddle (goes into CLASS Paddle) and onBlock (goes into CLASS Block) to clarify what events happen
###### CLASS Block
* add state variable (normal, colored, disappeared)
* to complete our gone method (status of block changes if onBlock == true), add an updateBlock method to actually make block disappear
* add reset method
* answer to some questions: the 2D array will be used to store [blength] [bwidth] of blocks
* add onBlock method (boolean)


#### Programming Changes:

###### Changes
* added a Grid class to accompany Block class
* kept R key as reset button
* mousePress to pause or start the game, not P key
* use boolean playing to complete pausing feature
* no unpausing or pausing if you lose
* include messages at the end of the game, either when player wins or loses
* instead of speed changing when hitting certain blocks of a different state/color, we decided to have the speed of the ball update itself whenever the ball hit the paddle
* added lives to the game
* lives are displayed at top, score displayed at bottom
* score is calculated by how many blocks have been hit
* win through all blocks eliminated or lose through all lives lost
* christmas colors !!!

###### CLASS Paddle
* keep reset method
* added a variable for speed limit
* eliminate hitLeft, hitMid, and hitRight, just use bounce method in Paddle class
* eliminate boolean onPaddle because it was unnecessary
* added speed limit of -14 or 14 (- or + is direction) since the speed can increase to an extent where the game is nearly impossible to win or play
###### CLASS Ball
* made one single move method and included xbounce and ybounce in it
* keep reset method
* eliminate collisionCheck and the splitting apart of it
###### CLASS Block
* add state variable (BLOCK or SPACE, not normal, colored, or disappeared)
* keep reset method
* make a bounce method to detect whether the ball hits the block top, left, right, or bottom. adjusts velocity, state (BLOCK --> SPACE), score, and number of blocks remaining accordingly
* eliminate gone method and updateBlock method
* eliminate onBlock boolean
###### CLASS Grid
* 2d array
* included reset method 
* answer to some questions: the 2D array will be used to store [rows] and [columns] of blocks
