ArrayList<atom> atoms = new ArrayList<atom>();

void setup() {
  size(600, 600);
  //atoms.add(new carbon(300,300));
}

void draw() {
  background(255);
  for (int i=0; i<atoms.size(); i++) {
    //renders all the atoms
    atoms.get(i).be(); 
    for (int j=0; j<atoms.size(); j++) {
      //checks collisions for each atom
      if(i != j && atoms.get(i).velocity != atoms.get(j).velocity)
     collision(atoms.get(i) , atoms.get(j));
      
    }
  }
  
  
}

void collision(atom a, atom b){
  //finds the hypotenuse of the atoms and checks if theyre less than the discance between the centres :: 
  if(sqrt(pow(a.location.x-b.location.x,2)+pow(a.location.y-b.location.y,2)) < (a.size/2)+(b.size/2) && a.bonds > 0 && b.bonds > 0){
    
    a.velocity.x = (a.velocity.x+b.velocity.x)/2;
    a.velocity.y = (a.velocity.y+b.velocity.y)/2;
    b.velocity.x = (a.velocity.x+b.velocity.x)/2;
    b.velocity.y = (a.velocity.y+b.velocity.y)/2;  
    
    //see: other version for bond subtractions
    //a.bonds -= 1;
    //b.bonds -= 1; 
    
  }

}


void keyPressed() {
  //adds atoms based on what key was pressed
  switch(key) {
  case 'c': 
    atoms.add(new carbon(mouseX, mouseY));
    break;
  case 'o': 
    atoms.add(new oxygen(mouseX, mouseY));
    break;
  case 'h': 
    atoms.add(new hydrogen(mouseX, mouseY));
  }
}
