float s = 1;
float e = 0;
float g = 0.05;
float p = 0.005;
float z = 3400;
void earth(float s) {
  translate(width/2, 0, 2400);
  rotateZ(-13);
  rotateY(e);
  shape(globe);
  if (e > 360) {
    e = 0;
  }
  e += g*s;
}

void moon(float s) {
  translate(0, 13, 550);
  shape(moon);
  if (s > 360) {
    s = 0;
  }
  s += 0*s;
}

void sun(float k) {
  float g = 240;
  translate(width / 2, height / 2, -z);
  rotateZ(0);
  rotateY(s);
  shape(sun);
  pointLight(g, g, g, 0, 0, 0);
  if (s > 360) {
    s = 0;
  }
  s+=p*k;
}