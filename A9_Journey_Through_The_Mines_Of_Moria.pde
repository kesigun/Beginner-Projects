// Kesigun Pillai  kspillai

// Journey through the Mines of Moria

// Import Video and Sound libraries
import processing.sound.*;    
import processing.video.*;

// User-Defined global variables used here
SoundFile sound;        // Sound container
Movie[] mov = new Movie[4];      // Array for videos
PImage[] background = new PImage[5];    // Array for photos
boolean[] stage = new boolean[10];      // Boolean Array for stages
int q = 300;                          // Variable to change inner bar in stage 6
float timer = 750;                // timer for stage 6
float exitTimer = 750;            // Exit timer at victory and defeat screens
float sTimer = 1200;              // Timer at Story Screen



void setup() {
  size(1024, 768);          // Changes size
  sound = new SoundFile(this, "backgroundmono.wav");      // Loads sound file
  sound.loop();                                           // Loops sound file
  // Arrays used here
  for (int i = 0; i < 5; i++) {                           // Loads Images
    background[i] = loadImage("background" + (i + 1) + ".jpg");
  }
  for (int i = 0; i < 4; i++) {                           // Loads videos
    mov[i] = new Movie(this, "Video" + (i + 1) + ".mp4");
  }
  for (int i = 0; i < 10; i++) {                          // Initializes boolean array
    if (i == 0) {
      stage[i] = true;
    } else {
      stage[i] = false;
    }
  }
}

void draw() {

  // User defined functions used in each stage
  if (stage[0]) {
    menu();
  }

  if (stage[1]) {
    riddle();
  }

  if (stage[2]) {
    passVid();
  }
  
  if (stage[3]) {
    watchVid();
  }
  
  if (stage[4]) {
    story();
  }
  
  if (stage[5]) {
    bridgeVid();
  }
  
  if (stage[6]) {
    bridgeFight();
  }
  
  if (stage[7]) {
    fallVid();
  }

  if (stage[8]) {
    win();
  }

  if (stage[9]) {
    lose();
  }
}

void keyPressed() {
  if (stage[0] && key == ' ') {      // Starts the game with the spacebar. Stops music.
    stage[0] = false;
    stage[1] = true;
    sound.stop();
  }
}


void movieEvent(Movie m) {        // Reads video frames when available
  m.read();
}
// First Stage - Riddle
// The Doors of Durin, Lord of Moria. Speak friend and enter.
// If you are a friend, choose the right word to enter Moria.
// 3 options - hittest, if correct one selected, move to next stage. Else, game over as the Watcher in the water grabs you

// Load Image of Door

// Display 4 options and an instruction on what is needed to enter

// Hittest to see if correct option is clicked on

// If yes, move on. Else display game over with Watcher killing you and reset progress





// Second Stage - Fight
// The orcs have discovered your presence in Moria. Shoot them down with arrows before they reach you!
// 'Space Invader' style top-down view, you have a bow and have to kill all the orcs before they reach the bottom
// Win - move to next stage

// Load game instructions

// Load game

// Draw character

// Draw orcs

// Draw Arrows

// Hittest arrows

// Check if orcs reach bottom

// Check if all orcs killed

// Move on, or go to game over and reset progress



// Last Stage - Defeat the Balrog
// Cornered on the bridge, this is your last stand. Use your magic to ensure that the bridge is broken and the Balrog will fall to his doom
// Click/Press key rapidly to fill a bar that is being depleted automatically, if you manage to fill the bar, the bridge is destroyed and the rest of the Fellowship escapes Moria

// Load video and sound

// Display instructions

// Load Image with the bar overlaid on it, bar should start at 0 fill

// Check mousepressed / keypressed events to see if bar is filled. Use a fast decreasing amount to draw the bar fill (ie making it return to 0 if you are too slow), and use mouse + keys to increase that amount. 

// Check if bar is filled, if yes move on. Else game over and reset progress



// Credits screen? should be easy // Animate text // Also look for nicer font