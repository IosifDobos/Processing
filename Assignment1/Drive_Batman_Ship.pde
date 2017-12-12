class DriveBatmanShip
{
  int cols, rows;
  int scl = 20;
  int w = 2000;
  int h = 1600;
  float flying = 0;
  float speed;
  float[][] myArray;
  
  //create my variables for stars 
   float x;
   float y;
   float z;
   float pz;
  
  //my class constructor
   DriveBatmanShip()
   {
      cols = w / scl;
      rows = h/ scl;
      myArray = new float[cols][rows];
      
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      z = random(width/2);
      
      pz = z;
      
       z = z - speed;
     
     if(z < 1)
     {
        z = width/2;
        x = random(-width/2, width/2);
        y = random(-height/2, height/2);
        pz = z;
     }
   }
   
   
   
   void display_ship()
   {  
     
       flying -= 0.1;
      float yoff = flying;
      for (int y = 0; y < rows; y++) 
      {
        float xoff = 0;
        for (int x = 0; x < cols; x++) 
        {
          myArray[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
          xoff += 0.2;
        }
        yoff += 0.2;
      }
      //implement stars
      fill(255);
      noStroke();
      float sx = map(x / z, 0, 1, 0, width/2);
      float sy = map(y / z, 0, 1, 0, height/2);;
  
      // I use the z value to increase the star size between a range from 0 to 16.
      float r = map(z, 0, width/2, 16, 0);
      ellipse(sx, sy, r, r);
      
      // Here i use the "pz" valute to get the previous position of the stars,
      // so I can draw a line from the previous position to the new (current) one.
      float px = map(x / pz, 0, 1, 0, width/2);
      float py = map(y / pz, 0, 1, 0, height/2);
      
      pz = z;
      
      stroke(255);
      line(px, py, sx, sy);
      
   }
    
  
}