class Player
{
  boolean touchingGround;
  boolean isSpacePressed;
  boolean isSPressed;
  boolean atMaxSpeed;
  boolean canJump;
  float playerXPos;
  float playerYPos;
  float playerYSpeed;
  float playerMaxYSpeed;
  float playerWidth;
  float playerHeight;
  color playerColor;
  
  float gravity;
  
  Player()
  {
    this.playerWidth = 50;
    this.playerHeight = 75;
    this.playerXPos = 200 - (playerWidth / 2);
    this.playerYPos = ground.groundYPos - (playerHeight / 2);
    this.playerYSpeed = 0;
    this.playerMaxYSpeed = 11;
    this.playerColor = color(255);
    
    this.gravity = -.4;
  }
  
  void displayPlayer()
  {
    movePlayer();
    slamDown();
    applyGravity();

    
    pushMatrix();
    
      translate(playerXPos, playerYPos);
      fill(playerColor);
      ellipse(0, 0, playerWidth, playerHeight);
    
    popMatrix();
  }
  
  void movePlayer()
  {
    jump();
    playerYPos -= playerYSpeed;
  }
  
  void applyGravity()
  {
    checkIfTouchingGround();
    if (!touchingGround)
    {
      playerYSpeed += gravity;
    }
  }
  
  void checkIfTouchingGround()
  {
    if ((playerYPos + (playerHeight / 2)) >= ground.groundYPos)
    {
      touchingGround = true;
      playerYSpeed = 0;
      playerYPos = ground.groundYPos - (playerHeight / 2);
      canJump = true;
    }
    else
    {
      touchingGround = false;
    }
  }
  
  void jump()
  {
    if (playerYSpeed >= playerMaxYSpeed)
    {
      playerYSpeed = playerMaxYSpeed;
      atMaxSpeed = true;
    }
    
    if ((playerYSpeed == 0) && (touchingGround))
    {
      atMaxSpeed = false;
    }
    
    if (isSpacePressed && (!atMaxSpeed) && canJump)
    {
      touchingGround = false;
      playerYSpeed += 1.5;
    }
  } 
  
  void slamDown()
  {
    if (!touchingGround && isSPressed)
    {
      playerYSpeed = -35;
      //playerYPos = ground.groundYPos - (playerHeight / 2);
    }
  }
}