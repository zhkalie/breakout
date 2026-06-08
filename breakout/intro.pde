void intro() {
  background(cherrychiffon);
  println(mouseX, mouseY);
  
  fill(white);
  textSize(100);
  textFont(matcha);
  text("breakout!", width/2, height/2);
  fill(sweetiepink);
  text("breakout!", width/2 - 10, height/2);
  
  text("*", 100, 100);
  text("*", 350, 250);
  text("*", 760, 300);
  text("*", 215, 610);
  text("*", 615, 50);
  text("*", 50, 690);
  text("*", 590, 700);
  text("*", 760, 810);
  text("*", 260, 800);
}

void introclick(){
  if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 850) {
    mode = game;
    score = 0;
    lives = 3;
    brickd = 50;
  n = 35;
  
  x = new int[n]; //instantiation
  y = new int[n];
  alive = new boolean [n];
  
  tempx = 100;
  tempy = 100;
  
  int i = 0;
  while ( i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100; 
    }
    i = i + 1;
  }
    }
  
}
