//class Small Asteroid

class SmallAsteroid {

  //variables for small asteroid
  float xPos;
  float yPos;

  PImage photo;

  SmallAsteroid() {

    //position of small asteroid
    xPos = random(width);
    yPos = 0;

    photo = loadImage("smallasteroids.png");
  }

  void display() {

    //Small Asteroid
    image(photo, xPos, yPos);
  }

  void move() {
    yPos = yPos + 2;
    if (yPos > 1000) {
      yPos = 0;
      xPos = random(width);
    }
  }
}
