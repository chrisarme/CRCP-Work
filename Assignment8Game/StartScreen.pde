class StartScreen
{
  int optionSelected;
  
  StartScreen()
  {
    this.optionSelected = 0;
  }
  
  void drawStartScreen()
  {
    background(75);
    
    textSize(75);
    text("NOT CANABALT", width / 2, height / 3);
    
    switch(optionSelected)
    {
      case 0:
      default:
        textSize(70);
        text("START", width / 3, 400 + 5);
        textSize(50);
        text("CLOSE", width * 2 / 3, 400);
        break;
      case 1:
        textSize(50);
        text("START", width / 3, 400);
        textSize(70);
        text("CLOSE", width * 2 / 3, 400 + 5);
        break;
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
        exit();
    }
  }
  
}