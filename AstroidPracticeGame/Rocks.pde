class Rocks
{
  float rockXPosition;
  float rockYPosition;
  float rockXSpeed;
  float rockYSpeed;
  float rockSize;
  
  
  Rocks()
  {
    rockXPosition = -20;
    rockYPosition = 50;
    rockXSpeed = random(3);
    rockYSpeed = random(3);
    rockSize = random(50, 100);
  }
  
  void drawRocks()
  {
    ellipse(rockXPosition, rockYPosition, rockSize, rockSize);
    
    rockXPosition += rockXSpeed;
    rockYPosition += rockYSpeed;
  }
}