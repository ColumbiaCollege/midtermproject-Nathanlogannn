class Star {

  //setting ints to call later 
  float x;
  float y;

  Star() {

    //making random placment of stars
    x = random(width);
    y = random(height);
  }

  //displays the random distribution of stars within the background
  void display() {
    fill(255);
    ellipse(x, y, 10, 10);
  }

  //moves the array of stars in the background
  void move() {
    y = y + 2;
    if (y > 1000) {
      y = 0;
      x = random(width);
    }
  }
}
