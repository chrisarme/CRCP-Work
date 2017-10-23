// Chris Arme
// Assignment 5: Particle Engine with OOP
// Due Date: Oct 24

// Note: This has been slightly modified from the original to clean it up and add comments.

// Change me at will!
int particleAmount = 50;

Particle[] particles = new Particle[particleAmount];

// Global variable! VERY IMPORTANT
float colorNumber = 1;

void setup() {
  size(800, 500);
  background(125);
  noStroke();
  
  for(int i = 0; i < particleAmount; i++)
  {
    particles[i] = new Particle();
  }
}

void draw() 
{
  // Yes, I know the colors can be pretty terrible sometimes, but it is too fun
  changeBackgroundColor();

  for (int i = 0; i < particleAmount; i++)
  {
    particles[i].drawAndUpdateParticle();
  }
}

// This creates a rainbow effect for the background
void changeBackgroundColor()
{ 
  float R = 128+((sin((colorNumber*.8+0)*1.3)*128));
  float G = 128+((sin((colorNumber*.8+1)*1.3)*128));
  float B = 128+((sin((colorNumber*.8+2)*1.3)*128));
  
  background(R, G, B);
  
  colorNumber += .005;
  
  if (colorNumber >= 24)
  {
    colorNumber = 1;
  }
}