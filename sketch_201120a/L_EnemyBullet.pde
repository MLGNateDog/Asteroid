class EnemyBullet extends GameObject {

  //1. Instance Variables
  float vx, vy;

  //2. Constructor
  EnemyBullet() {
    lives = 1;
    size = 10;
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof ufo) {
        loc = new PVector(myObj.loc.x, myObj.loc.y);
        vel.add(myObj.vel);
      }
    }
      i++;
  
    PVector aim = new PVector(myShip.loc.x, - loc.x, myShip.loc.y - loc.y);
    aim.setMag(5);
    vel = new PVector(aim.x, aim.y);
  }  

  void show() {
    fill(#FF0505);
    noStroke();
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(vel.heading());
    ellipse(0, 0, 2*size, size);
    popMatrix();
  }

  void act() {
    super.act();
    loc.add(vel);
    dieOffScreen();
  
  }
}
