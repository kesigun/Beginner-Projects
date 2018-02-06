// Same as balrog_vid

void passVid() {
  background(0);
  mov[0].play();
  image(mov[0], 85, 144);
  float mt = mov[0].time();
  if (mt == 7.191) {    // Using this number 7.191 instead of mov.duration as the duration is for some reason longer than the actual amount of time that the video is played for
    stage[2] = false;
    stage[4] = true;
  }
}