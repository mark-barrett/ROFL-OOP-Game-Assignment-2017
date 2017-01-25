class Screen
{
  //Number corrosponding to particular screen.
  int screen;
  float transparency;
  
  //Parameterised constructor. When the object is created the particular screen is set.
  Screen(int screen) {
    this.screen = screen;
    this.transparency = 255;
  }
  
  //Draw the screen
  void render()
  {
    //If the loading screen is to be displayed
    if(this.screen == 1) {
      background(0);
      fill(0);
      stroke(0);
      stroke(255, 0, 0);
      fill(255, 0, 0);
      textAlign(LEFT);
      textSize(40);
      text ("Loading " + int((frameCount%301) / 3) + "%", width/2-95, height/2-15);
      rect(530, height/2-2, 204, 24);
      fill(0);
      int fillX = ((frameCount%301) / 3 * 2);
      rect(730, height/2, fillX-200, 20);
      if(frameCount%301 == 0)
      {
        this.screen = 2;
      }
    }
    
    //If the menu is to be displayed
    if(this.screen == 2) {
      background(0);
      stroke(255);
      textSize(100);
      fill(255, 0, 0);
      text("R",480,200);
      text("O",560,200);
      text("F",660,200);
      text("L",740,200);
      textSize(30);
      text("Ripped Off Frontal Lobe", 500, 240);
      
      fill(0);
      strokeWeight(4);
      stroke(255, 0, 0);
      rect(490, 280, 285, 60);
      rect(490, 360, 285, 60);
      fill(255, 0, 0);
      textSize(40);
      text("New Game", 555, 323);
      text("Load Game", 550, 405);
      
      //If the mouse is over the new game button
      if(mouseX > 490 && mouseX < 775 && this.screen == 2)
      {
        if(mouseY > 280 && mouseY < 340 && this.screen == 2)
        {
          
          fill(255, 0, 0);
          rect(490, 280, 287, 62);
          fill(0);
          text("New Game", 555, 323);
          fill(255, 0, 0);
        }
      }
      
      //If the mouse is over the load game button
      if(mouseX > 490 && mouseX < 775 && this.screen == 2)
      {
        if(mouseY > 360 && mouseY < 420 && this.screen == 2)
        {
          fill(255, 0, 0);
          rect(490, 360, 287, 62);
          fill(0);
          text("Load Game", 550, 405);
          fill(255, 0, 0);
        }
      }
      
      //Credit text
      textSize(20);
      text("By Mark Barrett", 1130, 620);
    }
    
    //Level screen. Middle
    if(this.screen == 3) {
      
      if(this.transparency > 0) {
        this.transparency -= 1;
      }{
      background(85, 63, 42);
      strokeWeight(10);
      stroke(0);
      strokeCap(SQUARE);
      fill(179,179,179);
      //Top room
      rect(width/2-150, -10, 300, 85);
      //Main Room
      rect(width/2-500, 75, 1000, 500);
      //Top Door
      fill(85, 63, 42);
      noStroke();
      rect(width/2-75, 60, 150, 30);
      fill(0, 0, 0, this.transparency);
      rect(0, 0, 1280, 650);
      fill(255, 0, 0, this.transparency);
      textSize(60);
      text("12:08am - Level 1", width/2-200, height/2);
    }
  } 
  }
}