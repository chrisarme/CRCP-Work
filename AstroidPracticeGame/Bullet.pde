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
    bulletXPosition = shipTipXPosition;
    bulletYPosition = shipTipYPosition;
    bulletRotation = shipRotation;
    
    bulletSpeed = 10;
    bulletXSize = 10;
    bulletYSize = 4;
  }
  
  void drawBullet()
  {
    pushMatrix();

      translate(bulletXPosition, bulletYPosition);
      rotate(bulletRotation);
      
      rect(15 * cos(bulletRotation/180*PI), 12.5 * sin(bulletRotation/180*PI), bulletXSize, bulletYSize);
  
    popMatrix();
    
    moveBullet();
  }
  
  void moveBullet()
  {
    bulletXPosition = bulletXPosition + (bulletSpeed * cos(bulletRotation));
    bulletYPosition = bulletYPosition + (bulletSpeed * sin(bulletRotation));
  }
  
  void checkBulletBounds()
  {
    
  }
  
}