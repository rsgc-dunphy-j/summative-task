class hydrogen extends atom{
  
hydrogen(int x,int y){
 super(x,y);
 bonds = 1;
 size = 6;
 element = 'H';
}

  void be() {
    color c = color(200,0,0);
    fill(c);
    ellipse(location.x, location.y, size, size);
    location.add(velocity);
    this.checkEdges();
  }
  
}
