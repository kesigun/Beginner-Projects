void win() {
  int time = int(exitTimer / 60);        // Display for when game will close
  image(background[3], 0, 0);            // Uses image for background
  text("You emerge from Moria.. But the journey is just beginning..", width * 0.3, height * 0.85);
  text("Exiting in" + "    " + time, width * 0.4, height * 0.95);
  exitTimer--;                        // Decreases exit timer
  if (exitTimer <= 0) {              // Checks for end of timer
    exit();
  }
}