class Button1{
  PFont font;
  String label = "START"; //button label
  float x;  //top left corner x position
  float y;  //top left corner y position
  float w;  //width of button
  float h;  //height of button
  //create variables for counting down seconds
  float cx, cy, radius, theta, speed, frequency;
  color c;
  
  //create variables for seconds counting down
  int begin, duration, time;
  
  boolean yes = false;
  
  //class Button constructor
  Button1()
  {
     font = createFont("Verdana", 200, true);
    
     c = color(0, 255, 0);
     cx = width/2;
     cy = height/2;
     radius = 200;
     frequency = 0.5;
     speed = (TWO_PI / 60.0) * frequency;
     theta = 0;
     
     begin = millis();
     time = duration = 10;
     
     x = 500;
     y = 680;
     w = 200;
     h = 80;
  }
  void update()
  {
     theta += speed;
     
     //if( mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h))
     //{
     //   fill(255,255,0); 
     //}
     //if(mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h) && mousePressed)
     //{
     //  //yes = true;
     // counter = 1;
        
     //}
     //if(yes) 
     //{
     //  rect(25,25,50,50); 
     //}
  }
  void Draw()
  {
    
     stroke(0,255,0);
     noFill();
     ellipse(cx, cy, radius*2, radius*2);
     int trailLength = 10;
     float greenIntensity = 255 / (float)trailLength;
     for(int i = 0 ; i < trailLength ; i ++)
     {
        stroke(0, i * greenIntensity, 0);
        float x = cx + sin(theta + i * speed) * radius;
        float y = cy -cos(theta + i * speed) * radius;
        line(cx, cy, x, y);
     }
    
    if (time > 0)
    {  
        textFont(font);
        time = duration - (millis() - begin)/1000;
        text(time, width/2 - 70, height/2 + 70);
    }
    
    
     //if( mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h))
     //{
     //   fill(255,255,0); 
     //}
     //else
     //{
     //   fill(0); 
     //}
     //stroke(141);
     //rect(x,y,w,h,40);
     //textAlign(CENTER, CENTER);
     //fill(255,255,255);
     //text(label, x+(w/2), y+(h/2));
  }
  
}