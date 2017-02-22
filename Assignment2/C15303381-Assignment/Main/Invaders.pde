//This tab has the code used for the invaders

class Invader
{
  
  void displayInvader()
  {
    //this displays the invader image in a grid pattern
    int[][] invader1 = new int[5][5];
    
    
    for(int i=0; i<=5; i++)
    {
      for(int j=0; j<=5; j++)
      {
        for(int a=10; a<=110; a=a+5)
        {
          for(int b=10; b<=40; b=b+5)
          {
            image(invader, a*10, b*10);
          }
        }
      }
    }   
  }
  
  
}