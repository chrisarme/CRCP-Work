class Obstacles
{
  float obstacleXPos;
  float obstacleYPos;
  float obstacleXSpeed;
  float obstacleHeight;
  float obstacleWidth;
  color obstacleColor;
  
  Obstacles()
  {
    obstacleXPos = width + 50;
    obstacleYPos = ground.groundYPos;
    obstacleXSpeed = 2;
    obstacleHeight = int(random(100, 300));
    obstacleWidth = int(random(50, 100));
    obstacleColor = color(200);
  }
  
  void displayObstacle()
  {
    pushMatrix();
    
      translate(obstacleXPos, obstacleYPos - obstacleHeight);
      fill(obstacleColor);
      rect(0, 0, obstacleWidth, obstacleHeight);
      
    popMatrix();
    
    moveObstacle();
  }
  
  void moveObstacle()
  {
    obstacleXPos -= obstacleXSpeed;
    println(obstacleXPos);
  }
}