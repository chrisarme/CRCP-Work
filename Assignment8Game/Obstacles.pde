class Obstacles
{
  float obstacleXPos;
  float obstacleYPos;
  float obstacleXSpeed;
  float obstacleHeight;
  float obstacleWidth;
  color obstacleColor;
  
  Obstacles(float iNum)
  {
    this.obstacleXPos = width + 50 + (500 * iNum);
    this.obstacleYPos = ground.groundYPos;
    this.obstacleXSpeed = 5;
    this.obstacleHeight = int(random(100, 200));
    this.obstacleWidth = int(random(50, 100));
    this.obstacleColor = color(200);
  }
  
  void displayObstacle()
  {
    pushMatrix();
    
      translate(obstacleXPos, obstacleYPos - obstacleHeight);
      fill(obstacleColor);
      rect(0, 0, obstacleWidth, obstacleHeight);
      
    popMatrix();
    
    moveObstacle();
    collisionWithPlayer();
  }
  
  void moveObstacle()
  {
    obstacleXPos -= obstacleXSpeed;
  }
  
  void collisionWithPlayer()
  {
    // This giant check is here to see if the player is stuck on the wall, while not activating if the player is above or past the wall
    if (((player.playerXPos + (player.playerWidth / 2)) >= obstacleXPos) && ((player.playerXPos + (player.playerWidth / 2)) <= obstacleXPos + 10) && ((player.playerYPos + (player.playerHeight / 2)) >= obstacleYPos))
    {
      player.playerXPos = obstacleXPos - (player.playerWidth / 2);
    }
  }
  
  boolean isObstacleOffScreen()
  {
    if (obstacleXPos + obstacleWidth < 0)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}