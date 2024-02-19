class Ball {
  float x, y;
  float angle;
  float velocity;

  float dx, dy;
  color c;

  int radius;

  int h = height;
  int w = width;

  Ball() {
    x = random(0, height);
    y = random(0, width);
    angle = random(0, TWO_PI);
    velocity = random(0, 10);

    dx = velocity * cos(angle);
    dy = velocity * sin(angle);

    c = color(random(255), random(255), random(255));

    radius = 20;
  }

  void move() {
    x += dx;
    y += dy;

    if (abs(x - w/2) > w/2) {
      dx = -dx;
    }
    if (abs(y - h/2) > h/2) {
      dy = -dy;
    }
  }

  void display() {
    move();
    fill(c);
    circle(x, y, radius);
  }
}
