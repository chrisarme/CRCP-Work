// Chris Arme
// Assignment 6
// Changing PImage with various effects including those which are already programmed and those which I programmed myself.

boolean isShiftDown = false;
boolean shouldDisplayHelp = false;
PImage solaire;
int displayedEffectMultiplier = 1;
float actualEffectMultiplier;

void setup()
{
  noStroke();
  size(600, 338);
  createOriginalImage();
  
  // NOTE: The effectMultiplier displayed is actually 10x larger than it will actually be for the sake of simplicity
  textAlign(LEFT);
  textSize(25);
}

// This is just used to keep the image and text consitently drawn in the right layers.
void draw()
{
  actualEffectMultiplier = (displayedEffectMultiplier / 10);
  
  image(solaire, 0 , 0);
  
  text(str(displayedEffectMultiplier), 20, 30);
  text("?", 575, 30);
  
  // If the user clicks near the "?", the help will be displayed. It can be removed by clicking the "?" again.
  displayHelp();
}

void keyPressed()
{
  if (key == 'r')
  {
    createOriginalImage();
  }
  else if (key == 'b')
  {
    blurImage();
  }
  else if (key == 'g')
  {
    grayImage();
  }
  else if (key == 'd')
  {
    dilateImage();
  }
  else if (key == 's')
  {
    switchBlocks();
  }
  else if (key == 'z')
  {
    addRedColor();
  }
  
  // If the shift key is down it will speed up the multiplier add/sub speed
  if (isShiftDown)
  {
    if (keyCode == UP)
    {
      displayedEffectMultiplier += 10;
    }
    else if (keyCode == DOWN)
    {
      displayedEffectMultiplier -= 10;
    }
  }
  else
  {
    if (keyCode == UP)
    {
      displayedEffectMultiplier += 1;
    }
    else if (keyCode == DOWN)
    {
      displayedEffectMultiplier -= 1;
    }
  }
  
  if (keyCode == SHIFT)
  {
    isShiftDown = true;
  } 
}

void keyReleased()
{
  if (keyCode == SHIFT)
  {
    isShiftDown = false;
  } 
}

// checks if the mouse is near the "?"
void mousePressed()
{
  if (dist(mouseX, mouseY, 575, 30) < 20)
  {
    if (shouldDisplayHelp)
    {
      shouldDisplayHelp = false;
    }
    else
    {
      shouldDisplayHelp = true;
    }
  }
}

// This will load the original image from the images folder. 
//A comment has been added that, when uncommented, load the image from the web and allow the program to be run anywhere as long as there is an internet connection.
void createOriginalImage()
{
  //solaire = loadImage("http://darksouls.wdfiles.com/local--files/npcs/solaire-of-astora-large.jpg");
  solaire = loadImage("images/solaire-of-astora-large.jpg");
  image(solaire, 0 , 0);
}

// This blurs the image depending on the effect multiplier
void blurImage()
{
  solaire.filter(BLUR, (actualEffectMultiplier));
  image(solaire, 0 , 0);
}

// This grayscales the image
void grayImage()
{
  solaire.filter(GRAY);
  image(solaire, 0 , 0);
}

// This dilates the image, which appears to increase the size of certain chunks of pixels
void dilateImage()
{
  solaire.filter(DILATE);
  image(solaire, 0 , 0);
}

// This is a self-made function that will switch 2 random 50x50 chunks of pixels
void switchBlocks()
{
  int[][] tempPixels1 = new int[50][50];
  int[][] tempPixels2 = new int[50][50];
  int randomXPosition1 = int(random(0, width - 50));
  int randomYPosition1 = int(random(0, height - 50));
  int randomXPosition2 = int(random(0, width - 50));
  int randomYPosition2 = int(random(0, height - 50));
  
  solaire.loadPixels();
  
  for (int i = 0; i < 50; i++)
  {
    for (int j = 0; j < 50; j++)
    {
      tempPixels1[i][j] = solaire.pixels[(j + randomYPosition1) * solaire.width + (i + randomXPosition1)];
    }
  }
  
  for (int i = 0; i < 50; i++)
  {
    for (int j = 0; j < 50; j++)
    {
      tempPixels2[i][j] = solaire.pixels[(j + randomYPosition2) * solaire.width + (i + randomXPosition2)];
    }
  }
  
  
  // replace
  for (int i = 0; i < 50; i++)
  {
    for (int j = 0; j < 50; j++)
    {
      solaire.pixels[(j + randomYPosition1) * solaire.width + (i + randomXPosition1)] = tempPixels2[i][j];
    }
  }
  
  for (int i = 0; i < 50; i++)
  {
    for (int j = 0; j < 50; j++)
    {
      solaire.pixels[(j + randomYPosition2) * solaire.width + (i + randomXPosition2)] = tempPixels1[i][j];
    }
  }
  
  solaire.updatePixels();
}

// This is a self-made function that will add some red to the current image. Odd things happen when the red overflows
void addRedColor()
{
  solaire.loadPixels();
  
  for (int i = 0; i < solaire.pixels.length; i++)
  {
    color tempColor = solaire.pixels[i];
    color filter = color(23, 0 ,0);
    
    
    tempColor = tempColor + filter;
    
    
    solaire.pixels[i] = tempColor;
  }
  
  solaire.updatePixels();
}

// This checks if the help needs to be displays and, if it is necessary, does so.
void displayHelp()
{
  if (shouldDisplayHelp)
  {
    text("r: Reset Image                      b: Blur Image", 50, height / 4);
    text("g: Gray Image                      d: Dilate Image", 50, (height / (4)) * 1.5);
    text("s: Switch Random Squares", 50, (height / (4)) * 2);
    text("z: Add Red Color", 50, (height / (4)) * 2.5);
  }
}