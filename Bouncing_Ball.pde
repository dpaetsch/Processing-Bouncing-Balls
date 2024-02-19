int Balls = 200;

ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(1000, 1000);

  for (int i = 0; i < Balls; i++)
    balls.add(new Ball());
}

void draw() {
  background(0);

  for (int i = 0; i < Balls; i++)
    balls.get(i).display();
}
