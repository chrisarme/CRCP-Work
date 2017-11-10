class Seaweed
{
  // It is actually easier to make an entirely different class instead of extending seaLife
  
  //PImage seaweedLifeImage;
  
  float seaweedFirstXPos;
  float seaweedFirstYPos;
  float seaweedWidthSize;
  float seaweedHeightSize;
  float seaweedFloatRate;
  float seaweedFloatNumber;
  color seaweedColor;
  
  Seaweed()
  {
    this.seaweedWidthSize = 30;
    this.seaweedHeightSize = 15;
    
    this.seaweedFirstXPos = random(width);
    this.seaweedFirstYPos = height - (this.seaweedHeightSize) - aquariumBottomSize;
    
    this.seaweedFloatNumber = 0;
    this.seaweedFloatRate = random(.05, .08);
    
    this.seaweedColor = color(0, 100, 0);
  }
  
  void drawSeaweed()
  {
    for (int i = 0; i < 5; i++)
    {
      pushMatrix();
        
        fill(seaweedColor);
        translate(seaweedFirstXPos+ (cos(seaweedFloatNumber + (1 * i)) * 5), seaweedFirstYPos - (seaweedHeightSize * i));
        rect(0, 0, seaweedWidthSize, seaweedHeightSize);
      
      popMatrix();
    }
    
    seaweedFloatNumber += seaweedFloatRate;
    
    if (seaweedFloatNumber >= TWO_PI)
    {
      seaweedFloatNumber = 0;
    }
  }
}