class Crab extends SeaLife
{
  float originalCrabXSpeed;
  
  Crab()
  {
    super();
    
    this.seaLifeImage = loadImage("Images/CrabImage.png");
    this.seaLifeTint = color(255);
    
    this.seaLifeWidthSize = this.seaLifeImage.width / 25 * this.seaLifeSize;
    this.seaLifeHeightSize = this.seaLifeImage.height / 25 * this.seaLifeSize;
    this.seaLifeYPos = height - (this.seaLifeHeightSize / 2) - aquariumBottomSize;
    this.originalCrabXSpeed = random(-5, 5);
    this.seaLifeXSpeed = this.originalCrabXSpeed;
    this.seaLifeYSpeed = 0;
    this.seaLifeFloatRate = 0;
    this.seaLifeColor = color(random(150, 255), 50, 50);
  }
  
  void drawCrab()
  {
    // BROKEN FEATURE
    //runFromSquids();
    super.generalControl();
    
    // maybe add this to SeaLife?
    pushMatrix();
      
      tint(this.seaLifeTint);
      translate(this.seaLifeXPos, this.seaLifeYPos);
      super.checkSeaLifeDirection();
      image(this.seaLifeImage, 0, 0, this.seaLifeWidthSize, this.seaLifeHeightSize);
    
    popMatrix();
  }
  
  // I don't like squids! I run away from them as fast as possible!
  // BROKEN FEATURE
  
  /*void runFromSquids()
  {
    for (int i = 0; i < numberOfSquids; i++)
    {
      if (dist(this.seaLifeXPos, this.seaLifeXPos, squids[i].seaLifeXPos, squids[i].seaLifeYPos) <= 200)
      {
        if (this.seaLifeXSpeed > 0)
        {
          this.seaLifeXSpeed = this.seaLifeXSpeed + 5;
        }
        if (this.seaLifeXSpeed < 0)
        {
          this.seaLifeXSpeed = this.seaLifeXSpeed - 5;
        }
      }
      else
      {
        if (this.seaLifeXSpeed > 0)
        {
          this.seaLifeXSpeed = abs(this.originalCrabXSpeed);
        }
        if (this.seaLifeXSpeed < 0)
        {
          this.seaLifeXSpeed = abs(this.originalCrabXSpeed) * -1;
        }
      }
    }
  }*/
}