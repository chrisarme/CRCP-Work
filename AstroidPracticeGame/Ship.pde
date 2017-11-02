class Ship
{
  boolean recentlyShot;
  
  float playerXPos;
  float playerYPos;
  float playerXSpeed;
  float playerYSpeed;
  float playerRotation;
  float friction = .9;
  
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
    changeSpeed();
  
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

  void changeSpeed()
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
        //recentlyShot = true;
        Bullet newBullet = new Bullet(playerXPos + 15, playerYPos, playerRotation);
        newBullet.drawBullet();
        println("Did it!");
      }
    }
  }

  void applyFriction()
  {
    playerXSpeed = playerXSpeed * friction;
    playerYSpeed = playerYSpeed * friction;
  }
  
}