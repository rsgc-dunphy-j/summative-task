class atom {
  int size;
  char element;
  int bonds;
  RVector location;
  RVector velocity;

  atom(int x, int y) {
    location = new RVector(x, y);
    velocity = new RVector(random(12)-6, random(12)-6);
  }

  void be() {
    color c = color(0,0,0);
    fill(c);
    ellipse(location.x, location.y, size, size);
    location.add(velocity);
    this.checkEdges();
  }

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
