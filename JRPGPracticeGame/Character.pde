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
    
    this.characterNameXPos = (width * .06) + (width / 2 * characterNumber);
    this.characterNameYPos = (height * .70);
    this.characterHealthXPos = (width * .01) + (width / 2 * characterNumber);
    this.characterHealthYPos = (height * .74);
    this.characterManaXPos = (width * .01) + (width / 2 * characterNumber);
    this.characterManaYPos = (height * .78);
    this.characterPortraitXPos = (width * .18) + (width / 2 * characterNumber);
    this.characterPortraitYPos = (height * .85);
    
    //ArrayList<Ability> abilities;
  }
  
  void displayCharacter()
  {
    // portrait
    fill(100, 80, 100);
    rect(characterPortraitXPos, characterPortraitYPos, (width * .10), (height * .2225));
    
    fill(0);
    text("Name: " + characterName, characterNameXPos, characterNameYPos);
  
    fill(255, 100, 100);
    text("Health: " + characterCurrentHealth + "/" + characterMaxHealth, characterHealthXPos, characterHealthYPos);
    
    fill(100, 100, 255);
    text("Mana:   " + characterCurrentMana + "/" + characterMaxMana, characterManaXPos, characterManaYPos);
    isCharacterTurn();
  }
  
  void isCharacterTurn()
  {
    if (characterTurn)
    {
      strokeWeight(3);
      stroke(#FFD700);
      fill(0, 0, 0, 0);
      rect(characterNameXPos + 1, characterNameYPos + 33, 115, 26, 8, 8, 8, 8);

      noStroke();
      
    }
  }
  
}