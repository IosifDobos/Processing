/*
   Program created for Object Oriented Programming
   Author: Iosif Dobos, C16735789, DT228/2
   Date: 03/11/2017
   Created in Processing, @copyright all rights are reserved
 */

//imort my library files
import processing.video.*;

PImage img, img1;
PFont font;
int condition=0;
int x_coord=10, y_coord=10;
int x_coord_copy=x_coord+5, y_coord_copy=y_coord+5; 
int counter = 0;
int counter_1 = 0;
int change_screen = 0, index = 0, new_screen, index_key = 0;
int picture_index = 1;
float direction;
float x=255,y=100,z=140; 
float image_width, image_height;
int pic_index = 1, pic_index3 = 1, pic_index4 = 1; // for the weapons-> heroes -> and batman ship
boolean movie = true;

//create the classes used within this program
//import the Minim class for audio file
//Minim minim;
//AudioPlayer sound;
Movie video;
Movie video2;

Menu myMenu;
Button1 start_button;
Button2 back_button;
Ship ship_button;
JLeague_heroes heroes;
Loading_screen ld_screen;
Loading_screen2 ld_new_screen;
Border display = new Border();
Wheroes  w_heroes;

//declaring my variables

void setup()
{
  size(1200, 800, P3D);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
  frameRate(30);
  smooth();
  video = new Movie(this, "JL_official_trailer1.mov" );
  //noLoop();
  //minim = new Minim(this);
  //sound = minim.loadFile("counterfrom10.mp3");
  img = loadImage("justice_league.jpg");
  img1 = loadImage("Justice-League.jpg");
  myMenu = new Menu();
  start_button = new Button1(); 
  back_button = new Button2();
  ship_button = new Ship();
  heroes = new JLeague_heroes(250,250);
  w_heroes = new Wheroes(250,250);
  ld_screen = new Loading_screen();
  ld_new_screen = new Loading_screen2(600, 400);
  
  Heroes_list type_hero_list;
  for(int index_arraylist=1;index_arraylist<4;index_arraylist++)
  {
    type_hero_list=new Heroes_list( index_arraylist, "Primary" ); 
    h_list.add(type_hero_list);  
  }
  HeroesWeapons weapon;
  for(int index_arraylist=1;index_arraylist<3;index_arraylist++)
  {
    weapon=new HeroesWeapons(index_arraylist); 
    w_list.add(weapon);  
  }
  //
  //for(int index_arraylist=4;index_arraylist<7;index_arraylist++)
  //{
  //  type_hero_list=new Heroes_list(index_arraylist,"Secondary"); 
  //  h_list2.add(type_hero_list);  
  //}
}

ArrayList <Heroes_list> h_list = new ArrayList <Heroes_list>();
ArrayList <HeroesWeapons> w_list= new ArrayList <HeroesWeapons>();

void draw()
{
  background(0);
  //create an if statement to
  display_menu(change_screen);
   
  //if (counter == 0)
  //{
  //  screen1();
  //}
  //if (counter == 1)
  //{
  //  screen2();
  //  if ( counter_1 == 1)
  //  {
  //    screen3();
  //  }
  //}
}


void display_menu( int a )
{
  switch(a)
  {
    case 0:  // The welcome screen
    {
      start_button.Draw();
      break;
    }
    case 1: // The loading screen
    {
      ld_new_screen.display_loading2(new_screen);
      break;
    }
    case 2:     // The 2nd loading screen
    {
      heroes.display_heroes();  // heroes screen
      break;
    }
    case 3: // main menu
    {
      w_heroes.display_weapons();
      break;
    }
    case 4:
    {
      //armor.display();// drive batman ship
      break;
    }
    
  } // End switch
}//end function change_menu


//implement function mouse clicked this will allow user to navigate trough different pages
//void mouseClicked()
//{
//  float box1_x=100, box1_y=30;
//  float box2_x=100 * 2 +20;
//  float box3_x= 100*3 +40;
//  float box4_x=920, box4_y=30;
//  float box5_x=width*0.45, box5_y=100, size_x1=120, size_y1=45;
  
//  int size_x=100, size_y=50;
//}



void screen1()
{
  //image(img, 0, 0);
  start_button.Draw();
  start_button.update();
  
}//end creen1()

void screen2()
{
  //background(0,40,0);
  image(img1, 0, 0);
  img1.resize(1200, 800);
  image(img1, 0, 0);
  //if( mousePressed == true)
  //{
  //   video.stop();
  //}
  back_button.Draw();
  back_button.Update();
  
  image(video, 200, 200, 770, 500);
  video.play();
  //noLoop();
  myMenu.Updatemenu();
  
myMenu.Displaymenu();
}//end screen2()

void screen3()
{
  ship_button.DisplayShip();
  ship_button.UpdateShip();
}


//create menu method

void movieEvent(Movie video)
{
  video.read();
}

void mouseClicked()
{    
  float box1_x=100, box1_y=30;
  float box2_x=100 * 2 +20;
  float box3_x= 100*3 +40;
  float box4_x=920, box4_y=30;
  float box5_x=width*0.45, box5_y=100, size_x1=120, size_y1=45;
      
  int size_x=100, size_y=50;
  
  if(change_screen==4) // drive batman ship
  {
       //left arrow
    if(mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if(pic_index4==0) 
      {
        //pic_index4=m_l.size()-1;
      }
      else 
      {
        pic_index4--;
      }
    }
    // right arrow
    //if(mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    //{ 
    //  if(pic_index4==m_l.size()-1) 
    //  {
    //    pic_index4=0;
    //  }
    //  else 
    //  {
    //    pic_index4++;
    //  }
    //}
    
    
  }
  else
  {
    if((mouseX > box1_x) &&  (mouseX< (size_x+box1_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))  // map button pressed
    {
      new_screen=4;
      change_screen=1;
    }
  }
  
  
  if(change_screen==3) // weapons
  { 
    // first box  arrows
    //left arrow
    if(mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if(pic_index==0) 
      {
        pic_index= h_list.size()-1;
      }
      else 
      {
        pic_index--;
      }
    }
    // right arrow
    if(mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if(pic_index == h_list.size()-1) 
      {
        pic_index=0;
      }
      else 
      {
        pic_index++;
      }
    }
   
  }
  else
  {
    if((mouseX > box2_x ) &&  (mouseX< (size_x+box2_x) ) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))  // weapons button pressed
    {
      new_screen=3;
      change_screen=1;  
    }
  }
    
  
  if(change_screen==6)  // armor
  {
     //left arrow
    if(mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if(pic_index3==0) 
      {
        pic_index3=h_list.size()-1;
      }
      else 
      {
        pic_index3--;
      }
      
    }
    // right arrow
    if(mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if(pic_index3==h_list.size()-1) 
      {
        pic_index3=0;
      }
      else 
      {
        pic_index3++;
      }
      
    }
  }
  else
  {
    if((mouseX > box3_x ) &&  (mouseX< (size_x +box3_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y)) // armor button pressed
    {
       new_screen=6;
       change_screen=1;
    }
  }
  
} // end mouse clicked 