class Border
{
  
  void border(int line)
  {
    stroke(15,23,6);    
    strokeWeight(2);
    noFill();
    

    
    if( line == 0)
    {
      line(x_coord_copy, height * 0.88, 1095, height*0.88); 
      map_button();
      weapon_button();
      heroes_button();
      ship_button();
      
      
    }
  } // end border
  
  void map_button()
  {
    
    float box1_x = 100;
    float box1_y = 30; 
    int size_x = 100;
    int size_y = 50;
   
    
    if( screen == 4 ||(mouseX > box1_x) &&  (mouseX< (size_x+box1_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))
    {
      fill(131,156,165);
      
    }
    else
    {
      fill(1,2,15);
    }
    
    beginShape();
    vertex(box1_x, height- box1_y);
    vertex(size_x + box1_x,height- box1_y);
    vertex(size_x + box1_x,height- ((size_y+box1_y-10)));  // top right corner
    vertex(size_x+ box1_x -10,height- size_y-box1_y);
    vertex(box1_x+10, height- size_y -box1_y);   // top left corner
    vertex(box1_x, height- ((size_y + box1_y)-10)); 
    endShape(CLOSE);
    
    fill(200,2,15);
    textSize(20);
    text("Maore",box1_x+ (box1_x *0.3f), height- (box1_y+(box1_y *0.3f)));
    
  }
  
  void weapon_button()
  {
    float box2_x = 100 * 2 +20;
    float box1_y = 30;
    int size_x = 100; 
    int size_y = 50;
    
    if( screen == 3 ||(mouseX > box2_x ) &&  (mouseX< (size_x+box2_x) ) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))
    {
      fill(131,156,165);
    }
    else
    {
      fill(1,2,15);
    }
    
    beginShape();
    vertex(box2_x, height- box1_y);
    vertex(size_x+box2_x,height- box1_y);
    vertex(size_x + box2_x,height- ((size_y+box1_y)-10));  // top right corner
    vertex(size_x + box2_x -10,height- size_y-box1_y);
    vertex(box2_x+10, height- size_y - box1_y);   // top left corner
    vertex(box2_x, height- ((size_y +box1_y)-10));
    endShape(CLOSE);
    
    fill(200,2,15);
    textSize(20);
    text("Weapons",box2_x+ (box2_x *0.037f), height- (box1_y+(box1_y *0.3f)));
    
  }
  
  void heroes_button()
  {
    float box3_x= 100*3 +40, box1_y= 30 ;int size_x=100, size_y=50;
  
    
    if( screen==6 || (mouseX > box3_x ) &&  (mouseX< (size_x +box3_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))
    {
      fill(131,156,165);
    }
    else
    {
      fill(1,2,15);
    }
    
    beginShape();
    vertex(box3_x, height- box1_y);
    vertex(size_x+box3_x,height- box1_y);
    vertex(size_x + box3_x,height- ((size_y+box1_y)-10));  // top right corner
    vertex(size_x + box3_x -10,height- size_y-box1_y);
    vertex(box3_x+10, height- size_y - box1_y);   // top left corner
    vertex(box3_x, height- ((size_y +box1_y)-10)); 
    endShape(CLOSE);
    
    
    fill(200,2,15); //
    textSize(20);
    text("Heroes",box3_x+ (box3_x *0.06f), height- (box1_y+(box1_y *0.3f)));
    
    
  }
  
  void ship_button()
  {
    float box4_x=920, box4_y=30, size_x=100, size_y=50;
    
    if(screen==5 ||(mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (size_y+box4_y)) && (mouseY< height - box4_y))
    {
      fill(131,156,165);  
    }
    else
    {
      fill(1,2,15);
    }
    beginShape();
    vertex(box4_x, height- box4_y);
    vertex(size_x + box4_x,height- box4_y);
    vertex(size_x + box4_x,height- ((size_y+box4_y-10)));  // top right corner
    vertex(size_x+ box4_x -10,height- size_y-box4_y);
    vertex(box4_x+10, height- size_y -box4_y);   // top left corner
    vertex(box4_x, height- ((size_y + box4_y)-10)); 
    endShape(CLOSE); 
    fill(200,2,15);
    textSize(20);
    text("Drive Batman Ship",box4_x+ (box4_x *0.013f), height- (box4_y+(box4_y *0.3f)));
    
  }  
  
  
}