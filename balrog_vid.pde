void fallVid() {
  background(0);      // Clears previous background
  mov[3].play();      // Plays video
  image(mov[3], 85, 144);
  float mt = mov[3].time();    // Variable for current time position of video
  if (mt == 11.793667) {    // Using this number instead of mov.duration as the duration is for some reason longer than the actual amount of time that the video is played for
    stage[7] = false;        // Switches stage when video is over
    stage[8] = true;
  }
}