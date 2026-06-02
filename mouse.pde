void mouseReleased() {   
  
  if (mode == intro) {
    introclick();
  }else if (mode == game) {
    gameclick();
  }else if (mode == pause) {
    pauseclick();
  }else if (mode == gameover) { 
    gameoverclick();
  }else {
    println("Error: Mode = " + mode);
  }
  
}
