PImage earth;
PImage LunarS;
PImage SolarS;
PImage B;

PShape globe;
PShape moon;
PShape sun;

void setup() {
  //size(600, 600, P3D);
  //surface.setResizable(true);
  fullScreen(P3D);
  
  earth = loadImage("E.jpg");
  LunarS = loadImage("M.jpg");
  SolarS = loadImage("S.png");
  B = loadImage("SW.jpg");
  
  globe = createShape(SPHERE, 200);
  globe.setStroke(false);
  globe.setTexture(earth);
  
  moon = createShape(SPHERE, 50);
  moon.setStroke(false);
  moon.setTexture(LunarS);
  
  sun = createShape(SPHERE, 300);
  sun.setStroke(false);
  sun.setTexture(SolarS);
}

void draw(){
  background(1);
  fill(255);
  textAlign(CORNER, CORNER);
  textSize(32);
  text("Earth Moon Sun System", 10, 40);
  noStroke();
  if(keyPressed){
    lights();
  }
  if(mousePressed){
    p = 0;
    g = 0;
  } else {
    g = 0.05;
    p = 0.005;
  }
  sun(1);
  earth(1);
  moon(1);
}