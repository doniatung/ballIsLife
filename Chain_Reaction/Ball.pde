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
   
   void display(){
     fill(c);
     ellipse(x,y,rad,rad);
   }
   
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
   
   void endMove(){
      dx = 0;
      dy = 0;
   }
   
   void grow( float i ){
     if (!reachedMaxSize && rad < maxSize){
        rad = rad + i; 
     }
     if (rad >= maxSize){
        reachedMaxSize = true; 
     }
   } // end grow
   
   void shrink(float i){
     if (reachedMaxSize && rad > 0) {
        rad = rad - i; 
     }
   } // end shrink
   
   boolean isMouseWithin(){
     if (mouseX>x-rad/2 && mouseX<x+rad/2 &&
         mouseY>y-rad/2 && mouseY<y+rad/2){
         return true;
      }
      return false;
   }
   
   boolean isOtherBallTouching(Ball b){
     if (dist(b.x,b.y,x,y) <= b.rad/2 + rad/2){
       return true;
     }
     return false;
   }
   
   
}// end class Ball
