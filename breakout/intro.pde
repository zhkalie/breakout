void intro() {
  background(cherrychiffon);
  
  fill(white);
  textSize(100);
  textFont(matcha);
  text("breakout!", width/2, height/2);
  fill(sweetiepink);
  text("breakout!", width/2 - 10, height/2);
}

void introclick(){
  if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 850) {
    mode = game;
    }
  
}
