Ball[] balls;
boolean reactionStarted;

void setup(){
  size(1200, 1200);
  reactionStarted = false;
  Ball[] balls = new Ball[10];
  for (int i = 0; i < balls.length; i++){
     balls[i] = new Ball();
  }
   
}
  
void draw(){
  background(0);
  for (int i = 0; i < balls.length; i++){
     balls[i].move();
  }
}
  
  