class Bullet
{
  float bulletSpeed;
  float bulletXPosition;
  float bulletYPosition;
  float bulletXSize;
  float bulletYSize;
  float bulletRotation;
  
  Bullet(float shipTipXPosition, float shipTipYPosition, float shipRotation)
  {
    bulletXPosition = shipTipXPosition + 15;
    bulletYPosition = shipTipYPosition;
    bulletRotation = shipRotation;
    
    bulletSpeed = 5;
    bulletXSize = 10;
    bulletYSize = 3;
  }
  
  void drawBullet()
  {
    pushMatrix();

      translate(bulletXPosition, bulletYPosition);
      rotate(bulletRotation);
  
      rect(sin(playerRotation), cos(playerRotation), bulletXSize, bulletYSize);
  
    popMatrix();
  }
  
  void checkBulletBounds()
  {
    
  }
  
}