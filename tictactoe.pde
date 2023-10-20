char[][] board = new char[4][4];
boolean playerTurn = true; // True for player, false for AI (or the other player)

void setup()
{
  size(600, 600);
  background(238);

  // Grid
  stroke(0);
  strokeWeight(5);
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
      board[x][y] = 'X';
    }
  }
}

void draw()
{
  textSize(64);
  textAlign(CENTER, CENTER);
  for (int y = 0; y < 4; y++)
  {
    for (int x = 0; x < 4; x++)
    {
      if (board[x][y] != 'X')
      {
        fill(204, 1, 1);
        text(board[x][y], (width/4)*x+(width/(4*2)), (height/4)*y+(height/(4*2)));
      } else if (board[x][y] == 'O')
      {
        fill(0, 0, 148);
        text(board[x][y], (width/4)*x+(width/(4*2)), (height/4)*y+(height/(4*2)));
      }
    }
  }

  if (checkWinner() != ' ')
  {
    textSize(width/4);
    fill(189, 212, 255);
    textAlign(CENTER, CENTER);
    
    if (checkWinner() == 'T')
    {
      text("Tie!", width/2, height/2);
    }
    else if (checkWinner() == 'O')
    {
      text("O won!", width/2, height/2);
    }
    else if (checkWinner() == 'X')
    {
      text("X won!", width/2, height/2);
    }
  }
}

char checkWinner()
{
  char tempWinner = ' ';
  char winner = ' ';

  // Check the vertical direction
  for (int y = 0; y < 4; y++)
  {
    tempWinner = board[0][y];
    for (int x = 0; x < 4; x++)
    {
      if (board[x][y] != tempWinner)
      {
        tempWinner = ' ';
      }
    }
    if (tempWinner != ' ')
    {
      winner = tempWinner;
      return winner;
    }
  }

  // Check the horizontal direction
  for (int x = 0; x < 4; x++)
  {
    tempWinner = board[x][0];
    for (int y = 0; y < 4; y++)
    {
      if (board[x][y] != tempWinner)
      {
        tempWinner = ' ';
      }
    }
    if (tempWinner != ' ')
    {
      winner = tempWinner;
      return winner;
    }
  }


  // Check the left vertical direction
  tempWinner = board[0][0];
  for (int v = 0; v < 4; v++)
  {
    if (board[v][v] != tempWinner)
    {
      tempWinner = ' ';
    }
  }
  if (tempWinner != ' ')
  {
    winner = tempWinner;
    return winner;
  }

  // Check the right vertical direction
  tempWinner = board[0][4-1];
  for (int v = 0; v < 4; v++)
  {
    if (board[v][(4-1)-v] != tempWinner)
    {
      tempWinner = ' ';
    }
  }
  if (tempWinner != ' ')
  {
    winner = tempWinner;
    return winner;
  }

  // Tie
  if (winner == ' ');
  {
    tempWinner = 'T';
    for (int y = 0; y < 4; y++)
    {
      for (int x = 0; x < 4; x++)
      {
        if (board[x][y] == ' ')
        {
          tempWinner = ' ';
        }
      }
    }
    if (tempWinner == 'T') {
      winner = tempWinner;
    }
  }

  // The winner can now only be ' ', 'X', 'O' or 'T'. 
  return winner;
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
 
 void resetGame() {
 // Reset the game board and state
 }
 
 void keyPressed() {
 // Handle game restart or other actions if needed
 }
 
 
 */
