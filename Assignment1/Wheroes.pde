class HeroesWeapons
{
  float pos_x, pos_y;
  float draw_size=100, corner=110;
  
  
  HeroesWeapons(float pos_x, float pos_y)
  {
    this.pos_x= pos_x;
    this.pos_y= pos_y;
  }
  
  void display_weapon()
  {
    fill(255);
    strokeWeight(2);
    textSize(30);
    text("Heroes Weapons:", 50, 80);
    stroke(255);    
    
    fill(1,2,15);
    
    // The box for heroes weapons
    beginShape();

    fill(93, 142, 97);
    stroke(10, 18, 11);
    rect(50, 50, 500, 500);
    endShape(CLOSE);
    
    if(mouseX>this.pos_x - 140 && mouseX<this.pos_x - 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(255);
    }
    else
    {
      fill(255);
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
    
    //// the right arrow
    beginShape();
    vertex(this.pos_x + 145, this.pos_y);
    vertex(this.pos_x + 130, this.pos_y-15);
    vertex(this.pos_x + 130, this.pos_y+15);
    endShape(CLOSE);

    if(mouseX<(2.5f*this.pos_x) + 140 && mouseX>(2.5f*this.pos_x) + 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(0);
    }
    else
    {
      fill(0);
    }
    
    
    
    fill(255);
    w_list.get(pic_index).display_image();
      
  }
}

class Weapons_list
{
  int id;
  String name;
  String type;
  PImage pic;
  
  Weapons_list(int a, String b)
  {
    this.id=a;
    
    switch(a)
    {
      case 1:
      {
        this.name="Superman";
        break;
      }
      
      case 2:
      {
        this.name="Batman";
        break;
      }
      
      case 3:
      {
        this.name="Wonder Woman";
        break;
      }
      case 4:
      {
        this.name="Cyborg";
        break;
      }
      case 5:
      {
        this.name="Aquaman";
        break;
      }
      case 6:
      {
        this.name="Flash";
        break;
      }
    }
    
    this.pic= loadImage(dataPath("Image"+a+".png")); 
    if(b=="Primary") this.type="Primary";
  }
  void display_image()
  {
    textSize(20);
    if(this.type=="Primary")
    {
      text(this.type+" weapon: "+this.name, 125,395);
      image(this.pic, 150,205);
    }// end else
    
    textSize(18);
    switch(this.id)
    {
      case 1:
      {
        text(efile, 650, 120, 500, 700);     
                    
        break;
      }
      
      case 2:
      {
        text("Damage: Medium", 140,440);     
        break;
      }
      
      case 3:
      {
        text("Damage: Low", 140,440);     
            
        
        break;
      }
      case 4:
      {
        text(efile1, 650, 120, 500, 700);     
             
        
        break;
      }
      case 5:
      {
        text("Damage: V.High", 505,440);     
;
        break;
      }
      case 6:
      {
        text("Damage: Low", 505,440);     

        break;
      }
    }// end switch
  } //end display image
} // end class