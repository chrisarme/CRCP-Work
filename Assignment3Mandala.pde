int x, y;
int crclPos1 = 0;
float crclPosBG = 15;
int radius1 = 110;
int radius1p5 = 75;
int radius2 = 25;
int crclRingRad1 = 150;
int crclRingRad = 175;
float ang1 = 0;
float ang2 = 0;
int rotSpd1 = 1;
int rotSpd2 = -2;
int rotSpd3 = -2;
float bgRotSpd = .1;

void setup()
{
  size(500, 500);
  // test fps
  //frameRate(2);
  
  x = width/2;
  y = height/2;
}

void draw()
{
  background(150, 150, 150);
  translate(x, y);
  
  fill(100, 100, 100);
  circleRingBG();
  
  fill(200, 0 ,0);
  drawFatStarShape();
  
  fill(0, 0, 200);
  drawStarShape();
  
  pushMatrix();
  fill(0, 200, 0);
  drawCircleRing1();
  popMatrix();
  

  // updateAngles();
  ang1 = ang1 + rotSpd1;
  ang2 = ang2 + rotSpd2;
  crclPos1 = crclPos1 + rotSpd3;
  crclPosBG = crclPosBG + bgRotSpd;
}

void drawFatStarShape()
{
  beginShape();
  for (int i = 0; i < 12; i++)
  {
    if (i % 2 == 0)
    {
      vertex(cos(radians(ang1 + (30 * i))) * radius2, sin(radians(ang1 + (30 * i))) * radius2);
    }
    else
    {
        vertex(cos(radians(ang1 + (30 * (i - .75)))) * radius1p5, sin(radians(ang1 + (30 * (i - .75)))) * radius1p5);
        vertex(cos(radians(ang1 + (30 * i))) * radius1, sin(radians(ang1 + (30 * i))) * radius1);
        vertex(cos(radians(ang1 + (30 * (i + .75)))) * radius1p5, sin(radians(ang1 + (30 * (i + .75)))) * radius1p5);
    }
  }
  endShape(CLOSE);  
}

void drawStarShape()
{
   beginShape();
  for (int i = 0; i < 20; i++)
  {
    if (i % 2 == 0)
    {
      vertex(cos(radians(ang2 + (18 * i))) * radius2 * .6, sin(radians(ang2 + (18 * i))) * radius2 * .6);
    }
    else
    {
        vertex(cos(radians(ang2 + (18 * i))) * radius1 * .6, sin(radians(ang2 + (18 * i))) * radius1 * .6);
    }
  }
  endShape(CLOSE); 
}

void drawCircleRing1()
{
  for (int i = 0; i < 6; i++)
  {
    ellipse(cos(radians(crclPos1 + (60 * i))) * crclRingRad1, sin(radians(crclPos1 + (60 * i))) * crclRingRad1, 60, 60);
  }
}

void circleRingBG()
{
  for (int i = 0; i < 12; i++)
  {
     ellipse(cos(radians(crclPosBG + (30 * i))) * crclRingRad, sin(radians(crclPosBG + (30 * i))) * crclRingRad, 95, 95);
  }
  fill(150, 150, 0);
  ellipse(0, 0, 375, 375);
}