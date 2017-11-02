class Ship
{
  boolean recentlyShot = false;
  float shotTimer;
  
  float playerXPos;
  float playerYPos;
  float playerXSpeed;
  float playerYSpeed;
  float playerRotation;
  float friction = .9;
  
  int bulletCount;
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  PShape ship;
  
  Ship()
  {
    recentlyShot = false;
    
    playerXPos = (width / 2);
    playerYPos = (height / 2);
    playerXSpeed = 0;
    playerYSpeed = 0;
    playerRotation = 0;
    
    ship = createShape();
    ship.beginShape();
    ship.vertex(15, 0);
    ship.vertex(-15, 12.5);
    ship.vertex(-15/2, 0);
    ship.vertex(-15, -12.5);
    ship.endShape(CLOSE);
  }
  
  // I really shouldn't need this, but just in case...
  Ship(float shipXPos, float shipYPos, float shipXSpeed, float shipYSpeed, float shipRotation, float shipFriction, PShape shipShape, boolean shipRecentlyShot)
  {
    playerXPos = shipXPos;
    playerYPos = shipYPos;
    playerXSpeed = shipXSpeed;
    playerYSpeed = shipYSpeed;
    playerRotation = shipRotation;
    friction = shipFriction;
    
    ship = shipShape;
    
    recentlyShot = shipRecentlyShot;
  }
  
  void masterShipFunction()
  { 
    playerXSpeed = constrain(playerXSpeed, 0, 5);
    playerYSpeed = constrain(playerYSpeed, 0, 5);

    applyFriction();
    controls();
    checkShipBoundries();
    shootBullets();
  
    float rotationXDirection = cos(playerRotation);
    float rotationYDirection = sin(playerRotation);
  
    playerXPos = playerXPos + (playerXSpeed * rotationXDirection);
    playerYPos = playerYPos + (playerYSpeed * rotationYDirection);
  
    pushMatrix();

      translate(playerXPos, playerYPos);
      rotate(playerRotation);
  
      shape(ship, 0, 0);
  
    popMatrix();
  }

  void controls()
  {
    if (areKeysDown[0])
    {
      playerXSpeed += .5;
      playerYSpeed += .5;
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
      if (recentlyShot == false)
      {
        bullets.add(new Bullet(playerXPos, playerYPos, playerRotation));
        recentlyShot = true;
        shotTimer = 0;
      }
    }
  }
  
  void shootBullets()
  { 
    for (int i = 0; i < bullets.size(); i++)
    {
      Bullet bullet = bullets.get(i);
      bullet.drawBullet();
      checkBulletBoundries(i);
    }
    
    if (recentlyShot)
    {
      shotTimer++;
      
      if (shotTimer == 30)
      {
        recentlyShot = false;
      }
    }
  }

  void applyFriction()
  {
    playerXSpeed = playerXSpeed * friction;
    playerYSpeed = playerYSpeed * friction;
  }
  
  void checkBulletBoundries(int num)
  {
    if ((bullets.get(num).bulletXPosition > width || bullets.get(num).bulletXPosition < 0) || (bullets.get(num).bulletYPosition > height || bullets.get(num).bulletYPosition < 0))
    {
      bullets.remove(num);
    }
  }
  
  void checkShipBoundries()
  {
    if (playerXPos + 15 >= width)
    {
      playerXPos = width - 15;
      //playerRotation = playerRotation + radians(180);
    }
    
    if (playerXPos - 15 <= 0)
    {
      playerXPos = 15;
      //playerRotation = playerRotation + radians(180);
    }
    
    if (playerYPos + 12.5 >= height)
    {
      playerYPos = height - 12.5;
      //playerRotation = playerRotation + radians(180);
    }
    
    if (playerYPos - 12.5 <= 0)
    {
      playerYPos = 12.5;
      //playerRotation = playerRotation + radians(180);
    }
  }
}