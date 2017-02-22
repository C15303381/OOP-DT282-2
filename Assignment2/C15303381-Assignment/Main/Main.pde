/* Code for the ship tab
Assignment 2 
OOP
Helen Murphy
27/1/17
*/


PImage invader;
PImage spaceship;
SpaceShip ship1;
Invader invader1;
boolean APressed = false, DPressed = false;


void setup()
{
 size(1200,700); 
 
 invader = loadImage("space-invader-red.png");
 invader.resize(70,40);
 
 spaceship = loadImage("Ship-green.png");
 spaceship.resize(60,40);
}  

/*
int shipX=width/2;
int shipY=height-100;
*/

void newGame()
{
  ship1 = new SpaceShip();
  invader1 = new Invader();
}

void draw()
{
  //shipX = width/2;
  //shipY = height-100;
  
  background(0);
  
  ship1.displayShip();
  invader1.displayInvader();
  moveShip1();
}

void moveShip1()
{
  if (APressed)
  {
    ship1.x -=20;
  }
  
  if (DPressed)
  {
    ship1.x +=20;
  }
}

void keyPressed()
{
  if (key == 'a')
  {
    APressed = true;
  }
  
  if (key == 'd')
  {
    DPressed = true;
  }
}