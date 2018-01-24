class Heroes
{
  float pos_x, pos_y;
  float draw_size=100, corner=110;
  
  Heroes(float pos_x, float pos_y)
  {
    this.pos_x = pos_x;
    this.pos_y = pos_y;
  }
  
  void display()
  {
    display.border(1);

    
    fill(0);
    strokeWeight(2);
    textSize(30);
    stroke(25,45,90);    
    
    fill(1,2,15);
    
    // The box for the armor
    beginShape();
      fill(93, 142, 97);
      stroke(10, 18, 11);
      rect(50, 50, 500, 500);
    endShape(CLOSE);
    
    
    if(mouseX>this.pos_x - 140 && mouseX<this.pos_x - 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(131,156,165);
    }
    else
    {
      fill(100,2,15);
    }
    
    
    // The left arrow
    beginShape();
    vertex(this.pos_x - 145, this.pos_y);
    vertex(this.pos_x - 130, this.pos_y-15);
    vertex(this.pos_x - 130, this.pos_y+15);
    endShape(CLOSE);
    
    
    if(mouseX<this.pos_x + 140 && mouseX>this.pos_x + 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(131,156,165);
    }
    else
    {
      fill(100,2,15);
    }
    
    // the right arrow
    beginShape();
    vertex(this.pos_x + 145, this.pos_y);
    vertex(this.pos_x + 130, this.pos_y-15);
    vertex(this.pos_x + 130, this.pos_y+15);
    endShape(CLOSE);
    
    fill(100,2,15);
    h_list.get(pic_index3).display_hero();
  }

}

class HeroesList
{
  int id;
  PImage img;
  String name;
  
  HeroesList(int a)
  {
    this.id = a;
    this.img= loadImage(dataPath("Image_h"+a+".png"));
    
    switch(a)
    {
      case 1:
      {
        this.name= "Superman";
        break;
      }
      case 2:
      {
        this.name= "Batman";
        break;
      }
      case 3:
      {
        this.name= "Wonder woman";
        break;
      }
      case 4:
       {
        this.name= "Cyborg";
        break;
       }
      case 5:
      {
        this.name= "Aquaman";
        break;
      }
      case 6:
      {
        this.name= "Flash";
        break;
      }  
    }// end switch case
    
  }
  
  void display_hero()
  {
    image(this.img, 185,150);
    
    textSize(20);
    if(pic_index3 == 1)
    {
      text("Name: "+this.name, 150, 395);

    }
    else
    {
      text("Name: "+this.name, 150, 395);

    }
  }// end display_armor()
}