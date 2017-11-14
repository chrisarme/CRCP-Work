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
    this.obstacleHeight = int(random(100, 300));
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
  }
  
  void moveObstacle()
  {
    obstacleXPos -= obstacleXSpeed;
  }
}