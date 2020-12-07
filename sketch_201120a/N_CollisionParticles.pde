class collision extends GameObject{
  int t;

    collision() {
      int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Asteroid) {
        if (dist(myShip.loc.x, myShip.loc.y, myObj.loc.x, myObj.loc.y) < myShip.size/2 + (myObj.size)/2) {
          lives = lives -1;
    loc = myObj.loc.copy();
    
        }
      }
      i++;
    }
    vel = new PVector(1,0);
    vel.setMag(15);
    vel.rotate(random(0, 2*PI));
    size = 1;
    lives = 1;
    t = 255;
  }
  void act() {
    super.act();
    dieOffScreen();
  }

  void show() {
    fill(0, t);
    stroke(#D10206, t);
    strokeWeight(3);
    t = t -10;
    if(t == 0){
      lives = 0;
    }
    rect(loc.x, loc.y, size, size);
  }
}
