class Ball{
  //declare local variables
  PVector position;
  PVector velocity;
  
  Ball(){
    position = new PVector(width/2,360);
    velocity = new PVector(2.5,-2);
  }
  
  void display(){
    fill(255,255,0);
    ellipse(position.x,position.y,30,30);
  }
  
  void move1(){
    position.x = mouseX;
  }
  
  void move2(){
    position = position.add(velocity);
  }
  
  void bounce(){
    if((position.x > width)||(position.x < 0)){
      velocity.x = velocity.x * -1;
    }
    if(position.y < 0){
      velocity.y = velocity.y * -1;
    }
  }
  
  void caught(){
    velocity.x = velocity.x * -1;
    velocity.y = velocity.y * -1;
  }
}
