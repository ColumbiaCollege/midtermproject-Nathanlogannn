//Midterm

Star [] stars;


Ship lollipop;
Star Tootsie;
SmallAsteroid [] PopRocks;
//Circle shield;

void setup() {
  size(1500, 1000);
  stars = new Star[100];
  PopRocks = new SmallAsteroid[100];
  for (int i =0; i<stars.length; i++) {
    stars[i] = new Star();
  }

  for (int s =0; s<PopRocks.length; s++) {
    PopRocks[s] = new SmallAsteroid();
  }
  
  lollipop = new Ship();
  Tootsie = new Star();
}


void draw() {

  //space
  background(0);

  for (int i =0; i<stars.length; i++) {

    //displays Stars
    stars[i].display();

    //moves Stars
    stars[i].move();
  }

  //moves Ship
  lollipop.move();

  //displays ship
  lollipop.display();

  for (int s =0; s<PopRocks.length; s++) {

    //displays Small Asteroids
    PopRocks[s].display();

    //moves Small Asteroids
    PopRocks[s].move();
    PopRocks[s].collide(lollipop);
  }
}
