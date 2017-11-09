class GiantSquid extends SeaLife
{
  float originalSquidXSpeed;
  float originalSquidYSpeed;
  
  GiantSquid()
  {
    super();
    
    seaLifeImage = loadImage("Images/SquidImage.png");
    seaLifeTint = color(color(random(100, 255), random(100, 255), random(100, 255), 200));
    
    seaLifeWidthSize = seaLifeImage.width / 2.5 * seaLifeSize;
    seaLifeHeightSize = seaLifeImage.height / 2.5 * seaLifeSize;
    originalSquidXSpeed = random(-.5, .5);
    originalSquidYSpeed = random(-.5, .5);
    originalSpeedNotZero();
    seaLifeXSpeed = originalSquidXSpeed;
    seaLifeYSpeed = originalSquidYSpeed;
    seaLifeFloatRate = 0;
    seaLifeColor = color(random(255), random(255), random(255));     
  }
  
  void drawSquid()
  {
    moveSquidSporadically();
    super.generalControl();
    
    pushMatrix();
    
      tint(seaLifeTint);
      translate(seaLifeXPos, seaLifeYPos);
      super.checkSeaLifeDirection();
      flipSquidVertically();
      image(seaLifeImage, 0, 0, seaLifeWidthSize, seaLifeHeightSize);
    
    popMatrix();
  }
  
  void moveSquidSporadically()
  {
    if ((abs(seaLifeXSpeed) == (abs(originalSquidXSpeed))) && (abs(seaLifeYSpeed) == abs(originalSquidYSpeed)))
    {
      float randomNum = random(0, 5);
      
      if (randomNum > 4)
      {
        if (seaLifeXSpeed > 0) 
        { 
          seaLifeXSpeed += 3; 
        }
        else 
        {
          seaLifeXSpeed -= 3;
        }
        
        if (seaLifeYSpeed > 0) 
        { 
          seaLifeYSpeed += 3; 
        }
        else 
        {
          seaLifeYSpeed -= 3;
        }
      }
    }
    else
    {
      if ((seaLifeXSpeed > 0) && (abs(seaLifeXSpeed) != abs(originalSquidXSpeed))) 
      { 
        seaLifeXSpeed -= .05; 
      }
      else if ((seaLifeXSpeed < 0) && (abs(seaLifeXSpeed) != abs(originalSquidXSpeed)))
      {
        seaLifeXSpeed += .05;
      }
      
      if ((seaLifeYSpeed > 0) && (abs(seaLifeYSpeed) != abs(originalSquidYSpeed))) 
      { 
        seaLifeYSpeed -= .05; 
      }
      else if ((seaLifeYSpeed < 0) && (abs(seaLifeYSpeed) != abs(originalSquidYSpeed)))
      {
        seaLifeYSpeed += .05;
      }
    }
    
    if (abs(seaLifeXSpeed) < abs(originalSquidXSpeed))
    {
      if (seaLifeXSpeed > 0)
      {
        seaLifeXSpeed = abs(originalSquidXSpeed);
      }
      else if (seaLifeXSpeed < 0)
      {
        seaLifeXSpeed = abs(originalSquidXSpeed) * -1;
      }
      
      if (seaLifeYSpeed > 0)
      {
        seaLifeYSpeed = abs(originalSquidYSpeed);
      }
      else if (seaLifeYSpeed < 0)
      {
        seaLifeYSpeed = abs(originalSquidYSpeed) * -1;
      }
      
    }
  }
  
  void flipSquidVertically()
  {
    if (seaLifeYSpeed > 0)
    {
      scale(1, -1);
    }
    else if (seaLifeYSpeed < 0)
    {
      scale(1, 1);
    }
  }
  
  // It wouldn't be good if the speed was zero! This stops that issue
  void originalSpeedNotZero()
  {
    if (originalSquidXSpeed == 0)
    {
      originalSquidXSpeed = random(-.5, .5);
      originalSpeedNotZero();
    }
    
    if (originalSquidYSpeed == 0)
    {
      originalSquidYSpeed = random(-.5, .5);
      originalSpeedNotZero();
    }
  }
}