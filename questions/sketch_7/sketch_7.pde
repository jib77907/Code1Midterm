// fix the nested for loop so it draws a 9x9 
// grid of ellipses, rather than the single 
// diagonal line it currently draws.

int size = 50;
void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 50; i < width; i+=size) {
    for (int j = 50; j < height; j+=size) {
      ellipse (i, j, size, size);
    }
  }
}
