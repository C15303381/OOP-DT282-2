/*Object Oriented Programming Assignment
A Sci-fi HUD of a exoskeleton Armor to be used in space or on another planet
Designed by myself
Helen Murphy
C15303381
11/11/16
*/
/*
29/11/16
Couldn't get the square around the weapons to go away after another weapon had been
selected. Also couldn't get the weapon names to dissapear after you're finished with
the weapons tab.

Unsure why but the arcs aren't decreasing. Don't know how to fix that.

Had different file for weapons tab but it wasn't working so put it into this main 
file to get it to work

Quite unhappy with this as most of the things won't work, starting again i would do
something completely different
*/

//declaring image for background
PImage image;

void setup()
{
  size(1200,700);
  halfW = width/2;
  halfH = height/2;
  image = loadImage("7jhQP5.jpg");
  image.resize(1200,700);
  background(image);
}

int halfW, halfH;

//variables for counting down with fram count
float counter1 = 100;
float counter2 = 100;
float counter3 = 100;
float counter4 = 100;

//variables for mapping
float oxygen;
float shield;
float power;
float health;

//boolean for heal button
boolean overBox = false;

//Booleans to crete Wepons tab
boolean over = false;
boolean pistol = false;
boolean shotgun = false;
  
void draw()
{
  
  //timer using frame count
  if(frameCount%30==0)
    {
      counter1 --;
      counter2 --;
      counter3 --;
      counter4 --;
    }
  
  
  //mapping for the end of the arc to allow a decrease over time
  oxygen = map(counter1,0,100,HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  shield = map(counter2,0,100,HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  power = map(counter3,0,100,HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  health = map(counter4,0,100,HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  
  
  //Oxygen Arc
  noFill();
  stroke(66,134,244);
  strokeWeight(5);
  arc(width/10,(height/10)*8.2,200,200, HALF_PI+QUARTER_PI, oxygen);
  
  //Shield Arc
  noFill();
  stroke(66,134,244);
  strokeWeight(3);
  arc((width/10)*2.7,(height/10)*8.6,150,150, HALF_PI+QUARTER_PI, shield);
  
  //Health Arc
  noFill();
  stroke(66,134,244);
  strokeWeight(5);
  arc((width/10)*9,(height/10)*8.2,200,200, HALF_PI+QUARTER_PI, health);
  
  //Power Arc
  noFill();
  stroke(66,134,244);
  strokeWeight(3);
  arc((width/10)*7.3,(height/10)*8.6,150,150, HALF_PI+QUARTER_PI, power);
  
  
  //Crosshairs
  stroke(0);
  strokeWeight(0.5);
  line(halfW,halfH - 40,halfW,halfH + 40);
  line(halfW - 40,halfH,halfW + 40,halfH);
 
 
  //Heal Button
  noFill();
  stroke(200,0,0);
  strokeWeight(2);
  rect((width/10)*9.5,(height/10)*6,50,50);
  
  fill(200,0,0);
  rect((width/10)*9.5,(height/10)*6.3,50,10);
  rect((width/10)*9.67,(height/10)*6,10,50);
  
  
  
  //setting up text for meters
  fill(255);
  PFont destine;
  PFont arial;
  destine = loadFont("ARDESTINE-30.vlw");
  arial = loadFont("ArialNarrow-12.vlw");
  
  
  //Oxygen arc text
  textAlign(CENTER,CENTER);
  textSize(30);
  textFont(destine);
  text("Oxygen", width/10, (height/10)*8.2);
  
  textAlign(CENTER,CENTER);
  textSize(12);
  textFont(arial);
  text("0",35, 655);
  
  textAlign(CENTER,CENTER);
  textSize(12);
  textFont(arial);
  text("100",210,655);
  
  //Sheild arc text
  textAlign(CENTER,CENTER);
  textSize(24);
  textFont(destine);
  text("Sheild", (width/10)*2.7, (height/10)*8.6);
  
  textAlign(CENTER,CENTER);
  textSize(10);
  textFont(arial);
  text("0",260,665);
  
  textAlign(CENTER,CENTER);
  textSize(10);
  textFont(arial);
  text("100",390,665);
  
  //Power arc text
  textAlign(CENTER,CENTER);
  textSize(24);
  textFont(destine);
  text("Power", (width/10)*7.3,(height/10)*8.6);
  
  textAlign(CENTER,CENTER);
  textSize(10);
  textFont(arial);
  text("0",810,665);
  
  textAlign(CENTER,CENTER);
  textSize(10);
  textFont(arial);
  text("100",940,665);
  
  //Health arc text
  textAlign(CENTER,CENTER);
  textSize(30);
  textFont(destine);
  text("Health", (width/10)*9, (height/10)*8.2);
  
  textAlign(CENTER,CENTER);
  textSize(12);
  textFont(arial);
  text("0",995,655);
  
  textAlign(CENTER,CENTER);
  textSize(12);
  textFont(arial);
  text("100",1170,655);
  
  
  
  //checks if mouse is over the heal button
  if (mouseX > (width/10)*9.5 && mouseX < ((width/10)*9.5)+50 && 
      mouseY > (height/10)*6 && mouseY < ((height/10)*6)+50)
  {
    overBox = true;  
  } 
  else 
  {
    overBox = false;
  }
  
  //the weapons tab thats onscreen
  textAlign(CENTER,CENTER);
  textSize(20);
  text("Weapons", 85, 30);
  
  noFill();
  stroke(255);
  strokeWeight(4);
  rect(10,0,150,70);
  
  //Detects if mouse is over Weapons
  if (mouseX > 10 && mouseX < 150 && 
      mouseY > 0 && mouseY < 70)
  {
    over = true;  
  } 
  else 
  {
    over = false;
  }
  
  //Detects if mouse is over pistol
  if (mouseX > 50 && mouseX < 120 && 
      mouseY > 115 && mouseY < 150)
  {
    pistol = true;  
  } 
  else 
  {
    pistol = false;
  }
  
  //detects if mouse is over shotgun
  if (mouseX > 50 && mouseX < 120 && 
      mouseY > 190 && mouseY < 225)
  {
    shotgun = true;  
  } 
  else 
  {
    shotgun = false;
  }
  
}

void mouseClicked() 
{
  //brings counter4/health back to 100
  if(overBox == true) 
  { 
    counter4 = 100;
  } 
  
  
  //creates weapons tab when clicked on
  //couldnt create/find drawings of guns so used text instead
  if(over == true)
  {
    textAlign(CENTER,CENTER);
    textSize(15);
    text("Pistol", 85, 130);
    text("Shotgun", 85, 200);
  }
  
  //puts a rectangle around pistol
  if(pistol == true)
  {
    shotgun = false;
    rect(50,115,70,35);
  }
  
  //puts a rectangle around shotgun
  if(shotgun == true)
  {
    pistol = false;
    rect(45,185,80,40);
  }
}