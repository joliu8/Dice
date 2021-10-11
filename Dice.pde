class Dice //models one single dice cube
{
  //variable declarations here
  int dots, myX, myY;
  Dice(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    dots = (int)(Math.random()*6)+1;
  }

  void show()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 50, 50);

    fill(0);
    if (dots == 1) {
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (dots == 2) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (dots == 3) {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (dots == 4) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
    } else if (dots == 5) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else {
      ellipse(myX + 15, myY + 12, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 38, 10, 10);
      ellipse(myX + 35, myY + 38, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 12, 10, 10);
    }
  }
}

Dice dean;
void setup()
{
  size(500, 550);
  noLoop();
  fill(0);
  //dean = new Dice(0,0); //the one die
}

void draw() {
  int sum = 0;
  int random = (int)(Math.random()*10)+1;
  
  if (mouseClicks % 10 == 0)
    background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  else 
    background(250, 250, 250);
    
  for (int i = 0; i < random; i++) {
    for (int j = 0; j < random; j++) {
      dean = new Dice (j*50, i*50);
      dean.show();
      sum = sum + dean.dots;
    }
  }
  textSize(20);
  text("Total Number of Dots: " +sum, 0, 525);
  text("Clicks: " + mouseClicks, 300, 525);
}

int mouseClicks = 0;
void mousePressed()
{
  redraw();
  if (mouseButton == LEFT || mouseButton == RIGHT) { 
    mouseClicks++;
  } else { 
    mouseClicks = 0;
  }
}
