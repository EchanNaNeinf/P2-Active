// Evan C. 2-1, Feb 19

void setup(){
  size(400,400);
}
void draw(){
  background(mouseX, mouseY, mouseX+mouseY/2);
  fill(mouseX);
  strokeWeight(mouseY);
  circle(mouseX, mouseY, 100);
  
}
