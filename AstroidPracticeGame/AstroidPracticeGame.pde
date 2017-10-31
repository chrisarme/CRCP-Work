float playerXPos;
float playerYPos;
float playerXSpeed = 0;
float playerYSpeed = 0;
float playerRotation = 0;
float friction = .9;

boolean[] areKeysDown = new boolean[4];

// [0] = w
// [1] = a
// [2] = d
// [3] = space

void setup()
{
  size(1000, 600);
  rectMode(CENTER);
  playerXPos = (width / 2);
  playerYPos = (height / 2);
}

void draw()
{
  background(color(150));
  
  moveAndDrawPlayer();
}

void moveAndDrawPlayer()
{
  if (playerXSpeed >= 5)
  {
    playerXSpeed = 5;
  }
  
  if (playerYSpeed >= 5)
  {
    playerYSpeed = 5;
  }
  
  applyFriction();
  changeSpeed();
  
  playerXPos = playerXPos + playerXSpeed;
  playerYPos = playerYPos + playerYSpeed;
  
  pushMatrix();
  
    translate(playerXPos, playerYPos);
    rotate(playerRotation);
  
    rect(0, 0, 50, 50);
  
  popMatrix();
}

void changeSpeed()
{
  if (areKeysDown[0])
  {
    playerYSpeed -= .5;
  }
  
  if (areKeysDown[1])
  {
    playerRotation -= .05;
  }
  
  if (areKeysDown[2])
  {
    playerRotation += .05;
  }
  
  if (areKeysDown[3])
  {
    
  }
}

void applyFriction()
{
  playerXSpeed = playerXSpeed * friction;
  playerYSpeed = playerYSpeed * friction;
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