class GameControl
{
  int gameScreen;
  float timerSinceLastCollision;
  float timerSinceLastObstacleSpawn;
  boolean canObstacleSpawn;
  boolean isGameOver;
  
  GameControl()
  {
    this.timerSinceLastCollision = 0;
    this.timerSinceLastObstacleSpawn = 0;
    this.gameScreen = 0;
    this.canObstacleSpawn = true;
    this.isGameOver = false;
  }
  
  void masterGameControls()
  {
    checkIfGameOver();
    updateTimerCount();
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
  
  void updateTimerCount()
  {
    timerSinceLastCollision += 1;
    if (timerSinceLastCollision < 0)
    {
      timerSinceLastCollision = 0;
    }
  }
  
  void updateTimeSinceLastObstaclesSpawn()
  {
    timerSinceLastObstacleSpawn += 1;
  }
  
  void checkIfObstacleCanSpawn()
  {
    if (timerSinceLastObstacleSpawn >= 120 - (.05 * timerSinceLastCollision))
    {
      canObstacleSpawn = true;
    }
  }
}