// Chris Arme
// Assignment 8
// Canabalt

import ddf.minim.*;

Minim soundPlayer;

Player player;
Ground ground;
ArrayList<Obstacles> obstacles = new ArrayList<Obstacles>();
GameControl gameController;
StartScreen startScreen;
GameOverScreen gameOverScreen;

void setup()
{
  smooth();
  textAlign(CENTER);
  frameRate(60);
  noStroke();
  background(100);
  size(800, 500);
  
  soundPlayer = new Minim(this);
  
  ground = new Ground();
  player = new Player();
  
  gameController = new GameControl();
  startScreen = new StartScreen();
  gameOverScreen = new GameOverScreen();
  
  
}

void draw()
{
  if (gameController.gameScreen == 1)
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
      if (int(random(0, 100)) >= 98)
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
  else if (gameController.gameScreen == 2)
  {
    gameOverScreen.drawGameOverScreen();
  }
  else
  {
    startScreen.drawStartScreen();
  }
}

void keyPressed()
{ 
  switch(gameController.gameScreen)
  {
    // Start screen, or something is terribly wrong
    case 0: 
    default:
      if (key == ' ' || keyCode == ENTER)
      {
        startScreen.doAppropriateOption();
      }
      
      if (keyCode == LEFT || key == 'a')
      {
        startScreen.optionSelected = 0;
      }
      else if (keyCode == RIGHT || key == 'd')
      {
        startScreen.optionSelected = 1;
      }
      
      break;
    case 1:
      if ((key == ' '))
      {
        player.isSpacePressed = true;
      }
    
      if (key == 's')
      {
        player.isSPressed = true;
      }
      
      if (keyCode == ESC)
      {
        gameController.gameScreen = 0;
      }
      
      break;
      
    case 2: 
      if (key == ' ' || keyCode == ENTER)
      {
        gameOverScreen.doAppropriateOption();
      }
      
      if (keyCode == LEFT || key == 'a')
      {
        gameOverScreen.optionSelected = 0;
      }
      else if (keyCode == RIGHT || key == 'd')
      {
        gameOverScreen.optionSelected = 1;
      }
      
      break;
  }
}

void keyReleased()
{
    switch(gameController.gameScreen)
  {
    // Start screen, or something is terribly wrong
    case 0: 
    default:
      break;
    
    case 1:
      if ((key == ' '))
      {
        player.isSpacePressed = false;
        player.canJump = false;
      }
      
        if (key == 's')
      {
        player.isSPressed = false;
      }
      
      break;
  }
}