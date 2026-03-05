void setup(){
  size(800,600);
}
int n = 0;//internal timer, lightning
int sincos = 0;//Sin/Cosine timer for all who use it
int bg = 0;//background flash
float r;//randomized position
void draw(){
  background(bg,bg/2,bg/2);
  translate(400,300);
  searchlights(sincos,100,0);
  searchlights(sincos,-100,2);
  explosion(n,r);
  mountain(0,0,-5);///mountain range
  mountain(-300,30,-4);
  mountain(150,10,-2);
  mountain(-400,0,-1);
  mountain(-100,30,0);
  mountain(300,20,1);
  mountain(350,0,2);
  mountain(-200,10,3);
  mountain(-300,20,4);
  mountain(200,30,5);
  fill(20+bg/2,20+bg/3,20+bg/3);
  rect(-400,0,800,100);
  fill(40+bg/3,40+bg/4,40+bg/4);
  rect(-400,50,800,100);
  fill(60+bg/4,60+bg/5,60+bg/5);
  rect(-400,150,800,150);
  twig(sincos,30,200);
  n = n-5;
  sincos++;
  if (bg > 0){//background darkener BUT not below zero
    bg=bg-1;
  }
  if (n <= -600){//begin flash
    n = 300;
    bg = 50;
    r = random(-400, 400);
  }
}
void mountain(int x, int y, int tint){
  fill(10+bg/1.5+tint,10+tint+bg/2,10+tint+bg/2);
  triangle(-100+x,20+y,100+x,20+y,x,-100+y);
}
void explosion(int opac, float x){
  fill(200,0,0,opac/1.5);
  noStroke();
  circle(x,-25,(330-opac)/2);
  fill(200,200,0,opac/1.5);
  circle(x,-25,(300-opac)/2);
}
void searchlights(float timer,int offset,int cosadd){
  fill(100);
  triangle(cos(timer/100+cosadd)*100+offset,-300,sin(timer/100+cosadd)*100+offset,-300,offset,40);
}
void twig(float timer,int x,int y){
  float e = sin(timer/30);
  fill(90,60,60);
  quad(x+5,y+40,x-5,y+40,x-5+3*e,y-20,x+3*e+5,y-20);
  triangle(x-5+3*e,y-20,x+3*e+5,y-20,x+10+6*e,y-70);
  triangle(x-5+3*e,y-20,x+3*e+5,y-20,x-20+6*e,y-80-4*e);
  fill(50);
  quad(x+5,y+40,x-5,y+40,x-5-3*e,y+100,x-3*e+5,y+100);
}
