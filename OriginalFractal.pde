public void setup(){
  size(500,500);
}
public void draw(){
  background(0);
  myFractal(-160, -40, 119);
  if(mousePressed == true){
    strokeWeight(10);
  } else {
    strokeWeight(1);
  }


}
public void myFractal(int x, int y, int size){
  //ellipse(x, y, size, size);
  //rect(x,y,size,height-x);
  //if(size > 10){
  //  myFractal(x*2, y+12, size-15);
  //  myFractal(x+5, y+12, size-3);
  //}
  fill(size,x,y);
  ellipse(x, y, size, size);
  rect(x,y+50,height-y,size);
  if(size > 10){
    myFractal(x+12, y*2, size-15);
    myFractal(x+12, y+5, size-3);
  }
}
