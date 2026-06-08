void pause() {
  
  textSize(170);
  fill(white);
  text("Paused!", width/2, height/2);
  fill(sweetiepink);
  textSize(160);
  text("Paused!", width/2, height/2);
  
}

void pauseclick(){
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 850) {
    mode = game;
    }
}
