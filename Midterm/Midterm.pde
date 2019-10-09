//Midterm

Star [] stars;


Ship lollipop;
Star Tootsie;
SmallAsteroid [] PopRocks;
boolean Loser = false;

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
     if (!Loser) 
    stars[i].move();
  }

  //moves Ship
   if (!Loser) 
  lollipop.move();

  //displays ship
  lollipop.display();

  for (int s =0; s<PopRocks.length; s++) {

    //displays Small Asteroids
    PopRocks[s].display();

    //moves Small Asteroids
    if (!Loser) {
      PopRocks[s].move();
      PopRocks[s].collide(lollipop);
    }
  }
  if (Loser==true) {
    //(dist(lollipop.xPos1, lollipop.yPos1, xPos2, yPos2)<wide/2+lollipop.wide/2-3)
    textAlign(CENTER);
    textSize(80);
    fill(255, 0, 0);
    text("GAME OVER", 750, 500);
  }
  //if (Loser==false) {
  //}
}
