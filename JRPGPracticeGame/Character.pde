class Character
{
  boolean characterTurn;
  
  String characterName;
  int characterNumber;
  int characterMaxHealth;
  int characterCurrentHealth;
  int characterMaxMana;
  int characterCurrentMana;
  int characterType;
  
  float characterNameXPos;
  float characterNameYPos;
  float characterHealthXPos;
  float characterHealthYPos;
  float characterManaXPos;
  float characterManaYPos;
  float characterPortraitXPos;
  float characterPortraitYPos;
 
  ArrayList<Ability> abilities;
  
  Character(String charName, int charNum)
  {
    this.characterTurn = true;
    
    this.characterName = charName;
    this.characterNumber = charNum;
    this.characterMaxHealth = (int(random(2, 5)) * 10);
    this.characterCurrentHealth = characterMaxHealth;
    this.characterMaxMana = (int(random(2, 5)) * 10);
    this.characterCurrentMana = characterMaxMana;
    this.characterType = 0;
    
    this.characterNameXPos = (width * .06);
    this.characterNameYPos = (height * .70);
    this.characterHealthXPos = (width * .01) + (width / 2 * characterNumber);
    this.characterHealthYPos = (height * .74);
    this.characterManaXPos = (width * .01) + (width / 2 * characterNumber);
    this.characterManaYPos = (height * .78);
    
    //ArrayList<Ability> abilities;
  }
  
  void displayCharacter()
  {
    // portrait
    fill(100, 80, 100);
    rect((width * .18), (height * .85), (width * .10), (height * .2225));
    
    fill(0);
    text("Name: " + characterName, (width * .06), (height * .70));
  
    fill(255, 100, 100);
    text("Health: " + characterCurrentHealth + "/" + characterMaxHealth, (width * .01), (height * .74));
    
    fill(100, 100, 255);
    text("Mana:   " + characterCurrentMana + "/" + characterMaxMana, (width * .01), (height * .78));
    isCharacterTurn();
  }
  
  void isCharacterTurn()
  {
    if (characterTurn)
    {
      strokeWeight(3);
      stroke(#FFD700);
      fill(0, 0, 0, 0);
      
      pushMatrix();
     
        rect((width * .06), 100, 100, 50, 18, 18, 18, 18);
        
      popMatrix();
      
      noStroke();
      
    }
  }
  
}