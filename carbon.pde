class carbon extends atom {
  
 carbon(int x,int y){
  super(x, y);
  size = 12;
  bonds = 4;
  element = 'C';
 }
 
   void be() {
    color c = color(50,50,50);
    fill(c);
    ellipse(location.x, location.y, size, size);
    location.add(velocity);
    this.checkEdges();
  }
  
  
}
