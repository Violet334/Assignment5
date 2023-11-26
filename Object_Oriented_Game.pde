//Object Oriented Game by Violet Li

//declare global variables for the ball, dots, and plank
Plank p;
Ball b;
Dot[] dots = new Dot[20];
//declare boolean for whether the ball has been launched
boolean shoot;

void setup(){
  size(400,400);
  //initialize objects
  p = new Plank();
  b = new Ball();
  for(int i = 0;i < dots.length;i++){
    dots[i] = new Dot();
  }
  shoot = false;
}

void draw(){
  background(255);
  //call the plank functions
  p.move();
  p.display();
  b.display();
  //call ball functions when it hasn't been shot
  if(!shoot){
  b.move1();
  } else {
    //functions when ball has been launched
    b.move2();
    b.bounce();
    //function when ball hits plank
    if(p.intersect(b)){
      b.caught();
    }
  }
}
//ball is launched when mouse is clicked
void mousePressed(){
  shoot = !shoot;
}
