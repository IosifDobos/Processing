import processing.sound.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


void setup()
{
  font = createFont("Verdana", 20, true);
  //fullScreen();
  size(1200,800, P3D);
  background(2,21,5);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
  frameRate(60);
  smooth();
  
  music = new SoundFile(this, "JL original song.mp3");
  music.play();
  
  my_file = loadStrings("superman.txt");
  efile = join(my_file, " ");
  my_file1 = loadStrings("cyborg.txt");
  efile1 = join(my_file1, " ");

  Weapons_list type_weapon_list;
  for (int i = 1; i < 6; i++)
  {
    type_weapon_list=new Weapons_list(i, "Primary"); 
    w_list.add(type_weapon_list);
  }

  HeroesList heroes_list;
  for (int i = 1; i < 6; i++)
  {
    heroes_list = new HeroesList(i); 
    h_list.add(heroes_list);
  }
  

}


// Global declaration area
PFont font;
String[] my_file, my_file1, my_file2, my_file3;
String efile, efile1;
float direction;
float xcol = 255, ycol = 100, zcol = 10; 
int condition = 0;             // Variable used for the color of the loading screen
float image_width, image_height;
int x_coord=10, y_coord=10;
boolean save_cond, load_cond=false, delete_cond;
int x_coord_copy=x_coord+5, y_coord_copy=y_coord+5; 
int index=0, screen=0, new_screen, index_key=0;
int counter, counter_1;
boolean yes;
String Profile, file;
int pic_index=1; // for the weapons primary and secondary
int pic_index3=1; // for the the heroes suits
int pic_index4=1; // for the map


// Object declaration area

ArrayList <Weapons_list> w_list = new ArrayList <Weapons_list>();
ArrayList <HeroesList> h_list = new ArrayList <HeroesList>(); 

SoundFile music;
Border display=new Border();
DriveBatmanShip batman = new DriveBatmanShip();
Loading loading = new Loading(); 
HeroesWeapons get = new HeroesWeapons(250, 250);
StartScreen display_screen = new StartScreen(); 
Map map=new Map(250, 250);
Heroes heroes=new Heroes(250, 250);  

void draw()
{
  game_state(screen);
}

void game_state(int a)
{
  switch(a)
  {
  case 0:  // The welcome screen
    {
      display_screen.start_screen();
      break;
    }
  case 1: // The loading screen
    {
      loading.display_loading(new_screen);
      break;
    }
  case 2:     // The 2nd loading screen
    {
      loading.display_loading(new_screen);  
      break;
    }
  case 3: // main menu
    {
      get.display_weapon();  // weapon screen
      break;
    }
  case 4:
    {
      map.display();  // map screen
      break;
    }
  case 5:
    {
      batman.display_ship();
      break;
    }
  case 6: 
    {
      heroes.display();// add armor screen
      break;
    }

  default:
    {
      display.border(0);
      fill(255);
      stroke(255);
      textSize(20);
      text("How did you end up here, buddy?", width * 0.38f, height*0.5f);
    }
  } // End switch
}

void mouseClicked()
{    
  float box1_x=100, box1_y=30;
  float box3_x= 100*3 +40;
  float box4_x=920, box4_y=30;
  float box5_x=width*0.45, box5_y=100, size_x1=120, size_y1=45;

  int size_x=100, size_y=50;

  if (screen==4) // map
  {
    //left arrow
    if (mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if (pic_index4==0) 
      {
        pic_index4= -1;
      } else 
      {
        pic_index4--;
      }
    }
    // right arrow
    if (mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if (pic_index4== 1) 
      {
        pic_index4=0;
      } else 
      {
        pic_index4++;
      }
    }
  } else
  {
    if ((mouseX > box1_x) &&  (mouseX< (size_x+box1_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))  // map button pressed
    {
      new_screen=4;
      screen=1;
    }
  }


  if (screen==3) // weapons
  { 
    // first box  arrows
    //left arrow
    if (mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if (pic_index==0) 
      {
        pic_index=w_list.size()-1;
      } else 
      {
        pic_index--;
      }
    }
    // right arrow
    if (mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if (pic_index==w_list.size()-1) 
      {
        pic_index=0;
      } else 
      {
        pic_index++;
      }
    }
    // end first box
  }


  if (screen==6)  // Heroes list
  {
    //left arrow
    if (mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if (pic_index3==0) 
      {
        pic_index3=h_list.size()-1;
      } else 
      {
        pic_index3--;
      }
    }
    // right arrow
    if (mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if (pic_index3==h_list.size()-1) 
      {
        pic_index3=0;
      } else 
      {
        pic_index3++;
      }
    }
  } else
  {
    if ((mouseX > box3_x ) &&  (mouseX< (size_x +box3_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y)) // armor button pressed
    {
      new_screen=6;
      screen=1;
    }
  }

  if ( screen == 5)
  {
    if (delete_cond==false)
    {
      if ((mouseX > box5_x) &&  (mouseX< (size_x1+box5_x)) && (mouseY> height- (size_y1+box5_y)) && (mouseY< height - box5_y))
      {
        //delete_cond=true;
        //table_record.delete_record();
      }
    } else
    {
      if (mouseX>width*0.465 && mouseX<width*0.495 && mouseY>height*0.56 && mouseY<height*0.595)
      {
        delete_cond=false;
      }
    }
  } else
  {
    if ((mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (size_y + box4_y)) && (mouseY< height - box4_y))  // record button pressed
    {
      new_screen=5;
      screen=1;      //record
    }
  }// end else

  if ( screen == 3 || screen == 4 || screen == 6 ) 
  {
    if (save_cond==false)
    {
      if (mouseX>box4_x+5 && mouseX<box4_x+95 && mouseY>height-box4_y-125 && mouseY<height-box4_y-90)
      {
        save_cond=true;
        //table_record.store();
      }
    } else
    {
      if (mouseX>width*0.465 && mouseX<width*0.495 && mouseY>height*0.56 && mouseY<height*0.595)
      {
        save_cond=false;
      }
    }
  } //end if (s 3,4,5,6)
} // end mouse clicked 