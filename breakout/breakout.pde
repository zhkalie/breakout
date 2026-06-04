
//framework
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

//font
PFont matcha;


//colour
color cherrychiffon = #FCDFE5;
color sweetiepink = #FFB5C6;
color pinksnow = #FFECF1;

color red = #FCDCE1;
color orange = #FFE6BB;
color yellow = #F2F0C6;
color green = #CDE9DC;
color blue = #C4DFE5;
color purple = #F0D9EF;
color black = #000000;
color white = #FFFFFF;

//game entities
float bx, by, bd; //ball
float vx, vy; //speed
float px, py, pd; //padles

//keyboard variables
boolean ak, dk;

//brick variables
int[] x; // declaration
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;


void setup() {
  size(800, 850);
  mode = game;
  
  matcha = createFont("Matcha Cih.ttf", 130);
  
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  //set up
  bx = width/2;
  by = height-200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 1;
  
  //array
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
  
  
  //x[0] = 100;
  //y[0] = 100;
  
  //x[1] = 400;
  //y[1] = 100;
  
  //x[2] = 700;
  //y[2] = 100;
  
  //x[3] = 100;
  //y[3] = 200;
  
}

void draw() {
  if (mode == intro) {
    intro();
  }else if (mode == game) {
    game();
  }else if (mode == pause) {
    pause();
  }else if (mode == gameover) { 
    gameover();
  }else {
    println("Error: Mode = " + mode);
  }
}
