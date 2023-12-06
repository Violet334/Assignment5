//Object Oriented Game by Violet Li

//declare global variables
Heading h;
Plank p;
Ball b;
Dot[] dots = new Dot[19];
//declare the score
int score;
//declare boolean for whether the ball has been launched
boolean shoot;


void setup(){
  size(400,400);
  //initialize objects
  h = new Heading();
  p = new Plank();
  b = new Ball();
  //set score to 0
  score = 0;
  //initialize array
  for(int i = 0;i < dots.length;i++){
    dots[i] = new Dot(i*20+20,60,15,100);
  }
  //set shoot to false
  shoot = false;

}

void draw(){
  background(255);
  h.display();
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
  //call dot array
  for(int i = 0;i < dots.length;i++){
    dots[i].display();
    //function when ball hits dots
    if(b.intersect(dots[i])){
      dots[i].score();
      dots[i].hit();
    }
  }
}
//ball is launched when mouse is clicked
void mousePressed(){
  shoot = !shoot;
}
