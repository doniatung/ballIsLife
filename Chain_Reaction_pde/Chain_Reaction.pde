Ball[] balls = new Ball[50];
boolean reactionStarted;
float sizeCtr;

void setup(){
  size(600,600);
  for (int i = 0; i < balls.length; i++){
     balls[i] = new Ball(); 
  }
  reactionStarted = false;
  sizeCtr = 0;

}

void draw(){
  sizeCtr = .5;
  background(0);
  for (Ball i: balls){
     i.display();
     i.move(); 
  }
  
  for (Ball i: balls){
     if (i.isMouseWithin() && mousePressed){
         reactionStarted = true;
         i.endMove();
         i.isAffected = true;
     }
     
     if (reactionStarted){
       for (Ball n: balls){
          if (i.isAffected && i.isOtherBallTouching(n)){
             n.endMove();
             n.grow(sizeCtr);
             n.isAffected = true;
             n.shrink(sizeCtr);
          }
       }  
     }
     
     
  }

}

