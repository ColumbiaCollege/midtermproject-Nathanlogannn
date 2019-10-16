//Nathan Logan

//Midterm

//arrays and classes implemented
Star [] stars;
Ship lollipop;
SmallAsteroid [] PopRocks;

int Score;
//lose condition boolean
boolean Loser = false;

void setup() {
  size(1500, 1000);
  
  //array of how many stars
  stars = new Star[100];
  //array of how many asteroids
  PopRocks = new SmallAsteroid[100];

  //array for stars in background
  for (int i =0; i<stars.length; i++) {
    stars[i] = new Star();
  }

  //array for asteroids 
  for (int s =0; s<PopRocks.length; s++) {
    PopRocks[s] = new SmallAsteroid();
  }

  //Ship implementation in the setup
  lollipop = new Ship();
}


void draw() {

  //space
  background(0);

  //draw loop to make stars appear moving
  for (int i =0; i<stars.length; i++) {

    //displays Stars
    stars[i].display();

    //checks lose condition
    if (!Loser) 
      //moves Stars
      stars[i].move();
  }

  //checks lose condition
  if (!Loser) 
    //moves ship
    lollipop.move();

  //displays ship
  lollipop.display();

  //drawing the array of asteroids
  for (int s =0; s<PopRocks.length; s++) {

    //displays Small Asteroids
    PopRocks[s].display();

    //moves Small Asteroids
    if (!Loser) {
      PopRocks[s].move();
      PopRocks[s].collide(lollipop);
    }
  }

  //lose condition
  if (Loser==true) {
    textAlign(CENTER);
    textSize(80);
    fill(255, 0, 0);
    //displays GAME OVER when a collision/lose condition is true
    text("GAME OVER", 750, 500);
    textAlign(LEFT);
  }
  //Displays Score
  textMode(CENTER);
  fill(255);
  textSize(20);
  text("Score: " + Score, 20, 20);
}
