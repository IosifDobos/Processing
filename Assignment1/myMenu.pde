class Menu
{
  PImage button1;
  PImage button2;
  
  String[] menu = { "BACK TO MAIN SCREEN", "HEROES COSTUME", "HEROES WEAPONS", "DRIVE BATMAN SHIP" };
  int n_menu = menu.length;
  int position_cursor;
  int button_width;
  int button_height;
  int x1, padding;
  int[] button_x1, button_y1, button_x2, button_y2;
  
  Menu()
  {
      position_cursor = 0;
      button_width = 200;
      button_height = 50;
    
      button_x1 = new int[n_menu];
      button_y1 = new int[n_menu];
      button_x2 = new int[n_menu];
      button_y2 = new int[n_menu];
    
      button1 = loadImage("button1.png");
      button2 = loadImage("button2.png");
  
      x1 = 0;
      padding = 30;
  
  
    for (int i = 0; i < n_menu; i++)
    {
      //rect(50, 30, button_width, button_height);
      button_x1[i] = 50 + x1;
      button_y1[i] = 50;
      button_x2[i] = button_x1[i] + button_width;
      button_y2[i] = button_y1[i] + button_height;


      x1 += button_width + padding;
    }
    
  }
  
  void Updatemenu()
  {
    fill(255);
    textSize(14);
    //if( mousePressed == true)
    //{
    //  for (int i = 0; i < n_menu; i++)
    //  {
    //    PImage my_image = (position_cursor == 1 ) ? button2 : button1;
    //    image( my_image, button_x1[i], button_y1[i] );
    //    int x1 = (button_width - (int)textWidth(menu[i]) ) / 2;
    //    text( menu[i], button_x1[i] + x1, 30 + button_y1[i]);
    //  }
    //}
  }
  
  void Displaymenu()
  {
      fill(255);
    textSize(14);
    
    for (int i = 0; i < n_menu; i++)
    {
      PImage my_image = (position_cursor == 1 ) ? button2 : button1;
      image( my_image, button_x1[i], button_y1[i] );
      //int x1 = (button_width - (int)textWidth(menu[i]) ) / 2;
      text( menu[i], button_x1[i] + 100, 25 + button_y1[i]);
    }
  }
}