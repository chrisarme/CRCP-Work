// Setup
color backGroundColor = color(12, 12, 14);
color blueColor = color(60, 117, 196);
color redColor = color(220, 52, 51);
color yellowColor = color(229, 191, 18);
color purpleColor = color(59, 38, 105);
color pinkColor = color(218, 116, 130);
color greyColor = color(63, 73, 85);

size(780, 776);
background(backGroundColor);
noStroke();
// Creating base circles for image

// First area

// Larger pink pie slice
int pLRad1 = 270;
int pLRad2 = 300;

fill(pinkColor);
arc(232, 300, 275, 275, radians(pLRad1), radians(pLRad2), PIE); 

// Larger purple pie slice
int piLRad1 = 240;
int piLRad2 = 270;

fill(purpleColor);
arc(232, 300, 275, 275, radians(piLRad1), radians(piLRad2), PIE); 

// Larger yellow pie slice
int yLRad1 = 210;
int yLRad2 = 240;

fill(yellowColor);
arc(232, 300, 275, 275, radians(yLRad1), radians(yLRad2), PIE); 

// Larger red pie slice
int rLRad1 = 180;
int rLRad2 = 210;

fill(redColor);
arc(232, 300, 275, 275, radians(rLRad1), radians(rLRad2), PIE); 

// Larger blue pie slice
int bLRad1 = 150;
int bLRad2 = 180;

fill(blueColor);
arc(232, 300, 275, 275, radians(bLRad1), radians(bLRad2), PIE);

//  Grey pie slice
int gRad1 = 90;
int gRad2 = 150;

fill(greyColor);
arc(232, 300, 275, 275, radians(gRad1), radians(gRad2), PIE); 

//  Small yellow pie slice
int ySRad1 = 75;
int ySRad2 = 90;

fill(yellowColor);
arc(232, 300, 275, 275, radians(ySRad1), radians(ySRad2), PIE); 

//  Small blue pie slice
int bSRad1 = 60;
int bSRad2 = 75;

fill(blueColor);
arc(232, 300, 275, 275, radians(bSRad1), radians(bSRad2), PIE); 

//  Small pink pie slice
int piSRad1 = 45;
int piSRad2 = 60;

fill(pinkColor);
arc(232, 300, 275, 275, radians(piSRad1), radians(piSRad2), PIE); 

//  Small red pie slice
int rSRad1 = 30;
int rSRad2 = 45;

fill(redColor);
arc(232, 300, 275, 275, radians(rSRad1), radians(rSRad2), PIE); 

//  Small purple pie slice
int pSRad1 = 15;
int pSRad2 = 30;

fill(purpleColor);
arc(232, 300, 275, 275, radians(pSRad1), radians(pSRad2), PIE); 

// Background rect

fill(backGroundColor);
rect(232, 300, 150, 40);



// Second area
fill(255, 255, 255);

ellipse(548, 300, 275, 275);


// Third area (bottom left)

// Blue half circle
fill(blueColor);
arc(232, 610, 275, 275, PI+QUARTER_PI, TWO_PI+QUARTER_PI, CLOSE);

// Red half circle
fill(redColor);
arc(232, 610, 220, 220, PI+HALF_PI, TWO_PI+HALF_PI, CLOSE);

// Yellow half circle
fill(yellowColor);
arc(232, 610, 164, 164, TWO_PI, TWO_PI+PI, CLOSE);

// Purple half circle
int pRad1 = 330;
int pRad2 = 510;

fill(purpleColor);
arc(232, 610, 108, 108, radians(pRad1), radians(pRad2), CLOSE);


// Fourth area (bottom right)
fill(255, 255, 255);

// Blue half circle
fill(blueColor);
arc(548, 610, 275, 275, PI+QUARTER_PI, TWO_PI+QUARTER_PI, CLOSE);

// Pink half circle
int piRad1 = 300;
int piRad2 = 480;

fill(pinkColor);
arc(548, 610, 220, 220, radians(piRad1), radians(piRad2), CLOSE);

// Yellow half circle
fill(yellowColor);
arc(548, 610, 220, 220, PI, TWO_PI, CLOSE);

// Grey half circle

fill(greyColor);
arc(548, 610, 164, 164, 0, PI, CLOSE);

// Blue partial circle
int bRad1 = 290;
int bRad2 = 360;

fill(blueColor);
arc(548, 610, 164, 164, radians(bRad1), radians(bRad2), PIE);

// Red half circle
int rRad1 = 120;
int rRad2 = 300;

fill(redColor);
arc(548, 610, 164, 164, radians(rRad1), radians(rRad2), CLOSE);

// Grey circle

fill(greyColor);
ellipse(548, 610, 108, 108);

// Purple half circle

fill(purpleColor);
arc(548, 610, 108, 108, PI+HALF_PI, TWO_PI+HALF_PI, CLOSE);

// Mini Grey circle

fill(greyColor);
ellipse(548, 610, 52, 52);