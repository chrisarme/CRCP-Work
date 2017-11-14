// Chris Arme
// Assignment 8
// Canabalt

int amountOfObstacles = 2;

Player player;
Ground ground;
Obstacles[] testObstacle = new Obstacles[amountOfObstacles];

void setup()
{
  smooth();
  frameRate(60);
  noStroke();
  background(100);
  size(800, 500);
  ground = new Ground();
  player = new Player();
  for (int i = 0; i < amountOfObstacles; i++)
  {
    testObstacle[i] = new Obstacles(i);
  }
}

void draw()
{
  background(100);
  ground.displayGround(); 
  for (int i = 0; i < amountOfObstacles; i++)
  {
    testObstacle[i].displayObstacle();
  }
  player.displayPlayer();
}

void keyPressed()
{
  if ((key == ' '))
  {
    player.isSpacePressed = true;
  }
  
  if (key == 's')
  {
    player.isSPressed = true;
  }
}

void keyReleased()
{
  if ((key == ' '))
  {
    player.isSpacePressed = false;
    player.canJump = false;
  }
  
    if (key == 's')
  {
    player.isSPressed = false;
  }
}