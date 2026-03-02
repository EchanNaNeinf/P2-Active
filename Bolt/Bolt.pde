void setup(){
  size(800,600);
}
int n = 255;
int bg = 50;
float r;
void draw(){
  background(bg);
  translate(400,300);
  bolt(n,r);
  n = n-5;
  if (bg > 0){
    bg=bg-1;
  }
  if (n <= -450){
    n = 220;
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
