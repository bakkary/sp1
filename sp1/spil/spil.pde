Catcher catcher;
Drop [] drops;
int numDrops;

Timer timer;
int timeInterval;
int activeDrops;

int score;
String s;

void setup() {
  size(600, 600);
  catcher = new Catcher(16);

  numDrops = 100;
  drops = new Drop[numDrops];
  for (int i = 0; i < numDrops; i++) {
    drops[i] = new Drop();
  }
  timeInterval = 500;
  activeDrops = 0;

  timer = new Timer(timeInterval);
  timer.start();
  
  score = 0;
  s = "score: " + score;
}

void draw() {
  clearBackground();
  catcher.update();


  if (timer.complete() == true) {
    if (activeDrops < numDrops) {
      activeDrops++;
      }
      timer.start();
  }
  
  for (int i = 0; i < activeDrops; i++) {
    drops[i].update();
    drops[i].display();
    if(intersect(catcher, drops[i]) == true ) {
    drops[i].caught();
    score++;
    
    }
  }
  
  textSize(12);
  textAlign(LEFT);
  fill(255, 0 , 0);
  s = "Score: " +score;
  text(s, 10, 20);
}

void clearBackground() {
  fill (255);
  rect(0, 0, width, height);
}

boolean intersect(Catcher a, Drop b) {
  float distance = dist (a.x, a.y, b.x, b.y);
  if (distance < a.r+b.r) {
    return true;
  } else {
    return false;
  }
}
