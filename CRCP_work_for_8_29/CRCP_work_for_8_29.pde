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
strokeCap(SQUARE);
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
fill(55, 55, 55);

ellipse(548, 300, 275, 275);

// yellow left curve
int yLeRad1 = 307;
int yLeRad2 = 323;
noFill();
stroke(yellowColor);
strokeWeight(21);

arc(548, 300, 255, 255, radians(yLeRad1), radians(yLeRad2));

// grey top curves
int gTRad1 = 217;
int gTRad2 = 233;
noFill();
stroke(greyColor);
strokeWeight(22);

arc(548, 300, 253, 253, radians(gTRad1), radians(gTRad2));

// grey bottom curves
int gBRad1 = 127;
int gBRad2 = 143;

arc(548, 300, 253, 253, radians(gBRad1), radians(gBRad2));

// Most back red rectangle
noStroke();
fill(redColor);
rect(466, 190, 165, 28);

// Large grey rectangle
noStroke();
fill(greyColor);
rect(438, 218, 28, 165);

// Vertical pink rectangle
fill(pinkColor);
rect(438, 218, 220, 28);

// Pink left curve

int piLeRad1 = 203;
int piLeRad2 = 217;
noFill();
stroke(pinkColor);
strokeWeight(14);

arc(548, 300, 260, 260, radians(piLeRad1), radians(piLeRad2));

// Purple Vert Rectangle
noStroke();
fill(purpleColor);
rect(576, 175, 28, 168);

// Purple top curve
int pTRad1 = 282;
int pTRad2 = 294;
noFill();
stroke(purpleColor);
strokeWeight(20);

arc(548, 300, 255, 255, radians(pTRad1), radians(pTRad2));

// Horz blue rectangle
noStroke();
fill(blueColor);
rect(520, 246, 154, 28);

// blue right curve
int bRiRad1 = 337;
int bRiRad2 = 349;
noFill();
stroke(blueColor);
strokeWeight(21);

arc(548, 300, 255, 255, radians(bRiRad1), radians(bRiRad2));

// Blue small Horz Rectangle
noStroke();
fill(blueColor);
rect(520, 358, 56, 28);

// Large yellow rectangle
noStroke();
fill(yellowColor);
rect(492, 175, 28, 250);

// yellow large top curves
int yLTRad1 = 246;
int yLTRad2 = 259;
noFill();
stroke(yellowColor);
strokeWeight(20);

arc(548, 300, 255, 255, radians(yLTRad1), radians(yLTRad2));

// yellow large bottom curves
int yLBRad1 = 101;
int yLBRad2 = 114;

arc(548, 300, 255, 255, radians(yLBRad1), radians(yLBRad2));

// vert pink rectangle
noStroke();
fill(pinkColor);
rect(604, 274, 28, 134);

// pink bottom curves
int piBRad1 = 52;
int piBRad2 = 67;
noFill();
stroke(pinkColor);
strokeWeight(20);

arc(548, 300, 255, 255, radians(piBRad1), radians(piBRad2));

// horz bottom red rectangle
noStroke();
fill(redColor);
rect(424, 330, 220, 28);

// red left curve
int rLeRad1 = 155;
int rLeRad2 = 168;
noFill();
stroke(redColor);
strokeWeight(21);

arc(548, 300, 255, 255, radians(rLeRad1), radians(rLeRad2));

// Vert blue rectangle
noStroke();
fill(blueColor);
rect(466, 274, 26, 112);

// small horz grey rectangle
noStroke();
fill(greyColor);
rect(520, 386, 84, 28);

// very small horz purple rectangle
noStroke();
fill(purpleColor);
rect(632, 358, 23, 28);

// purple small right curve
int pSRiRad1 = 25;
int pSRiRad2 = 39;
noFill();
stroke(purpleColor);
strokeWeight(20);

arc(548, 300, 255, 255, radians(pSRiRad1), radians(pSRiRad2));

// vert yellow rectangle
noStroke();
fill(yellowColor);
rect(632, 274, 28, 84);

// Background cover
noStroke();
fill(backGroundColor);

rect(466, 218, 26, 56);

rect(466, 386, 26, 56);

rect(410, 246, 28, 84);

rect(520, 162, 56, 28);

rect(520, 414, 84, 28);

rect(576, 358, 56, 28);

rect(466, 330, 54, 28);

rect(660, 274, 28, 84);

rect(604, 218, 28, 56);



// Third area (bottom left)
noStroke();

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