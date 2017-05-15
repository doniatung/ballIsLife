  public class Ball{
   float x, y, dx, dy, rad, maxSize;
   int r, g, b;
   color c;
   boolean isAffected, reachedMaxSize;
   
   Ball(){
     x = random(width/2-width/4, width/2+width/4);
     y = random(height/2-height/4, height/2+height/4);
     rad = 30;
     maxSize = 200;
     dx = random(-5,5);
     dy = random(-5,5);
     c = color(random(256), random(256), random(256));
     isAffected = false;
     reachedMaxSize = false;
   }
   
   /********************************
   display() - draws ball of random fill color
   ********************************/
   void display(){
     fill(c);
     ellipse(x,y,rad,rad);
   }
   
   /********************************
   move() - bounces ball within the display screen
   ********************************/
   void move(){
     x += dx;
     y += dy;
     if (x < 0 + rad/2 || x > height-rad/2){
       dx = -dx;
     }
     if (y < 0 + rad/2 || y > width-rad/2){
       dy = -dy;
     }
   } // end move
   
   /********************************
   endMove() - stops ball
   ********************************/
   void endMove(){
      dx = 0;
      dy = 0;
   }
   
   /********************************
   display(float) - increases size of ball
   ********************************/
   void grow( float i ){
     if (!reachedMaxSize && rad < maxSize){
        rad = rad + i; 
     }
     if (rad >= maxSize){
        reachedMaxSize = true; 
     }
   } // end grow
   
   /********************************
   shrink(float) - decreases size of ball until it reaches less than 
   or equal to 0
   ********************************/
   void shrink(float i){
     if (reachedMaxSize && rad > 0) {
        rad = rad - i; 
     }
   } // end shrink
   
   /********************************
   isMouseWithin() - checks if mouse is within the area of the ball
   ********************************/
   boolean isMouseWithin(){
     if (mouseX>x-rad/2 && mouseX<x+rad/2 &&
         mouseY>y-rad/2 && mouseY<y+rad/2){
         return true;
      }
      return false;
   }
   
   /********************************
   isOtherBallTouching(Ball) - checks if another ball is touching this ball
   ********************************/
   boolean isOtherBallTouching(Ball b){
     if (dist(b.x,b.y,x,y) <= b.rad/2 + rad/2){
       return true;
     }
     return false;
   }
   
   
}// end class Ball