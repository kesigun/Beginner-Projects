void story() {
  background(70);
  fill(255, 0, 0);
  textSize(30);
  text("The Fellowship enters Moria.... A long and arduous journey awaits them.", width * 0.05, height * 0.1);
  text("It will take four days to pass through the long dark of Khazad-Dum.", width * 0, height * 0.3);
  text("They discover that a creature, Gollum, is on their trail.", width * 0.15, height * 0.5);
  text("Soon, they too are discovered by Orcs, and a terrible fight ensues.", width * 0.05, height * 0.7);
  text("However, the Balrog is awoken. They try to run...but can they?", width * 0.05, height * 0.9);
  sTimer--;        // Decreases Story Timer
  if (sTimer <= 0) {        // Checks for end of timer and changes stage
    stage[4] = false;
    stage[5] = true;
  }
}