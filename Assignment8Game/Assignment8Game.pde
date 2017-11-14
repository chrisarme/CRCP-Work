// Chris Arme
// Assignment 8
// Canabalt

Player player;
Ground ground;
Obstacles testObstacle;

void setup()
{
  smooth();
  frameRate(60);
  noStroke();
  background(100);
  size(800, 500);
  ground = new Ground();
  player = new Player();
  testObstacle = new Obstacles();
}

void draw()
{
  background(100);
  ground.displayGround(); 
  testObstacle.displayObstacle();
  player.displayPlayer();
}

void keyPressed()
{
  if ((key == ' '))
  {
    player.isSpacePressed = true;
  }
}

void keyReleased()
{
  if ((key == ' '))
  {
    player.isSpacePressed = false;
  }
}