float aquariumBottomSize = 25;
float aquariumBottomStart;
int numberOfFish = int(random(5, 50));
int numberOfCrabs = int(random(3, 10));
Fish[] fish = new Fish[numberOfFish];
Crab[] crabs = new Crab[numberOfCrabs];

void setup()
{
  noStroke();
  imageMode(CENTER);
  background(#0077be);
  size(1000, 800);
  
  aquariumBottomStart = height - aquariumBottomSize;
  
  // this is so small I didn't think that it needed it's own function
  for (int i = 0; i < numberOfFish - 1; i++)
  {
    fish[i] = new Fish();
  }
  
  for (int i = 0; i < numberOfCrabs; i++)
  {
    crabs[i] = new Crab();
  }
  
}

void draw()
{
  background(#0077be);
  drawAquariumBottom();
  
  // this is so small I didn't think that it needed it's own function
  for (int i = 0; i < numberOfFish - 1; i++)
  {
    fish[i].drawFish();
  }
  
    for (int i = 0; i < numberOfCrabs; i++)
  {
    crabs[i].drawCrab();
  }
}

void drawAquariumBottom()
{
  fill(25, 75, 25);
  rect(0, aquariumBottomStart, width, aquariumBottomSize);
}