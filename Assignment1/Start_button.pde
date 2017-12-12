class StartScreen
{

  float cx, cy, radius, theta, speed, frequency;
  int begin, duration, time;
  color c;

  StartScreen()
  {
    
     c = color(0, 255, 0);
     cx = width/2;
     cy = height/2;
     radius = 200;
     frequency = 0.5;
     speed = (TWO_PI / 60.0) * frequency;
     theta = 0;
     
     begin = millis();
     time = duration = 10;
  }
  
  void update()
  {
     theta += speed;
  }
  
  void start_screen()
  {
    update();
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
        //sound.play();
        textSize(100);
        time = duration - (millis() - begin)/1000;
        text(time, width/2 , height/2-25 );
    }
    
    if( time == 0 )
    {
       new_screen=3; // This will make it go through screen 2 then to screen 3
       screen=2; // This will run for 3 seconds and then it will go to screen 3
    }
    
    
  }// start_screen()
  
  
}// end class start screen