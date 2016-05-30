

class RVector {
  float x;
  float y;
//creates the vector with two float values as its x and y components
  RVector(float x_, float y_) {
    x = x_;
    y = y_;
  }
//adds the vectors together
  void add(RVector v) {
    x += v.x;
    y += v.y;
  }
//adds the two vector parameters
  static RVector add(RVector a, RVector b) {
    RVector c = new RVector(a.x+b.x, a.y+b.y);
    return c;
  }
//subtracts vector v from the original vector
  void sub(RVector v) {
    x -= v.x;
    y -= v.y;
  }
//subtracts vector b from vector a
  static RVector sub(RVector a, RVector b) {
    RVector c = new RVector(a.x-b.x, a.y-b.y);
    return c;
  }
//multiplies the first vector by vector i
  void mult(float i) {
    x *= i;
    y *= i;
  }
//multiplies vector a and vector b together
  static RVector mult(RVector a, RVector b) {
    RVector c = new RVector(a.x*b.x, a.y*b.y);
    return c;
  }
//divides the first vector by vector i
  void div(float i) {
    x /= i;
    y /= i;
  }
//divides vector a by vector b
  static RVector div(RVector a, RVector b) {
    RVector c = new RVector(a.x/b.x, a.y/b.y);
    return c;
  }
//gets the magnitude
  float mag() {
    return(float)(Math.sqrt(x*x + y*y));
  }
//limits the magnitude of the vector
  void limit(float max){
   if(this.mag() > max)
   this.normie();
  }
//normalizes the vector
  void normie() {
    float m = mag();

    if (m != 0)
      div(m);
  }
  
  static RVector random2D(){
   return new RVector((float)Math.random()*2-1 , (float)Math.random()*2-1); 
  }
}
