final int SIZE = 70;
final int MAX = 256;
final int GAMETIME = 30;
final int ENDWORM = 30;

final boolean ISFULLSCREEN = true;

float cookieX = -100;
float cookieY = -100;
float cookieCount = 0;

double timeSpent = 0;
double restMillis = 0;

boolean isPlay = false;
boolean isStart = true;
boolean isEnd = false;

PImage awesomeness;
PImage cookie;
PImage space;
PImage worm;

PFont Bold;

ArrayList<Ellipse> tail;
ArrayList<Ellipse> endWorm;

int [] endWormX = new int [ENDWORM];
int [] endWormY = new int [ENDWORM];

void setup() {
  //Set First Cookie
  cookieX = random(0, width);
  cookieY = random(100, height);

  timeSpent = millis();

  //Set Box Properties
  size(1024, 768);

  noStroke();
  smooth();

  //Set ArrayList
  tail = new ArrayList<Ellipse>();
  endWorm = new ArrayList<Ellipse>();

  //Load Font
  Bold = createFont("Arial Bold", 50);

  //Load Images
  worm = loadImage("SPACEWORM.png");
  worm.resize(width / 2, height / 2);
  space = loadImage("space.jpg");
  space.resize(width, height);
  awesomeness = loadImage("Awesomeness.png");
  awesomeness.resize(SIZE * 2, SIZE * 2);
  cookie = loadImage("CCCookie.png");
  cookie.resize(SIZE, SIZE);
}

void draw() {

  if (isStart == true) {
    StartMnu();
  }

  if (isPlay == true) {
    PlayGame();
    timeSpent = millis();
    if (timeSpent - restMillis > GAMETIME * 1000) {
      isStart = false;
      isPlay = false;
      isEnd = true;
    }
  }

  if (isEnd == true) {
    EndMnu();
  }
}

public class Ellipse {
  //What It Means To Be Ellipse
  int x, y;
  float r, g, b;

  //Constructor
  public Ellipse(int x1, int y1) {

    x = x1;
    y = y1;

    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }

  //Actual What Happens When You Call Class
  void draw() {

    //Draw Segments
    fill(r, g, b);
    ellipse(x, y, SIZE, SIZE);
  }
}