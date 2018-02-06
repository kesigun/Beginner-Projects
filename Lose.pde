void lose() {
  int time = int(exitTimer / 60);          // Display for when game will close
  image(background[4], 0, 0);              // Uses photo for background
  text("Your Journey has failed.", 560, 200);
  text("Sauron is victorious.", 600, 300);
  textSize(20);
  text("Exiting in" + "    " + time, 650, 350);
  exitTimer--;                            // Decreases exit timer
  if (exitTimer <= 0) {                   // Checks if timer is finished
    exit();
  }
}