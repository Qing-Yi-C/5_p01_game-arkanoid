# Project 01 For NeXT CS
### Class Period: 5
### Name0: Qing Yi Chen
### Name1: Phoebe Zheng
---


Your mission is to recreate one of these two classic arcade games:
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders [demo 0](https://elgoog.im/space-invaders/) [demo 1](https://www.crazygames.com/game/space-invaders)

This project will be completed in phases. The first phase will be to work on this document. Use makrdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Game Selection, Analysis & Plan

#### Selected Game: Breakout/Arkanoid

### Necessary Features
What are the core features that your game should have? These should be things that __must__ be implemented in order to make the game playable, not extra features that could be added to make the game more fun to play.

* The classes we need (the platform, the ball, and the blocks)
* The control of the platform
* The physics of the ball (bouncing off the borders and movement depending on where it hits the platform) 
* The disappearance of the blocks when the ball collides with each respective block
* Calculation and display of score

### Extra Features
What are some features that are not essential to gameplay, but you would like to see (provided you have time after completing the necessary features.

* The differing change in speed of the ball according to the color of the disappearing block
* Changing background color based on score

### Controls
How will your game be controlled? If the mouse will be used, explain how. List all keyboard commands as well.

Keyboard Commands:
- Arrows keys

Mouse Control:
- Mouse movement: moves the paddle
- Mouse pressed: pause the game


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assingments, you will have to add new features to them.

Paddle
- Instance variables:
  - int px
  - int py
  - int pwidth
  - int plength
- METHODS
  - display
  - move

Ball
- Instance variables:
  - int cx
  - int cy
  - int xvelocity
  - int yvelocity
  - int radius
- METHODS
  - display
  - collisionCheck (hitting paddle or blocks)
  - move
  - changeSpeed

Block
- Instance variables;
  - int bwidth
  - int blength
  - int bx
  - int by
- METHODS
  - display
  - size (since blocks are of different widths)
  - color
  - getScoreValue (returned whenever ball hits block, dependent on color of blocks)
  - gone (block disappears)
