void bridgeFight() {

   // For the  size of the two bars
  float barLength = 400;     
  float barHeight = 50;
  float iBarLength = q;
  float iBarHeight = 40;

  image(background[2], 0, 0);
  noStroke();
  fill(255);
  rect(550, 700, barLength, barHeight);  // Draws big white bar
  fill(0, 255);
  rect(550, 705, iBarLength, iBarHeight);  // Draws inner black bar
  textSize(20);
  fill(255, 0, 0);
  text("Tap 'A' rapidly to break the bridge!", 550, 660);

  q -= 3;        // Decreases q, decreasing length of inner black bar
  timer--;       // Timer starts

  if (keyPressed && (key == 'a' || key == 'A')) {      // Code to increase inner black bar length if 'A' is pressed
    q += 7;
  }

  if (q < 0) {    // Doesn't let q go below 0
    q = 0;
  }
  if (q >= 400) {      // If bar gets full, move to next stage
    stage[6] = false;
    stage[7] = true;
  }
  if (timer <= 0) {      // If timer runs out, move to lose screen
    stage[6] = false;
    stage[9] = true;
  }
}