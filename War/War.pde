void setup(){
  size(800,600);
}
int n = 0;//internal timer, lightning
int st = 0;//searchlights
int bg = 0;
float r;
void draw(){
  background(bg);
  translate(400,300);
  searchlights(st,100,0);
  searchlights(st,-100,2);
  fill(40+bg/2.5);
  rect(-400,0,800,300);
  bolt(n,r);
  n = n-5;
  st++;
  if (bg > 0){//background darkener BUT not below zero
    bg=bg-1;
  }
  if (n <= -600){//begin flash
    n = 300;
    bg = 50;
    r = random(-400, 400);
  }
}
void bolt(int opac, float x){
  fill(255,255,255,opac);
  noStroke();
  quad(x+120,-300,x+50,-300,x-30,-160,x+40,-150);
  quad(x-30,-160,x+40,-150,x+90,-50,x+50,-30);
  triangle(x+90,-50,x+50,-30,x,50);
}
void searchlights(float timer,int offset,int cosadd){
  fill(100);
  triangle(cos(timer/100+cosadd)*100+offset,-300,sin(timer/100+cosadd)*100+offset,-300,offset,40);
}
