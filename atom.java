class atom{
int size;
char element;
RVector location;
RVector velocity;

  atom(int x, int y){
    location = new RVector(x, y);
    velocity = new RVector(Math.random()*5, Math.random()*5);
  }
  
  
  
}
