//Object Oriented Game by Violet Li

//declare global variables
int gameState = 0;
//declare the score
int score;
//declare boolean for whether the ball has been launched
boolean shoot;
//declare objects
Heading h;
Plank p;
Ball b;
Dot[] dots = new Dot[76];
ArrayList<Reserve> rlist = new ArrayList<Reserve>();

void setup(){
  size(400,400);
  println("click to shoot");
  //initialize objects
  h = new Heading();
  p = new Plank();
  b = new Ball();
  //set score to 0
  score = 0;
  //initialize array
  for(int i = 0;i < dots.length;i++){
    // create rows of dots
    float x = i % 19;
    int y = i / 19;
    dots[i] = new Dot(x*20+20,60+y*30,15,100);
  }
  for(int i = 0;i < 3;i++){
    rlist.add(new Reserve(i*-40+60,382));
  }
  //set shoot to false
  shoot = false;

}

void draw(){
  background(255);
  
  switch(gameState){
    //starting state
    case 0:
    h.display();
    textSize(30);
    text("Start Game",width/2 - 70,height/2);
    break;
    
    //playing state
    case 1:
    h.display(); //show heading
    for(int i = 0;i < dots.length;i++){  //call array
      dots[i].display();
      if(b.intersect(dots[i])){   //function when ball hits dots
        dots[i].score();
        dots[i].hit();
      }
    }
    for(int i = 0;i < rlist.size();i++){ //call arraylist
      Reserve r = rlist.get(i);
      r.display();
    }
    p.move(); //call the plank functions
    p.display();
    //ball functions
    b.display();
    if(!shoot){   //call ball functions when it hasn't been shot
      b.move1();
    } else {      //functions when ball has been launched
      b.move2();
      b.bounce();
      if(p.intersect(b)){ //function when ball hits plank
        b.caught();
      }
    }
    break;
    
    case 2:
    h.display();
    textSize(50);
    fill(255,200,0);
    text("Victory",width/2-80,height/2+40);
    break;
    
    case 3:
    background(0);
    textSize(50);
    fill(155,0,0);
    text("Game Over",width/2-110,height/2);
    break;
  }
}
//ball is launched when mouse is clicked
void mousePressed(){
  shoot = !shoot;
  gameState = 1;
}
