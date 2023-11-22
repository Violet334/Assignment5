class Plank{
  //declare local variables
  color c;
  float xpos;
  float ypos;
  
  Plank(){
    c = color(170,150,140);
    xpos = width/2;
    ypos = 380;
  }
  
  void display(){
    //draw the plank
    strokeWeight(2);
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,70,15);
  }
  
  void move(){
    xpos = mouseX;
  }
  
  boolean intersect(Ball b){
    float distance = dist(xpos,ypos+20,b.position.x,b.position.y);
    if (distance < 35 + 15){
      return true;
    } else{
      return false;
    }
  }
}
