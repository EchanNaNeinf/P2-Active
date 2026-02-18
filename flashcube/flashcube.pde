int a = 0;
int b = 0;
void setup(){
  size(400,400);
}
void draw(){
  background(0);
  fill(a,0,0);
  if (a <= 0){
    b = 100;
    a = 255;
  }
  rect(100,100,200,200);
  if (b >= 0){
    b = b-1;
  }else{
    a=a-10;
  }
}
