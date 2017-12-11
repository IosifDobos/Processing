class Button1{
  String label = "START"; //button label
  float x;  //top left corner x position
  float y;  //top left corner y position
  float w;  //width of button
  float h;  //height of button
  boolean yes = false;
  
  //class Button constructor
  Button1()
  {
     x = 500;
     y = 680;
     w = 200;
     h = 80;
  }
  void update()
  {
     if( mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h))
     {
        fill(255,255,0); 
     }
     if(mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h) && mousePressed)
     {
       //yes = true;
      counter = 1;
        
     }
     if(yes) 
     {
       rect(25,25,50,50); 
     }
  }
  void Draw(){
     if( mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h))
     {
        fill(255,255,0); 
     }
     else
     {
        fill(0); 
     }
     stroke(141);
     rect(x,y,w,h,40);
     textAlign(CENTER, CENTER);
     fill(255,255,255);
     text(label, x+(w/2), y+(h/2));
  }
  
}