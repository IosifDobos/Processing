class Ship
{
  String labelB; //button label
  float xcor;  //top left corner x position
  float ycor;  //top left corner y position
  float wcor;  //width of button
  float hcor;  //height of button
  boolean yes = false;
   
  Ship()
  {
    
  }
  
  
  void UpdateShip()
  {
    if( mouseX > xcor && mouseX < (xcor+wcor) && mouseY > ycor && mouseY < (ycor+hcor))
     {
        fill(255,255,0); 
     }
     if(mouseX > xcor && mouseX < (xcor+wcor) 
        && mouseY > ycor && mouseY < (ycor+hcor) && mousePressed)
     {
       //yes = true;
      counter_1 = 1;
        
     }
     if(yes) 
     {
       rect(25,100,50,100); 
     }
  }
  
  void DisplayShip()
  {
     if( mouseX > xcor && mouseX < (xcor+wcor) && mouseY > ycor && mouseY < (ycor+hcor))
     {
        fill(255,255,0); 
     }
     else
     {
        fill(0); 
     }
     stroke(141);
     rect(xcor,ycor,wcor,hcor,40);
     textAlign(CENTER, CENTER);
     fill(255,255,255);
     text(labelB, xcor+(wcor/2), ycor+(hcor/2));
     
     
     rect(150, 100,100,100);
  }

  
  
  
  
}