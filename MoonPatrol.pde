// Kesigun Pillai
// 20495656

// Generates Perlin noise values to match the y value that was entered
float myNoise( float x, float y) {
 float n = noise( x, y );
 return map( n , 0, 1, y - 50, y + 50);
}

// Function to draw moving terrain. Y is the height at which it is to be drawn. Scale is how smooth it is.
// Higher numbers in scale will create a smoother terrain. A higher number also makes it move by quicker.
void mountain( float y , float scale) {
  beginShape();
  vertex( -10, y);
  for( int x = 0; x < width; x++) {
   vertex( x * scale , myNoise( (x * 0.05 + (0.01 * scale)) + frameCount * 0.01, y)); // Multiply by framecount to create scrolling. Multiply by scale to get different sections of noise function.
  }
  vertex( width + 10, y );
  vertex( width + 10, height + 10);
  vertex( -10, height + 10);
  endShape(CLOSE);
}

PShape rover;
float wh1, wh2, wh3 = 0;

void setup() {
 size(800, 400); 
 noStroke();
 
 rover = loadShape( "rover.svg" );
 rover.scale(0.75);
}

void draw() {
 background(0);
 
 fill(56, 0, 131);  // Background mountains
 mountain(100, 1);
 
 fill(201, 104, 0);  // Middleground mountains
 mountain(220, 3);
 
 fill(252, 25, 0);    // Foreground terrain
 mountain(350, 14);
 
 float wx1 = 45; float wx2 = 75; float wx3 = 125;
 float x = 0;
 x++;
 wh1 = myNoise( (x * 0.05 + (0.1)) + frameCount * 0.01, 350);
 wh2 = myNoise( ((x + 1) * 0.05 + (0.1)) + frameCount * 0.01, 350);
 wh3 = myNoise( ((x + 2) * 0.05 + (0.1)) + frameCount * 0.01, 350);
 float rh = ((wh1 + wh2 + wh3) / 3 ) - 65; // Rover Height taking into account where wheels are
 shape( rover, 20, rh);      // Draws rover
 fill(0);
 ellipse( wx1, wh1 -2, 25, 25); // Draws wheels
 ellipse( wx2, wh2 -2, 25, 25);
 ellipse( wx3, wh3 -2, 25, 25);
}