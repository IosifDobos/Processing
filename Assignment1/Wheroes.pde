class Wheroes
{
  float pos_x, pos_y;
  float draw_size=100, corner=110;
  
  Wheroes( float pos_x, float pos_w)
  {
     this.pos_x = pos_x;
     this.pos_y = pos_y;
  }
  
  void display_weapons()
  {
      
    
  }
  
  
}

class HeroesWeapons
{
  int id;
  PImage img;
  String name;
  
  HeroesWeapons(int a)
  {
    this.id=a;
    this.img= loadImage(dataPath("weapon_"+a+".png"));
    
    switch(a)
    {
      case 1:
      {
        this.name= "Superman Weapons";
        break;
      }
      case 2:
      {
        this.name= "Batman Weapons";
        break;
      }
      case 3:
      {
        this.name= "Wonder Woman weapons";
        break;
      }
      case 4:
      {
        this.name= "Cyborg Weaopons";
        break;
      }
      case 5:
      {
        this.name= "Aqma weapon";
        break;
      }
      case 6:
      {
        this.name= "Flas weapons and abilities";
        break;
      }
      
    }
    
  }
  
  void display_armor()
  {
    image(this.img, 185,150);
    
    textSize(20);
    if(pic_index3==1)
    {
      text("Name: "+this.name, 150, 395);
      text("Armor type: Heavy", 150,425);
      text("Movement : Slow", 150,445);

    }
    else
    {
      text("Name: "+this.name, 150, 395);
      text("Armor type: Light", 150,425);
      text("Movement : Fast", 150,445);

    }
  }// end display_armor()
}