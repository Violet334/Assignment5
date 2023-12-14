class Confetti{
  PVector position;
  PVector velocity;
  PVector acceleration;
  int repeat;
  
  Confetti(){
    position = new PVector(width/2,40);
    velocity = new PVector(random(-3,3),random(1.5));
    acceleration = new PVector(0,0.3);
    repeat = 0;
  }
  void display(){
    fill(random(255),random(255),0);
    ellipse(position.x,position.y,15,15);
  }
  void move(){
    position = position.add(velocity);
    velocity.add(acceleration);
    if(position.y > 400){
      while(repeat < 4){
        position.x = width/2;
        position.y = 40;
        repeat = repeat + 1;
      }
    }
  }
}
