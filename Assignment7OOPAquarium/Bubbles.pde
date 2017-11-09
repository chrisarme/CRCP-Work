class Bubbles extends SeaLife
{
  Bubbles(float xPos, float yPos)
  {
    super();
    
    this.seaLifeXPos = xPos;
    this.seaLifeYPos = yPos;
    
    this.seaLifeWidthSize = int(random(2, 20));
    this.seaLifeHeightSize = this.seaLifeWidthSize;
    this.seaLifeXSpeed = 0;
    this.seaLifeYSpeed = random(-3, -1);
    this.seaLifeFloatRate = random(.05, .1);
    this.seaLifeColor = color(255, 100);
  }
  
  void drawBubble()
  {
    super.generalControl();
    pushMatrix();
    
      translate(this.seaLifeXPos, this.seaLifeYPos);
      ellipse(0, 0, this.seaLifeWidthSize, this.seaLifeHeightSize);
    
    popMatrix();
  }
  
  boolean checkIfShouldExist()
  {
    if (this.seaLifeYPos - (this.seaLifeHeightSize / 2) <= 0)
    {
      return false;
    }
    else
    {
      return true;
    }
  }
}