// Chris Arme
// Assignment 8
// Canabalt

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
  
  // This is going to be changed!
  //obstacles.add(new Obstacles(0, 0));
  //obstacles.add(new Obstacles(1, 0));
  //obstacles.add(new Obstacles(2, 0));
  //obstacles.add(new Obstacles(3, 0));
}

void draw()
{
  background(100);
  ground.displayGround();
  
  for (int i = obstacles.size() - 1; i > -1; i--)
  {
    println(i);
    obstacles.get(i).displayObstacle(gameController.timerSinceLastCollision);
    if (obstacles.get(i).isObstacleOffScreen())
    {
      obstacles.remove(i);
    }
  }
  
  println(gameController.canObstacleSpawn);
  if (gameController.canObstacleSpawn)
  {
    if (int(random(0, 10000)) >= 9900)
    {
      obstacles.add(new Obstacles((gameController.timerSinceLastCollision)));
      gameController.timerSinceLastObstacleSpawn = 0;
      gameController.canObstacleSpawn = false;
    }
  }
  
  player.displayPlayer();
  
  gameController.masterGameControls();
  
  if (!gameController.canObstacleSpawn)
  {
    gameController.updateTimeSinceLastObstaclesSpawn();
    gameController.checkIfObstacleCanSpawn();
  }
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