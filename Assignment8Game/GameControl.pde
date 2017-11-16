class GameControl
{
  boolean isGameOver;
  
  GameControl()
  {
    this.isGameOver = false;
  }
  
  void checkIfGameOver()
  {
    if (player.playerXPos + player.playerWidth <= 0)
    {
      isGameOver = true;
    }
    
    if (isGameOver)
    {
      textSize(100);
      textAlign(CENTER);
      
      text("GAME OVER", width / 2, height / 2);
      frameRate(0);
    }
  }
  
  boolean createObstacles(boolean shouldExist)
  {
    if (obstacles.size() < 2 || shouldExist)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}