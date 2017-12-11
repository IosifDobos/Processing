class Button2
{
  String label;
  float x;
  float y;
  float w;
  float h;
  boolean back = false;
  boolean next = false;

  //class Button constructor
  Button2(String labelB, float xpos, float ypos, float widthB, float heightB)
  {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }

  void Update()
  {
    if ( mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h))
    {
      fill(255, 255, 0);
    }
    if (mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h) && mousePressed)
    {
      //yes = true;
      counter = 0;
    }
    if (back) 
    {
      rect(25, 25, 50, 50);
    }
  }
  void Draw() 
  {
      //if ( mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h) )
      //{
      //  fill(255, 255, 0);
      //} 
      //else
      //{
      //  fill(0);
      //}
      ////create a button for returning to the main screen
      //stroke(141);
      //rect(x, y, w, h, 40);
      //textAlign(CENTER, CENTER);
      //fill(255, 255, 255);
      //text(label, x+(w/2), y+(h/2));
  
      ////create a button for suits screen
      //stroke(141);
      //fill(0);
      //rect( x+150, y, w+50, h, 40);
      //textAlign(CENTER, CENTER);
      //fill(255, 255, 255);
      //text("HEROES SUITS", x+170+(w/2), y+(h/2));
  
      ////create a button for weapons screen
      //stroke(141);
      //fill(0);
      //rect( x+350, y, w+50, h, 40);
      //textAlign(CENTER, CENTER);
      //fill(255, 255, 255);
      //text("HEROES WEAPONS", x+375+(w/2), y+(h/2));
  
      ////create a menu to drive the batman ship
      //stroke(141);
      //fill(0);
      //rect( x+550, y, w+50, h, 40);
      //textAlign(CENTER, CENTER);
      //fill(255, 255, 255);
      //text("DRIVE BATMAN SHIP", x+575+(w/2), y+(h/2));
  }

}