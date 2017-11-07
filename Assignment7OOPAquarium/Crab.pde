class Crab extends SeaLife
{
  Crab()
  {
    super();
    
    seaLifeImage = loadImage("Images/CrabImage.png");
    
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
    
    pushMatrix();
      
      translate(seaLifeXPos, seaLifeYPos);
      super.checkSeaLifeDirection();
      image(seaLifeImage, 0, 0, seaLifeWidthSize, seaLifeHeightSize);
    
    popMatrix();
    
    //ellipse(seaLifeXPos, seaLifeYPos, seaLifeWidthSize, seaLifeHeightSize);
  }
}