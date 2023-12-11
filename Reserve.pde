class Reserve{
  float x;
  float y;
  
  Reserve(float x_,float y_){
    x = x_;
    y = y_;
  }
  
  void display(){
    strokeWeight(2);
    stroke(0);
    fill(255,255,0);
    ellipse(x,y,30,30);
  }
}
