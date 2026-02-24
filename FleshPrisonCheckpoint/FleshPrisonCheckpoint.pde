void setup(){
  size(600,600);
}

void draw(){
  translate(300,300);
  background(50, 10, 10);
  strokeWeight(7);
  fill(100, 25, 25);
  stroke(0);
  triangle(-100,300,100,300,0,100);//drawing top and bottom triangles
  triangle(-50,-100,50,-100,0,-400);
  for(int n = 0; n < 3;n++){//loop through 3 times for each layer
    PrisonSide(0,-200,-200,0,50,50,0,n);
    PrisonSide(0,200,200,0,50,50,120,n);
    PrisonSide(200,0,0,-200,50,50,100,n);
    PrisonSide(-200,0,0,200,50,50,20,n); 
  }//then, draw the mouth and details
  translate(20,40);
  rotate(0.5);
  noStroke();
  fill(100, 25, 25);
  ellipse(0,0,200,100);
  ellipse(0,0,100,125);
  jaw(-16,true);
  jaw(5,false);
}

void PrisonSide(int x1, int y1,int x2,int y2,int x3, int y3, int tint, int n){
  if (n == 0){//first loop, draw the insides
    fill((190-tint), 180-tint, 160-tint);
    noStroke();
    triangle(x1,y1,x2,y2,x3,y3);
  }else if (n == 1){//second loop, draw the red lines
    stroke(150, 25, 25);
    line(x2,y2,x3,y3);
  }else{//last loop, draw the black lines
    stroke(0);
    line(x1,y1,x2,y2);
  }
}
void jaw(int y,boolean top){
  noStroke();
  int m = 16;
  if (top){//switches circle positioning based on side of jaw
    m = 4;
  }
  fill(190, 180, 160);
  for(int n = -3; n < 4;n++){//loop through 6 times for each tooth
    rect(15*n-7,y+5-2.5*(Math.abs(n)),14,14);
    circle(15*n,y+m+(n^2)/5-2.5*(Math.abs(n)),14);
  }
  
}
