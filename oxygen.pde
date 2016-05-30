class oxygen extends atom{
  
oxygen(int x, int y){
 super(x,y);
 bonds = 2;
 size = 10;
}
   //Renders the atom, moves it, and checks for edge collisions
  void be() {
    color c = color(0,0,200);
    fill(c);
    ellipse(location.x, location.y, size, size);
    location.add(velocity);
    this.checkEdges();
  }
  
}
