float playerXPos;
float playerYPos;
float playerXSpeed = 0;
float playerYSpeed = 0;
float playerRotation = 0;
float friction = .9;

Ship player;

boolean[] areKeysDown = new boolean[4];

// [0] = w
// [1] = a
// [2] = d
// [3] = space

void setup()
{
  size(1000, 600);
  rectMode(CENTER);
  //noStroke();
  
  player = new Ship();
}

void draw()
{
  background(color(150));
  
  player.masterShipFunction();
}

void keyPressed()
{
  if (key == 'w')
  {
    areKeysDown[0] = true;
  }
  
  if (key == 'a')
  {
    areKeysDown[1] = true;
  }
  
  if (key == 'd')
  {
    areKeysDown[2] = true;
  }
  
  if (key == ' ')
  {
    areKeysDown[3] = true;
  }
}

void keyReleased()
{
  if (key == 'w')
  {
    areKeysDown[0] = false;
  }
  
  if (key == 'a')
  {
    areKeysDown[1] = false;
  }
  
  if (key == 'd')
  {
    areKeysDown[2] = false;
  }
  
  if (key == ' ')
  {
    areKeysDown[3] = false;
  }
}