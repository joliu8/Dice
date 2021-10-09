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
    fill(148, 219, 235);
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
int sum = 0;
void setup()
{
  size(500, 525);
  //noLoop();
  fill(0);
  //dean = new Dice(0,0); //the one die
}
void draw(){
  //for loop to make rows and columns

  for (int i = 0; i < (int)(Math.random()*11); i++) {
    for (int j = 0; j < (int)(Math.random()*11); j++) {
      dean = new Dice (j*50, i*50);
      dean.show();
    }
  }
    sum = sum + dean.dots;
        text("Total: " +sum, 20, 425);
}
void mousePressed()
{
  redraw();
}
