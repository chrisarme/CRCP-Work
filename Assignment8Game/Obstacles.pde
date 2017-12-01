class Obstacles
{
  float obstacleXPos;
  float obstacleYPos;
  float obstacleXSpeed;
  float obstacleHeight;
  float obstacleWidth;
  float gameTimerSinceCollision;
  color obstacleColor;
  
  Obstacles(float timer)
  {
    this.obstacleHeight = int(random(100, 200));
    this.obstacleWidth = int(random(50, 100));
    // This is going to need to be changed!
    this.obstacleXPos = width + 400;
    this.obstacleYPos = ground.groundYPos - obstacleHeight;
    this.obstacleXSpeed = 5 + (.005 * timer);
    this.obstacleColor = color(200);
  }
  
  void displayObstacle(float timer)
  {
    obstacleXSpeed = 5 + (.0025 * timer);
    pushMatrix();
    
      translate(obstacleXPos, obstacleYPos);
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
    // These giant check is here to see if the player is stuck on the wall, while while keeping the player above the obstacle of necessary if the player is above the wall
    if ((player.playerYPos + (player.playerHeight / 2) >= obstacleYPos) && (player.playerXPos >= obstacleXPos) && (dist(player.playerXPos, player.playerYPos, obstacleXPos + (obstacleWidth / 2), obstacleYPos) <= player.playerWidth) && (dist(player.playerXPos, player.playerYPos, obstacleXPos + (obstacleWidth / 2), obstacleYPos) <= player.playerHeight))
    {
      player.playerYPos = obstacleYPos - (player.playerHeight / 2);
      player.playerYSpeed = 0;
    }
    else if (((player.playerXPos + (player.playerWidth / 2)) >= obstacleXPos) && ((player.playerXPos + (player.playerWidth / 2)) <= obstacleXPos + obstacleWidth) && ((player.playerYPos + (player.playerHeight / 2)) <= obstacleYPos + obstacleHeight) && ((player.playerYPos + (player.playerHeight / 2)) >= obstacleYPos))
    {
      player.playerXPos = obstacleXPos - (player.playerWidth / 2);
      gameController.timerSinceLastCollision -= 100;
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