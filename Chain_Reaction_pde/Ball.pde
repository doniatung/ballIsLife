class Ball {

  float x, y, rad, dx, dy;
  color c;

  Ball() { 
     x = random(600);
     y = random(600);
     rad = 15;
    float r = random(256);
    float g = random(256);
    float b = random(256);
     c = color(r,g,b);
    fill(c); 
    ellipse(x, y, rad, rad );
    dx = 1;
    dy = 1;
  }

 

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }
  
  void bounce(){
    if (x == displayWidth || x == 0){
      dx = -dx;
    }
    else if (y == displayHeight || y == 0){
    dy = -dy;      
    }
  }

  void grow() {
    if (rad < 15){
      rad ++;
    }
  }

  void shrink() {
    if (rad > -1){
       rad--; 
    }
  }
}