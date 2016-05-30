class atom {
  int size;
  int bonds;
  RVector location;
  RVector velocity;
//generates the atom(see RVector constructor) with a random velocity vector
  atom(int x, int y) {
    location = new RVector(x, y);
    velocity = new RVector(random(12)-6, random(12)-6);
  }
//renders and colours the atom, moves it, and checks its velocity
  void be() {
    color c = color(0,0,0);
    fill(c);
    ellipse(location.x, location.y, size, size);
    location.add(velocity);
    this.checkEdges();
  }
//if the atom approaches an edge, it moves to the other edge
void checkEdges() {
    if (location.x>width){
      location.x=0;
    }
    else if (location.x<0) {
      location.x=width;
    }
    
  if (location.y>height){
      location.y=0;
    }
    else if (location.y<0) {
      location.y=height;
    }
}
}
