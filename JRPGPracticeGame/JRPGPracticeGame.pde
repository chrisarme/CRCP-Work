
String playerName = "Hark Juun";
int playerHealth = 20;
int playerMaxHealth = 25;
int playerMana = 20;
int playerMaxMana = 25;

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
  
  // portrait
  fill(100, 80, 100);
  rect((width * .125), (height * .74), (width * .10), (height * .2225));
  
  // enemys
  fill(255, 50, 50);
  ellipse(width / 2, 200 + (sin(floatNumber) * 15), 150, 250);
  
  // texts
  textSize(15);
  
  fill(0);
  text("Name: " + playerName, (width * .06), (height * .70));
  
  fill(255, 100, 100);
  text("Health: " + playerHealth + "/" + playerMaxHealth, (width * .01), (height * .74));
  
  fill(100, 100, 255);
  text("Mana:   " + playerMana + "/" + playerMaxMana, (width * .01), (height * .78));
  
  floatNumber += .05;
  
  if (floatNumber >= TWO_PI)
  {
    floatNumber = 0;
  }
}