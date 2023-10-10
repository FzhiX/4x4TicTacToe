char[][] board = new char[4][4];
boolean playerTurn = true; // True for player, false for AI

void setup()
{
  size(600,600);
  background(255);
  
  // Grid
  stroke(0);
  for (int i = 1; i < 4; i++)
  {
    line((width/4)*i, 0, ((width/4)*i), height);
    line(0, (height/4)*i, width, (height/4)*i);
  }

  // Start position(empty cells)
  for (int y = 0; y < 4; y++)
  {
    for (int x = 0; x < 4; x++)
    {
      board[x][y] = ' ';
    }
  }
}

void draw() 
{
  
  
}

/*

void mouseClicked() {
  // Handle player's move when the user clicks on a cell
  // Check for a win or draw
  // Switch turns to AI
  // Call AI's move function
}

void aiMove() {
  // Implement AI's move logic to find the most likely winning move
  // Update the board and draw the move
  // Check for a win or draw
  // Switch turns back to the player
}

boolean checkWin(char player) {
  // Check for a win for the specified player
}

boolean isBoardFull() {
  // Check if the board is full (draw)
}

void resetGame() {
  // Reset the game board and state
}

void keyPressed() {
  // Handle game restart or other actions if needed
}


*/
