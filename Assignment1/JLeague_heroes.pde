 class JLeague_heroes
{
  float pos_x, pos_y;
  float draw_size=400, corner=110;
  
  JLeague_heroes( float pos_x, float pos_y)
  {
    this.pos_x = pos_x;
    this.pos_y = pos_y;
  }
  
  void display_heroes()
  {
    ////draw.clock();
    //fill(100,2,15);
    //strokeWeight(2);
    //textSize(30);
    //text("Choose a loadout:", 50, 80);
    //stroke(25,45,90);    
    
    //fill(1,2,15);
    
    // The box for the primary weapon
    beginShape();
    //vertex(this.pos_x-draw_size, this.pos_y-corner);
    //vertex(this.pos_x-corner, this.pos_y-draw_size);
    
    //vertex(this.pos_x-corner, this.pos_y+draw_size);
    //vertex(this.pos_x-draw_size, this.pos_y+corner);
    
    //vertex(this.pos_x+draw_size, this.pos_y+corner);
    //vertex(this.pos_x+corner, this.pos_y+draw_size);
    
    //vertex(this.pos_x+corner, this.pos_y-draw_size);
    //vertex(this.pos_x+draw_size, this.pos_y-corner);
    fill(93, 142, 97);
    stroke(10, 18, 11);
    rect(50, 50, 500, 700);
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
    
    // The box for the secondary weapon
    
    
    fill(100,2,15);
    h_list.get(picture_index).display_image();
    //h_list2.get(pic_index2).display_image();
      
  }
    
}
  
  
  //void list_hereos()
  //{
    
    
  //}

class Heroes_list
{
  int id;
  String heroes_name;
  String type;
  PImage heroes_img;
  
  Heroes_list(int img, String b)
  {
    this.id= img;
    
    switch( img )
    {
      case 1:
      {
        this.heroes_name="Superman";
        break;
      }
      
      case 2:
      {
        this.heroes_name="Batman";
        break;
      }
      case 3:
      {
        this.heroes_name="Cyborh";
        break;
      }
      case 4:
      {
        this.heroes_name="Wonder Woman";
        break;
      }
      case 5:
      {
        this.heroes_name="Aqua Man";
        break;
      }
      case 6:
      {
        this.heroes_name="Flash";
        break;
      }
    }//end withch case
    
    this.heroes_img= loadImage(dataPath("image"+img+".png"));
    this.heroes_img.resize( 280, 650); 
    if(b=="Primary") this.type="Primary";
   
  }
  
  
  void display_image()
  {
    textSize(20);
    if(this.type=="Primary")
    {
      text(this.type+" Hearoes "+this.heroes_name, 125,395);
      image(this.heroes_img, 150,205);
    }// end else
    
    textSize(18);
    switch(this.id)
    {
      case 1:
      {
        text("Superman", 140,440);     
         
        break;
      }
      
      case 2:
      {
        text("Batman", 140,440);     
                  
        
        break;
      }
      
      case 3:
      {
        text("Wonder Woman", 140,440);     
              
        
        break;
      }
      case 4:
      {
        text("Cyborg", 505,440);                
        
        break;
      }
      case 5:
      {
        text("Aquaman", 505,440);     
        break;
      }
      case 6:
      {
        text("Flash", 505,440);     
        break;
      }
      
      default:
      {
        text("Damage: Missing info", 490,440);     
     
        
        break;
      }
    }// end switch
  } //end display image
} // end class