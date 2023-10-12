PFont f;
float angleRotate = 0.0;
float m=width;
float n=height;
float k=1;
void setup() {
  size(640, 360);
  background(0);
  f = createFont("PegHolesRegular-L3lWg.ttf", 20);
  textFont(f);
} 

void draw() {
  background(0);

  strokeWeight(1);
  stroke(153);

  pushMatrix();
  if(k<2){
  scale(k);
  text( " I like scaling", 100, 130);
  
}
  k+=0.01;
  popMatrix();

  pushMatrix();
  translate(m,n);
  text( " I like hiding", 200, 0);
  m/=1.03;
  n/=1.03;
  popMatrix();
  
  pushMatrix();
  translate(440, 180);
  rotate(radians(angleRotate));
  text( " I like rotating", 0, 0);
  line(0, 0, 150, 0);
  popMatrix();
  
  angleRotate += 0.25;

  stroke(255, 0, 0);
  strokeWeight(4);
}
