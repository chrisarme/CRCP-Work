float playerXPos;
float playerYPos;
float playerXSpeed = 0;
float playerYSpeed = 0;
float playerRotation = 0;
float friction = .9;

Ship player;
Rocks rock;

boolean[] areKeysDown = new boolean[4];

// [0] = w
// [1] = a
// [2] = d
// [3] = space

void setup()
{
  size(1000, 600);
  rectMode(CENTER);
  smooth();
  //noStroke();
  
  player = new Ship();
  rock = new Rocks();
}

void draw()
{
  background(color(150));
  
  fill(255);
  player.masterShipFunction();
  checkBulletRockCollision();
  fill(100);
  rock.drawRocks();
}

void checkBulletRockCollision()
{
  for (int i = 0; i < player.bullets.size(); i++)
  {
    if (dist(player.bullets.get(i).bulletXPosition, player.bullets.get(i).bulletYPosition, rock.rockXPosition, rock.rockYPosition) <= rock.rockSize / 2)
    {
      rock = new Rocks();
      player.bullets.remove(i);
    }
  }
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