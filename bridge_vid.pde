// Same as balrog_vid

void bridgeVid() {
  background(0);
  mov[2].play();
  image(mov[2], 85, 144);
  float mt = mov[2].time();
  if (mt == 18.122) {    // Using this number instead of mov.duration as the duration is for some reason longer than the actual amount of time that the video is played for
    stage[5] = false;
    stage[6] = true;
  }
}