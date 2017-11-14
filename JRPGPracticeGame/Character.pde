class Character
{
  boolean characterTurn;
  
  String characterName;
  int characterMaxHealth;
  int characterCurrentHealth;
  int characterMaxMana;
  int characterCurrentMana;
  int characterType;
  ArrayList<Ability> abilities;
  
  Character(String charName)
  {
    this.characterTurn = true;
    this.characterName = charName;
    this.characterMaxHealth = (int(random(2, 5)) * 10);
    this.characterCurrentHealth = characterMaxHealth;
    this.characterMaxMana = (int(random(2, 5)) * 10);
    this.characterCurrentMana = characterMaxMana;
    this.characterType = 0;
    //ArrayList<Ability> abilities;
  }
  
  void displayCharacter()
  {
    // portrait
    fill(100, 80, 100);
    rect((width * .125), (height * .74), (width * .10), (height * .2225));
    
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
      strokeWeight(7);
      stroke(#FFD700);
      fill(0, 0, 0, 0);
      rect(100, 100, 100, 50, 18, 18, 18, 18);
      noStroke();
      
    }
  }
  
}