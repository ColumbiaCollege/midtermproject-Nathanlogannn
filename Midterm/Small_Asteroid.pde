//class Small Asteroid

class SmallAsteroid {

  //variables for small asteroid
  float xPos2;
  float yPos2;
  float wide = 62;
  float high = 72;

  PImage photo;

  SmallAsteroid() {

    //position of small asteroid
    xPos2 = random(width);
    yPos2 = random(-5000, -300);

    //image of asteroids
    photo = loadImage("smallasteroids.png");
  }

  void display() {

    //Small Asteroid
    image(photo, xPos2, yPos2, wide, wide);
  }

  void move() {

    //random placement of asteroids within a -5000 to -300 y axis position
    yPos2 = yPos2 + 5;
    if (yPos2 > 1000) {
      yPos2 = random(-5000, -300);
      xPos2 = random(width);
    }
  }

  //collision condition
  void collide(Ship lollipop) {
    if (dist(lollipop.xPos1, lollipop.yPos1, xPos2, yPos2)<wide/2+lollipop.wide/2-3)

      //lose condition/boolean
      Loser= true;
  }
}
