void setup(){
  size(800,600);
}
int n = 255;
int nd = 1;
void draw(){
  background(0);
  translate(400,300);
  bolt(n,100);
  nd--;
  if (nd <= 0){
    n=n-10;
  }
  if (n <= -600){
    n = 220;
    nd = 105;
  }
}
void bolt(int opac, int x){
  fill(255,255,255,opac);
  noStroke();
  quad(x+10,-300,x-10,-300,x-20,-50,x,-100);
  quad(x-20,-50,x,-100,x+90,-50,x+30,-30);
  triangle(x+90,-50,x+30,-30,x,200);
}
