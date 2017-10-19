class Particle
{
  boolean particleShrinking;
  float particleX;
  float particleY;
  float particleXSpeed;
  float particleYSpeed;
  float particleSize;
  float particleRadius;
  float particleDecayRate;
  float[] particleColor = new float[4]; // 0 = R, 1 = G, 2 = B, 3 = A 
  
  // static variables
  float gravity = -.25;
  float dampening = .75;
  float friction = .75;
  
  // Default initializer
  Particle()
  {
    particleX = int(random(50, width - 50));
    particleY = int(random(50, height - 50));
    particleXSpeed = random(30) - 15;
    particleYSpeed = random(30) - 15;
    particleSize = int(random(20, 40));
    particleRadius = random(8);
    particleDecayRate = random(1);
    particleColor[0] = int(random(127));
    particleColor[1] = int(random(127));
    particleColor[2] = int(random(127));
    particleColor[3] = 255;
  }
  
  // If you wanted to specify the beginning particle information, this is where you would do it. I don't need it, but it is good to have a backup plan
  Particle(float x, float y, float xSpeed, float ySpeed, float size, float radius, float decayRate, float[] c)
  {
    particleX = x;
    particleY = y;
    particleXSpeed = xSpeed;
    particleYSpeed = ySpeed;
    particleSize = size;
    particleRadius = radius;
    particleDecayRate = decayRate;
    particleColor = c;
  }
  
  // This will create new particles when the particles are "dead" (invisible, not moving)
  void createNewParticle()
  {
    boolean needToCreate = checkParticleDeath();
  
    if (needToCreate == true)
    {
      particleX = int(random(50, width - 50));
      particleY = int(random(50, height - 50));
      particleSize = int(random(20, 40));
      particleXSpeed = random(30) - 15;
      particleYSpeed = random(30) - 15;
      particleRadius = random(8);
      particleColor[0] = int(random(127));
      particleColor[1] = int(random(127));
      particleColor[2] = int(random(127));
      particleColor[3] = 255;
    
      particleDecayRate = random(1);
      particleShrinking = false;
    }
  }
  
  // This is the master function. This makes the particle move, bounce, apply forces, change colors, everything
  void drawAndUpdateParticle()
  {
    createNewParticle();
    checkParticleMovementAndShrink();

    //change alpha
    particleColor[3] = particleColor[3] - particleDecayRate;
  
    //change color
    changeColor();
  
    rect(particleX, particleY, particleSize, particleSize, particleRadius);

    if (particleShrinking == false)
    {
      particleYSpeed = particleYSpeed + gravity;
    }

    particleX = particleX + particleXSpeed;
    particleY = particleY + particleYSpeed;
  
    checkEdges();
    applyForces();
  }
 
  // If the particle is very small or invisible, this will signal that a new particle needs to be created 
  boolean checkParticleDeath()
  {
    if (((particleSize) <= 2) || (particleColor[3] <= 0)) 
    { 
      return true;
    }
    else
    {
      return false;
    }
  }
  
  // This reverses the speeds of the particle depending on which edge of the window it collides with
  void checkEdges()
  {
    // added + particleSize[element] for squares
    if ((particleX <= 0) || (particleX + particleSize >= width)) {
      particleXSpeed = particleXSpeed * -1;
      if (particleX <= 0)
      {
        particleX = 0;
      }
      else if (particleX + particleSize >= width)
      {
        particleX = width - particleSize;
      }
    }
    if (particleY + particleSize >= height) 
    {
      particleY = height - particleSize;
      particleYSpeed = particleYSpeed * -1;
    }
  }

  // This applies forces (friction, dampening, reversing ySpeed) when the particle collides with the top of the window
  void applyForces()
  {
    if ((particleY <= (0)) && (particleShrinking == false))
    {      
      particleY = 0;
      particleYSpeed = particleYSpeed * -1;
    
      // apply forces from ground
      particleXSpeed = particleXSpeed * friction;
      particleYSpeed = particleYSpeed * dampening;
    }
  }
  
  // If the particle is slowing moving towards the top of the screen, this will set the particleShrinking = true and start shrinking the particle
  void checkParticleMovementAndShrink()
  {
    if ((((abs(particleYSpeed) <= 1) && (abs(particleXSpeed) <= 1)) && (particleY <= ((10))))) 
    { 
      if(particleY <= 2)
      {
        particleY = 0;
        particleYSpeed = 0;
      }
      else
      {
        particleYSpeed = -1;
        particleShrinking = true;
      }
    
      particleX = particleX + 1;
      particleSize = particleSize - 2;
    }
  }
  
  // This create a different rainbow effect for each particle
  void changeColor()
  {
    float R = particleColor[0]+((sin((colorNumber*3+0)*1.3)*128) * (particleColor[0] / 127));
    float G = particleColor[1]+((sin((colorNumber*3+1)*1.3)*128) * (particleColor[0] / 127));
    float B = particleColor[2]+((sin((colorNumber*3+2)*1.3)*128) * (particleColor[0] / 127));
    float A = particleColor[3];
  
    fill(R, G, B, A);
  } 
}