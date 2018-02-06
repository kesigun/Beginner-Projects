// Kesigun Pillai    20495656

String[] dj;    // To hold txt file
int mX;    // To track mouse location

void setup() {
  size(800, 600);
  dj = loadStrings("dowjones.txt");    // Loads txt file
}

void draw() {
  background(255);
  
  // Draws daily spread from high to low
  fill(0, 255, 0, 40);
  noStroke();
  beginShape();
  for (int j = 0; j < dj.length; j++) {    // First loop for low values
    String[] low = splitTokens(dj[j]);    
    vertex(map(j, 0, dj.length - 1, 0, width), map(float(low[1]), 20150, 17850, 0, height));
  }
  for (int k = dj.length - 1; k > -1; k--) {  // Second loop for high values
    String[] high = splitTokens(dj[k]);
    vertex(map(k, 0, dj.length - 1, 0, width), map(float(high[2]), 20150, 17850, 0, height));
  }
  endShape();
  
  // Draws close graph
  noFill();
  stroke(0);
  beginShape();
  for (int i = 0; i < dj.length; i++) {
    String[] close = splitTokens(dj[i]);
    vertex(map(i, 0, dj.length - 1, 0, width), map(float(close[3]), 20150, 17850, 0, height));
  }
  endShape();


  // Displays date and value of DJIA at mouseX location
  fill(255, 0, 0);
  textSize(15);
  textMode(CENTER);
  mX = int(map(mouseX, 0, width, 0, dj.length));
  for (int i = 0; i < dj.length; i++) {
    String[] display = splitTokens(dj[i]);
    if ( mX == i) {
      text("Date: " + display[0] + "  Close: " + display[3], width / 3, 580);
    }
  }
}