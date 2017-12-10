/*
  Program created for Object Oriented Programming
 Created by: Iosif Dobos, C16735789, DT228/2
 Date: 03/11/2017
 Created in Processing, @copyright all rights are reserved
 */

//imort my library files
//import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;
import processing.video.*;

PImage img, img1;
PFont font;

int counter = 0;
int counter_1 = 0;
boolean movie = true;

//create the classes used within this program
//import the Minim class for audio file
//Minim minim;
//AudioPlayer sound;
Movie video;
Movie video2;

Button1 start_button;
Button2 back_button;
Ship ship_button;


//declaring my variables

void setup()
{
  size(1200, 800, P3D);
  //frameRate(30);
  //video = new Movie(this, "JL_official_trailer1.mov" );
  //video.play();
  //minim = new Minim(this);
  //sound = minim.loadFile("counterfrom10.mp3");
  img = loadImage("justice_league.jpg");
  img1 = loadImage("Justice-League.jpg");
  start_button = new Button1("START",500,680,200,80); 
  back_button = new Button2("BACK", 20,20,100,40);
  ship_button = new Ship("DRIVE BATMAN SHIP", 20,120, 120,40);
}


//create menu method

//void movieEvent(Movie m)
//{
//   m.read(); 
//}



void screen1()
{
  image(img, 0, 0);
  start_button.Draw();
  start_button.update();
}//end creen1()

void screen2()
{
  //background(0,40,0);
  image(img1, 0, 0);
  img1.resize(1200, 800);
  image(img1, 0, 0);
  back_button.Draw();
  back_button.Update();
}//end screen2()

void screen3()
{
  ship_button.Draw();
  ship_button.Update();
}

void draw()
{
  
  background(175);
  
  //create an if statement to 
  if(counter == 0)
  {
    screen1();
  }
  if(counter == 1)
  {
    screen2();
    if( counter_1 == 1)
    {
      screen3();
    }
  }
}