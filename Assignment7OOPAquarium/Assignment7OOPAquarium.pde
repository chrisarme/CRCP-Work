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
  size(1000, 600);
  
  aquariumBottomStart = height - aquariumBottomSize; 
  
  createAllObjects();
}

void draw()
{
  background(#0077be);
  drawAquariumBottom();
  
  drawAllObjects();
}

void createAllObjects()
{
  for (int i = 0; i < numberOfFish - 1; i++)
  {
    fish[i] = new Fish();
  }
  
  for (int i = 0; i < numberOfCrabs; i++)
  {
    crabs[i] = new Crab();
  }
}

void drawAllObjects()
{
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