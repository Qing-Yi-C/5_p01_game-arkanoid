class Grid {
  int rows;
  int cols;
  Block grid[][];
  
  Grid(int r, int c) {
    rows = r;
    cols = c;
    grid = new Block[cols][rows];
    int size = (width - 200) / c;
    
    for (int rs = 0; rs < grid.length; rs++) {
      for (int cs = 0; cs < grid[rs].length; cs++) {
        grid[rs][cs] = new Block(rs * size + 100, 5 * cs * size / rows + 50, size, #C54245);
      }
    }
  } //Grid constructor
  
  void showGrid() {
    for (int r = 0; r < grid.length; r++) {
      for (int c = 0; c < grid[r].length; c++) {
        grid[r][c].display(b);
      } //cols
    } //rows
  } //showGrid
  
  void reset() {
    for (int r = 0; r < grid.length; r++) {
      for (int c = 0; c < grid[r].length; c++) {
        grid[r][c].state = BLOCK;
        count = row * col;
      }//c
    }//r
  }//reset
  
} //Grid class
