class GameOverScreen
{
  int optionSelected;
  int numberOfWipe;
  
  GameOverScreen()
  {
    this.optionSelected = 0;
    this.numberOfWipe = 0;
  }
  
  void drawGameOverScreen()
  {
    if (numberOfWipe <= 20)
    {
      screenWipe();
      numberOfWipe++;
    }
    else
    {
      background(50);
      
      fill(255);
      textSize(100);
      text("GAME OVER", width / 2, height / 3);
      
      switch(optionSelected)
      {
        case 0:
        default:
          textSize(70);
          text("RETRY", width / 3, 400 + 5);
          textSize(50);
          text("MENU", width * 2 / 3, 400);
          break;
        case 1:
          textSize(50);
          text("RETRY", width / 3, 400);
          textSize(70);
          text("MENU", width * 2 / 3, 400 + 5);
          break;
      }
    }
  }
  
  void doAppropriateOption()
  {
    switch(optionSelected)
    {
      case 0:
        gameController.restartGame();
        break;
      case 1:
      default:
        gameController.gameScreen = 0;
    }
  }
  
  void screenWipe()
  {
    fill(50);
    int numberOfSections = 40;
    
    for (int x = 0; x < numberOfSections; x++)
    {
      float xPos = ((width / numberOfSections) * x) + (numberOfWipe * (width / numberOfSections / 20));
        
      rect(xPos, 0, width / numberOfSections / 20, height);
    }
  }
}