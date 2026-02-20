void setup(){
  size(400,400);
}
float x = 0;
void draw(){
  background(0);
  shape(200,200,x);
  x++;
}


void shape(int X, int Y, float s){
  translate(X,Y);
  rotate(s/10);
  rect(-100,-100,200,200);
}
