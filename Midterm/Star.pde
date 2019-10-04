class Star {

  //setting ints to call later 
  float x;
  float y;

  Star() {

    //making random placment of stars
    x = random(width);
    y = random(height);
  }

  void display() {
    fill(255);
    ellipse(x, y, 10, 10);
  }

  void move() {
    y = y + 2;
    if (y > 1000) {
      y = 0;
      x = random(width);
    }
  }
}
