class Heading{
  //declare local variables
  float x;
  float y;
  float h;
  
  Heading(){
    x = 0;
    y = 0;
    h = 40;
  }
  
  void display(){
    rectMode(CORNER);
    noStroke();
    fill(190);
    rect(x,y,width,h);
  }
}
