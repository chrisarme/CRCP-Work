class Crab extends SeaLife
{
  PImage crabImage;
  
  Crab()
  {
    super();
    
    crabImage = loadImage("Images/CrabImage.png");
    
    seaLifeWidthSize = crabImage.width / 25 * seaLifeSize;
    seaLifeHeightSize = crabImage.height / 25 * seaLifeSize;
    seaLifeYPos = height - (seaLifeHeightSize / 2) - aquariumBottomSize;
    seaLifeXSpeed = random(-5, 5);
    seaLifeYSpeed = 0;
    seaLifeFloatRate = 0;
    seaLifeColor = color(random(150, 255), 50, 50);
  }
  
  void drawCrab()
  {
    super.generalControl();
    
    pushMatrix();
      
      translate(seaLifeXPos, seaLifeYPos);
      checkCrabDirection();
      image(crabImage, 0, 0, seaLifeWidthSize, seaLifeHeightSize);
    
    popMatrix();
    
    //ellipse(seaLifeXPos, seaLifeYPos, seaLifeWidthSize, seaLifeHeightSize);
  }
  
  void checkCrabDirection()
  {
    if (seaLifeXSpeed > 0)
    {
      scale(-1, 1);
    }
    else if (seaLifeXSpeed < 0)
    {
      scale(1, 1);
    }
  }
  
}