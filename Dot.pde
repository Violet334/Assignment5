class Dot{
  //declare local variables
  float x;
  float y;
  float w;
  float c;
  
  Dot(float x_,float y_,float w_,float c_){
    //init temp variables
    x = x_;
    y = y_;
    w = w_;
    c = c_;
  }
  
  void display(){
    //draw dots
    noStroke();
    fill(c);
    ellipse(x,y,w,w);
    if(x>width-10){
      x=10;
      y=y+20;
    }
  }
  
  void hit(){
    c = 255;

  }
}
