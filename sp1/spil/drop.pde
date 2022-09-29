class Drop {
  float x;
  float y;
  float r;
  float speedY;
  float c;

  Drop() {
    r = 8;
    x = random(width);
    y = - r * 4;
    speedY = 5;
    c = color(50, 100, random(100, 255));
  }

  void update() {

    //the posetion of theballs
    y += speedY;
    // checking that the balls are generated in bounds
    if (y > height +r) {
      y = -r;
    }
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, r*2, r*2);
  }

  void caught() {
  }


  void reset() {
  }
}
