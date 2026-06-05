void game() {
  background(cherrychiffon);
  

  //paddle-------------------------------------------
  fill(white);
  circle(px, py, pd);
  if (ak == true) px = px - 5;
  if (dk == true) px = px + 5;
  
    
  
  //ball---------------------------------------------
  fill(white);
  circle(bx, by, bd);
    //movement
  bx = bx + vx;
  by = by + vy;
  
  //bounce off paddle
  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx - px)/10;
    vy = (by - py)/10;
  }
  
  
  //if (by < bd/2 || by > height-bd/2) {
  //  vy = vy * -1;
  //}
  
  //top wall collision
  if (by <= bd/2) {
    by = bd/2 + 1;
    vy *= -1;
  }
  
  //left and right wall collisions
  if (bx >= width-bd/2) {
    bx = width - bd/2 - 1;
    vx *= -1;
  }
  
  if (bx <= bd/2) { 
    bx = bd/2 + 1;
    vx *= -1;
  }
  

  
  //bricks------------------------------------------
  //circle(x[0], y[0], brickd);
  //circle(x[1], y[1], brickd);
  //circle(x[2], y[2], brickd);
  
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      managebrick(i);
    }
    i = i + 1;
  }
}

void gameclick(){
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 850) {
    mode = pause;
    }
}


void managebrick (int i) {
    if (y[i] == 100) fill(purple);
    if (y[i] == 200) fill(blue);
    if (y[i] == 300) fill(green);
    if (y[i] == 400) fill(orange);
    if (y[i] == 500) fill(yellow);
    circle(x[i], y[i], brickd);
    if (dist(bx, by , x[i], y[i]) < bd/2 + brickd/2) {
      vx = (bx - x[i])/10;
      vy = (by - y[i])/10;
      alive[i] = false;
    }
  
}
