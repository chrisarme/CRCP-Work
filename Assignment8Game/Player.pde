class Player
{
  boolean touchingGround;
  boolean isSpacePressed;
  float playerXPos;
  float playerYPos;
  float playerYSpeed;
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
    this.playerColor = color(255);
    
    this.gravity = -.15;
  }
  
  void displayPlayer()
  {
    movePlayer();
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
    }
    else
    {
      touchingGround = false;
    }
  }
  
  void jump()
  {
    if ((touchingGround) && (isSpacePressed))
    {
      touchingGround = false;
      playerYSpeed += 10;
    }
  } 
}