// this sketch uses a 2d array to store colors that 
// will be used to draw rectangles in a grid. 

// change the draw loop so that it draws evenly spaced 
// rectangles across the screen, and add a conditional 
// to make sure that once a color turns white, it returns 
// back to black as seen in the example gif.

int gridW = 20;
int gridH = 20;
float[][] greyColors = new float[gridW][gridH];

void setup() {
  size(600, 600);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
    }
  }
}

void draw() {
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j]+=1;
      fill(greyColors[i][j]);
      rect(map(i, 0, gridW, 0, width), map(j, 0, gridH, 0, height), width/gridW, height/gridH);

      if (greyColors[i][j] >= 255) {
        greyColors[i][j] = 0; //map(j * gridW + i, 0, gridW * gridH, 0, 0);
   
        fill(greyColors[i][j]);
        greyColors[i][j]+=1;
      }
    }
  }
}
