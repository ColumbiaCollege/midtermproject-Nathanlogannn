// class Ship

class Ship {

  // properties of Ships -- variables associated to ships

  // varibale for ship
  float xPos1;
  float yPos1;
  //image of spaceship
  PImage photo;
  float wide = 70;

  // constructor --  this is how Ships get made
  Ship() {

    //position of ship
    xPos1 = width/2;
    yPos1 = height/2;

    //image of spaceship
    photo = loadImage("spaceship.png");
  }

  //methods -- things that ships do

  void display() {

    //spaceship
    imageMode(CENTER);
    image(photo, xPos1, yPos1, 70,70);
    //shield
    fill(0,255,255, 70);
    ellipse(xPos1,yPos1,83,83);

    //protection to keep on screen
    if (xPos1 > 1500) { 
      xPos1 = 0;
    }
    if (xPos1 < 0) {
      xPos1 = 1500;
    }
    if (yPos1 < 0) {
      yPos1 = 1000;
    }
    if (yPos1 > 1000) {
      yPos1 = 0;
    }
  }

  void move() {

    //user controlled movement

    //left
    if (keyPressed) {
      if (key == 'a') {
        xPos1 = xPos1 - 5;
      }
    }
    //up
    if (keyPressed) {
      if (key == 'w') {
        yPos1 = yPos1 - 5;
      }
    }
    //right
    if (keyPressed) {
      if (key == 'd') {
        xPos1 = xPos1 + 5;
      }
    }
    //down
    if (keyPressed) {
      if (key =='s') {
        yPos1 = yPos1 + 5;
      }
    }
  }
}
