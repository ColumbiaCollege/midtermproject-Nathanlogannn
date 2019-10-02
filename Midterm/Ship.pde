// class Ship

class Ship {

  // properties of Ships -- variables associated to ships

  // varibale for ship
  float xPos;
  float yPos;
  //image of spaceship
  PImage photo;

  // constructor --  this is how Ships get made
  Ship() {

    //position of ship
    xPos = width/2;
    yPos = height/2;

    //image of spaceship
    photo = loadImage("spaceship.png");
  }

  //methods -- things that ships do

  void display() {

    //spaceship
    image(photo, xPos, yPos);

    //protection to keep on screen
    if (xPos > 1500)
    { 
      xPos = 0;
    }
    if (xPos < 0) {
      xPos = 1500;
    }
    if (yPos < 0) {
      yPos = 1000;
    }
    if (yPos > 1000) {
      yPos = 0;
    }
  }

  void move() {

    //user controlled movement

    //left
    if (keyPressed) {
      if (key == 'a') {
        xPos--;
      }
    }
    //up
    if (keyPressed) {
      if (key == 'w') {
        yPos--;
      }
    }
    //right
    if (keyPressed) {
      if (key == 'd') {
        xPos++;
      }
    }
    //down
    if (keyPressed) {
      if (key =='s') {
        yPos++;
      }
    }
  }
}
