void riddle() {
  
  // values to draw the rectangles
  int x = 150;
  int xRect = 80;
  int rWidth = 200;
  int rHeight = 100;
  int margin = 20;

  image(background[1], -100, -50);    // Uses photo for background

  fill(255, 0, 0, 255);
  textSize(30);
  text("The Doors of Durin, Lord of Moria. Speak, friend, and enter.", width * 0.08, height * 0.08);
  textSize(20);
  text("Choose a password", width * 0.7, height * 0.15);
  text("But be wary...", width * 0.75, height * 0.2);
  strokeWeight(5);

// Loops used here
  for (int i = 0; i < 3; i++) {                      // Rectangle HITTEST used here
    if (hitTest(mouseX, mouseY, xRect, 96 + i * (rHeight + margin), rWidth, rHeight)) {          // If mouse is on a rectangle, make its stroke green. Also show the appropriate word for that box 
      stroke(0, 255, 0);
      textSize(25);
      fill(255, 0, 0, 255);
      if (i == 0) {
        text("Drego", x, 160);
      } else if (i == 1) {
        text("Mellon", x, 270);
      } else if (i == 2) {
        text("Aiglos", x, 390);
      }
    } else {
      stroke(255);                                          // Else it is a white stroke
    }                                                      // Drawing shapes and attributes used here
    fill(77, 50);    // Gray fill with transparency
    rect(xRect, 96 + (i * (rHeight + margin)), rWidth, rHeight);          // Draws rectangles
  }

  // Conditionals used here
  if (stage[1]) {            // Hittest to test if the right box was clicked on. Sends you to the appropriate stage depending on what you clicked.
    if (mousePressed && hitTest(mouseX, mouseY, xRect, 96 + (rHeight + margin), rWidth, rHeight)) {
      stage[1] = false;
      stage[2] = true;
    } else if (mousePressed && (hitTest(mouseX, mouseY, xRect, 96, rWidth, rHeight) || hitTest(mouseX, mouseY, xRect, 96 + 2 * (rHeight + margin), rWidth, rHeight))) {
      stage[1] = false;
      stage[3] = true;
    }
  }
}