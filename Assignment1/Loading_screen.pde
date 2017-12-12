class Loading
{
  int next_screen2;
  
  Loading()
  {
    this.next_screen2=0;
  }
  
  void display_loading(int a)
  {
    // Variables
    float position_x =  width * 0.5;
    float position_y = height * 0.5;   
    
    
    
    // Settings used for the arcs
    
    background(0);
    display.border(0);
    noFill();
    strokeWeight(5);
    fill_loading();
    stroke(xcol, ycol, zcol);        
    arc(position_x, position_y, image_width, image_height, -direction- PI, -direction);
    arc(position_x, position_y, image_width+20, image_height+20, direction, direction+ PI );      
    arc(position_x, position_y, image_width+40, image_height+40, direction-PI, direction );
    arc(position_x,position_y, image_width+60, image_height+60, -direction, -direction + PI);     
    direction+=0.05; 
    
    fill(150,205,205);
    textSize(20);
    text("Loading", position_x-42, position_y+2);
    
    if(frameCount % 60 == 0) next_screen2++;
    if(next_screen2 > 3) 
    {
      next_screen2=0;
      screen = a;
    }
  }
  
  void fill_loading()   
  {
    
     if( xcol > 0 && condition == 0  )
     {
       xcol--;
       if(xcol < 2) condition = 1;
     }
     
     if( xcol < 255 && condition == 1)
     {
       xcol++;
     }
     else
     {
       if (xcol > 253) condition = 0;
     }
    
  }

  
}