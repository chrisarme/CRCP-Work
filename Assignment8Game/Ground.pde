class Ground
{
  float groundXPos;
  float groundYPos;
  color groundColor;
  
  Ground()
  {
    groundXPos = 0;
    groundYPos = height - 100;
    groundColor = color(200);
  }
  
  void displayGround()
  {
    fill(groundColor);
    rect(groundXPos, groundYPos, width, height - groundYPos);
  }
}