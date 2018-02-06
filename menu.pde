// A main menu display

void menu() {
  image(background[0], 0, 0);
  textSize(50);
  fill(255, 0, 0);
  textMode(CENTER);
  text("Journey Through the Mines of Moria", width * 0.1, height * 0.15);
  textSize(30);
  text("Press Spacebar to begin", width * 0.3, height * 0.95);
}