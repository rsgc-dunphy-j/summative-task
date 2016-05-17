class atom{
int size;
char element;
RVector location;
RVector velocity;

  atom(int x, int y){
    location = new RVector(x, y);
    velocity = new RVector(random(5), random(5));
  }
  
  
  
}
