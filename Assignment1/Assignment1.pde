/*
   Program created for Object Oriented Programming
   Author: Iosif Dobos, C16735789, DT228/2
   Date: 03/11/2017
   Created in Processing, @copyright all rights are reserved
 */

//imort my library files
import processing.video.*;

void setup()
{
  font = createFont("Verdana", 200, true);
  //fullScreen();
  size(1200,800, P3D);
  background(57,67,47);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
  frameRate(60);
  smooth();

  Weapon_list type_weapon_list;
  for (int i = 1; i < 6; i++)
  {
    type_weapon_list=new Weapon_list(i, "Primary"); 
    w_l.add(type_weapon_list);
  }

  HeroesList ar;
  for (int i=1; i<3; i++)
  {
    ar=new HeroesList(i); 
    a_l.add(ar);
  }

}



PImage img, img1;
PFont font;
float direction;
float x=26, y=52, z=8;     // The colors from fill_clock and display_clock
int condition=0;             // Variable used for the color of the loading screen
float image_width, image_height;
int x_coord=10, y_coord=10;
boolean save_cond, load_cond=false, delete_cond;
int x_coord_copy=x_coord+5, y_coord_copy=y_coord+5; 
int index=0, screen=0, new_screen, index_key=0;
String Profile, file;
int pic_index=1; // for the weapons primary and secondary
int pic_index3=1; // for the the heroes suits
int pic_index4=1; // for the map
boolean movie = true;

//create the classes used within this program
//import the Minim class for audio file
//Minim minim;
//AudioPlayer sound;
Movie video;
Movie video2;

//Menu myMenu;
//Button1 start_button;
//Button2 back_button;
//Ship ship_button;
//JLeague_heroes heroes;
//Loading_screen ld_screen;
//Loading_screen2 ld_new_screen;
//Border display = new Border();
//Wheroes  w_heroes;
//DriveBatmanShip dr_ship;

ArrayList <Weapon_list> w_l= new ArrayList <Weapon_list>();
ArrayList <HeroesList> a_l= new ArrayList <HeroesList>();

Border display=new Border();
Loading paint= new Loading();
Loading2 create= new Loading2(730, 600); 
Weapons get=new Weapons(250, 250);
StartScreen disp= new StartScreen(); 
Maps map=new Maps(250, 250);
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
      disp.start_screen();
      break;
    }
  case 1: // The loading screen
    {
      paint.display_loading(new_screen);
      break;
    }
  case 2:     // The 2nd loading screen
    {
      paint.display_loading(new_screen);  
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
      //table_record.display(); // display  records
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
        pic_index=w_l.size()-1;
      } else 
      {
        pic_index--;
      }
    }
    // right arrow
    if (mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if (pic_index==w_l.size()-1) 
      {
        pic_index=0;
      } else 
      {
        pic_index++;
      }
    }
    // end first box
  }
  //else
  //{
  //  if((mouseX > box2_x ) &&  (mouseX< (size_x+box2_x) ) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))  // weapons button pressed
  //  {
  //    new_screen=3;
  //    screen=1;  
  //  }
  //}


  if (screen==6)  // armor
  {
    //left arrow
    if (mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if (pic_index3==0) 
      {
        pic_index3=a_l.size()-1;
      } else 
      {
        pic_index3--;
      }
    }
    // right arrow
    if (mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if (pic_index3==a_l.size()-1) 
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

  if (screen==5)
  {
    if (delete_cond==false)
    {
      if ((mouseX > box5_x) &&  (mouseX< (size_x1+box5_x)) && (mouseY> height- (size_y1+box5_y)) && (mouseY< height - box5_y))
      {
        delete_cond=true;
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