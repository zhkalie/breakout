void gameover() {
  background(cherrychiffon);
  println(mouseX, mouseY);
  
  text("*", 100, 100);
  text("*", 350, 250);
  text("*", 760, 300);
  text("*", 215, 610);
  text("*", 615, 50);
  text("*", 50, 690);
  text("*", 590, 700);
  text("*", 760, 810);
  text("*", 260, 800);
  
  fill(white);
  textSize(100);
  textFont(matcha);
  text("Gameover!", width/2, 400);
  fill(sweetiepink);
  text("Gameover!", width/2 - 10, 400);
  
  textSize(40);
  fill(white);
  text("click anywhere to play again!", width/2, 480);
  
  textSize(35);
  fill(sweetiepink);
  text("Highscore: " + highscore, width/2, 650);
  
  if(score > highscore) {
    highscore = score;
  }
  
}

void gameoverclick(){
  mode = intro;
  //music.rewind();
  
  
}
