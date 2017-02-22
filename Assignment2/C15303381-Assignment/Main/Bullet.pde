//this tab has the code used for the bullet

class Bullet 
{
  float x;
  float y;
  float speed;
  
  Bullet()
  {
    this.x = ship1.x;
    this.y = ship1.y;
    this.speed = 50;
  }
  
  void displayBullet()
  {
    //This code displays the bullet starting at the ship
    fill(255);
    rect(this.x, this.y, 10, 50);
  }
  
  void moveBullet()
  {
    this.y += this.speed;
  }
  
}

  