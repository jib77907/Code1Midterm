// this sketch has the ellipse change colors 
// whenever the mouse button is pressed. 

// change the sketch so that the ellipse only changes 
// colors when the mouse is pressed INSIDE the ellipse.

boolean insideCircle;

void setup() {
  size(600, 600);
}

void draw() {
  if (mouseX < width/2 + 200 && mouseX > width/2 - 200 && mouseY < height/2 + 200 && mouseY > height/2 -200){
  insideCircle = true;
  } else {
  insideCircle = false;
  }
  
  
  background(150);
  
  
  if (mousePressed && insideCircle == true) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(width/2, height/2, 200, 200);
}
