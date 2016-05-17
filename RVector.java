

class RVector {
  float x;
  float y;

  RVector(float x_, float y_) {
    x = x_;
    y = y_;
  }

  void add(RVector v) {
    x += v.x;
    y += v.y;
  }

  static RVector add(RVector a, RVector b) {
    RVector c = new RVector(a.x+b.x, a.y+b.y);
    return c;
  }

  void sub(RVector v) {
    x -= v.x;
    y -= v.y;
  }

  static RVector sub(RVector a, RVector b) {
    RVector c = new RVector(a.x-b.x, a.y-b.y);
    return c;
  }

  void mult(float i) {
    x *= i;
    y *= i;
  }

  static RVector mult(RVector a, RVector b) {
    RVector c = new RVector(a.x*b.x, a.y*b.y);
    return c;
  }

  void div(float i) {
    x /= i;
    y /= i;
  }

  static RVector div(RVector a, RVector b) {
    RVector c = new RVector(a.x/b.x, a.y/b.y);
    return c;
  }

  float mag() {
    return(float)(Math.sqrt(x*x + y*y));
  }
  
  void limit(float max){
   if(this.mag() > max)
   this.normie();
  }

  void normie() {
    float m = mag();

    if (m != 0)
      div(m);
  }
  
  static RVector random2D(){
   return new RVector((float)Math.random()*2-1 , (float)Math.random()*2-1); 
  }
