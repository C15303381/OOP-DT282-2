//This is the code used for the spaceship


class SpaceShip
{
  float x, y;
  
  SpaceShip()
  {
    this.x = width/2;
    this.y = height-100;
  }
  
  void displayShip()
  {
    //this displays the image of the ship
    imageMode(CENTER);
    image(spaceship,this.x, this.y);
  }

  
}