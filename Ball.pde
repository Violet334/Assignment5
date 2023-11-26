class Ball{
  //declare local variables
  PVector position;
  PVector velocity;
  
  Ball(){
    //initialize variables for starting position and movement of ball
    position = new PVector(width/2,360);
    velocity = new PVector(2.5,-2);
  }
  
  void display(){
    //draw ball
    fill(255,255,0);
    ellipse(position.x,position.y,30,30);
  }
  
  void move1(){
    //ball follows plank
    position.x = mouseX;
  }
  
  void move2(){
    //ball moves independently once shot
    position = position.add(velocity);
  }
  
  void bounce(){
    //ball stays within sides of screen
    if((position.x > width)||(position.x < 0)){
      velocity.x = velocity.x * -1;
    } //ball doesn't travel beyond top of screen
    if(position.y < 0){
      velocity.y = velocity.y * -1;
    }
  }
  //ball bounces off plank
  void caught(){
    velocity.x = velocity.x * -1;
    velocity.y = velocity.y * -1;
  }
}
