// fix the nested for loop so it draws a 9x9 
// grid of ellipses, rather than the single 
// diagonal line it currently draws.

int size = 50;
void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 50; i < 10; i+=size) {
    for (int j = 50; j < 10; j+=size) {
      ellipse (i *60, j*60, size, size);
    }
  }
}
