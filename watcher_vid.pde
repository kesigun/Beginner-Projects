// Same as balrog_vid

void watchVid() { 
  background(0);
  mov[1].play();
  image(mov[1], 85, 144);
  textSize(40);
  fill(255, 0, 0);
  text("You tarried...and the Watcher in the Water attacks!", 20, height * 0.1);
  float mt = mov[1].time();
  if (mt == 7.209) {    // Using this number instead of mov.duration as the duration is for some reason longer than the actual amount of time that the video is played for
    stage[2] = false;
    stage[9] = true;
  }
}