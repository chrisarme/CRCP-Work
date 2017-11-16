// Chris Arme
// Assignment 8
// Canabalt

//int amountOfObstacles = 2;

Player player;
Ground ground;
ArrayList<Obstacles> obstacles = new ArrayList<Obstacles>();
GameControl gameController;

void setup()
{
  smooth();
  frameRate(60);
  noStroke();
  background(100);
  size(800, 500);
  ground = new Ground();
  player = new Player();
  
  gameController = new GameControl();
  
  obstacles.add(new Obstacles(0));
  obstacles.add(new Obstacles(1));
  obstacles.add(new Obstacles(3));
}

void draw()
{
  background(100);
  ground.displayGround();
  
  for (int i = 0; i < obstacles.size(); i++)
  {
    obstacles.get(i).displayObstacle();
    if (gameController.createObstacles(obstacles.get(i).isObstacleOffScreen()))
    {
      obstacles.remove(i);
    }
  }
  if (gameController.createObstacles(false))
  {
    obstacles.add(new Obstacles(0));
  }
  
  player.displayPlayer();
  
  gameController.checkIfGameOver();
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