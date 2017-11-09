class Crab extends SeaLife
{
  Crab()
  {
    super();
    
    seaLifeImage = loadImage("Images/CrabImage.png");
    seaLifeTint = color(255);
    
    seaLifeWidthSize = seaLifeImage.width / 25 * seaLifeSize;
    seaLifeHeightSize = seaLifeImage.height / 25 * seaLifeSize;
    seaLifeYPos = height - (seaLifeHeightSize / 2) - aquariumBottomSize;
    seaLifeXSpeed = random(-5, 5);
    seaLifeYSpeed = 0;
    seaLifeFloatRate = 0;
    seaLifeColor = color(random(150, 255), 50, 50);
  }
  
  void drawCrab()
  {
    super.generalControl();
    
    // maybe add this to SeaLife?
    pushMatrix();
      
      tint(seaLifeTint);
      translate(seaLifeXPos, seaLifeYPos);
      super.checkSeaLifeDirection();
      image(seaLifeImage, 0, 0, seaLifeWidthSize, seaLifeHeightSize);
    
    popMatrix();
  }
}