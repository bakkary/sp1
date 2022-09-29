class Catcher {

  float r;
  float x, y;

  Catcher(float tempRadius) {
    r = tempRadius;
    x = width/2;
    y = height/2;
  }


  void update() {
    x = mouseX;
    y = mouseY;
  }

}
