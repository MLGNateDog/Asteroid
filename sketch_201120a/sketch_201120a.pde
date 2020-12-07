/*questions to ask pelletier:
 
 /1. how to make the spaceship lose lives when colliding with ufo, EnemyBullet, Asteroid (specifically how to refer to their loc outside of their class)
 
 2. how to make the ufo spawn on the sides of the screen and move across
 
 3. how to set a random direction for colliding particles when a collision occurs
 
 4. how to make the bullets of the spaceship come from the missile barrel instead of the loc.x, loc.y
 
 */


Spaceship myShip;
//ufo myEnemy;
ArrayList<GameObject> myObjects;

//mode setup
int mode, astCount;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OVER = 3;
final int WIN = 4;

boolean wkey, skey, akey, dkey, spacekey, offScreen, lScreenSpawn, lUfo, keyJam, touchingAsteroid, touchingEnemyBullet, enemyFire;

void setup() {
  size(1280, 960);
  mode = INTRO;
  astCount = 4;
  rectMode(CENTER);
  textAlign(CENTER);
  myShip = new Spaceship();
  wkey=akey=skey=dkey=false;
  myObjects = new ArrayList<GameObject>();
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OVER) {
    over();
  } else if (mode == WIN) {
    win();
  } else {
    println("Error mode = " + mode);
  }
}
