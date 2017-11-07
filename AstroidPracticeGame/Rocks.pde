class Rocks
{
  float rockXPosition;
  float rockYPosition;
  float rockXSpeed;
  float rockYSpeed;
  float rockSize;
  float rockRadius;
  
  PShape rockShape;
  
  
  Rocks()
  {
    rockXPosition = -20;
    rockYPosition = 50;
    rockXSpeed = random(3);
    rockYSpeed = random(3);
    rockSize = random(50, 100);
    rockRadius = random(25, 50);
    
    rockShape = createShape();
    rockShape.beginShape();
    rockShape.vertex(rockRadius * cos(radians(0)), 0);
    rockShape.vertex(cos(radians(2)), 0);
    rockShape.vertex(rockRadius * cos(radians(20)), rockRadius * sin(radians(20)));
    rockShape.vertex(rockRadius * cos(HALF_PI), rockRadius * sin(HALF_PI));
    rockShape.endShape(CLOSE);
  }
  
  void drawRocks()
  {
    shape(rockShape, rockXPosition, rockYPosition);
    
    rockXPosition += rockXSpeed;
    rockYPosition += rockYSpeed;
  }
}