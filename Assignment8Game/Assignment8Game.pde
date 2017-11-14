// Chris Arme
// Assignment 8
// Canabalt

Player player;
Ground ground;
Obstacles testObstacle;

void setup()
{
  noStroke();
  background(100);
  size(800, 500);
  player = new Player();
  ground = new Ground();
  testObstacle = new Obstacles();
}

void draw()
{
  background(100);
  ground.displayGround(); 
  testObstacle.displayObstacle();
}