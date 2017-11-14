
String playerName = "Hark Juun";

Character player1 = new Character(playerName);

float floatNumber = 0;

void setup()
{
  size(1000, 600);
  background(100);
  textAlign(LEFT, TOP);
  
  noStroke();
}

void draw()
{
  background(100);
  drawPlayerInfo();
  
  player1.displayCharacter();
}

void drawPlayerInfo()
{
  fill(200);
  
  rect(0, (height * .7), width, (height * .3));
  
  //divisors
  fill(100);
  rect((width * .25) - 1, (height * .7), 2, (height * .3));
  rect((width * .50) - 1, (height * .7), 2, (height * .3));
  rect((width * .75) - 1, (height * .7), 2, (height * .3));
  
  // enemys
  fill(255, 50, 50);
  ellipse(width / 2, 200 + (sin(floatNumber) * 15), 150, 250);
  
  // texts
  textSize(15);
  

  
  floatNumber += .05;
  
  if (floatNumber >= TWO_PI)
  {
    floatNumber = 0;
  }
}