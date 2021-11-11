int Branching =7;
void setup()
{
  size(512,512);
  background(0);
  stroke(255);
  strokeWeight(4);
  noFill();
}
void draw()
{
  translate(width/2, 7*height/8);
  tree(height/4, PI/5, 1.41, Branching);
}
//make a tree by recursion
void tree(float sz, float a, float sf, int n)
{
  if(n==0)
    return;  //terminate if n is zero
  line(0,0,0,-sz); //draw a line
  if (n==1) // if end of tree draw a leaf
    ellipse(0,-sz, 16, 8);
  --n; // decrement Branching 
  pushMatrix(); // save coordinate System
  translate(0, -sz); //move to end of branch
  rotate(a); //rotate by angle
  tree(sz/sf, a, sf, n); //draw a tree
  rotate(-2*a); //rotate other way
  tree(sz/sf, a, sf, n); //draw a tree
  popMatrix(); //restore coordinate
}