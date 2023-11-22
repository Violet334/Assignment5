//Object Oriented Game by Violet Li
Plank p;
Ball b;
boolean shoot;

void setup(){
  size(400,400);
  //initialize objects
  p = new Plank();
  b = new Ball();
  shoot = false;
}

void draw(){
  background(255);
  //call the plank functions
  p.move();
  p.display();
  b.display();
  
  if(!shoot){
  b.move1();
  } else {
    b.move2();
    b.bounce();
    if(p.intersect(b)){
      b.caught();
    }
  }
}

void mousePressed(){
  shoot = !shoot;
}
