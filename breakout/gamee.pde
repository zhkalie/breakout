void game() {
  background(cherrychiffon);
  

  //paddle-------------------------------------------
  fill(white);
  circle(px, py, pd);
  if (ak) px = px - 5;
  if (dk) px = px + 5;
  
    //moving paddles
  if (ak == true) ly = ly - 5;
  if (dk == true) ly = ly + 5;
    
  
  //ball---------------------------------------------
  fill(white);
  circle(bx, by, bd);
    //movement
  bx = bx + vx;
  by = by + vy;
  
  //bounce
  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx - px)/10;
    vy = (by - py)/10;
  }
  if (by < bd/2 || by > height-bd/2) {
    vy = vy * -1;
  }
  if (bx < bd/2 || bx > width-bd/2) {
    vx = vx * -1;
  }
  
  //bricks------------------------------------------
  //circle(x[0], y[0], brickd);
  //circle(x[1], y[1], brickd);
  //circle(x[2], y[2], brickd);
  
  int i = 0;
  while (i < n) {
    circle(x[i], y[i], brickd);
    if (dist(bx, by , x[1], y[1]) < bd/2 + brickd/2) {
      vx = (bx - x[1])/10;
      vy = (by - x[1])/10;
    }
    i = i + 1;
  }
}

void gameclick(){
  
  
}
