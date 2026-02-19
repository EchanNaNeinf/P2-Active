//Evan C. 2-1 Feb 19
//Firemodes: Lazy and Efficient 
int x = 0;
int firemode = 0;
void setup(){
  size(400,400);
}

void draw(){
  noFill();
  strokeWeight(10);
  background(255);
  switch(firemode){
    case 0:
      stroke(0,200,0);
      circle(x,200,100);//sliding right
    case 1:
      stroke(0,0,200);
      circle(200,x,100);//sliding down
    case 2:
      stroke(200,200,0);
      circle(x,x,100);//sliding down and right
    case 3:
      stroke(200,0,0);
      circle(200,200,x);//growing
    case 4:
      stroke(100);
      circle(150,x,100);//sliding down offset
      circle(250,400-x,100);
    case 5:
      stroke(0,200,200);
      circle(x,200,x);//sliding and growing
  }
  x++;
  if(x == 400){
    x=0;
    firemode++;
    if(firemode == 6){
      firemode = 0;
    }
  }
}
