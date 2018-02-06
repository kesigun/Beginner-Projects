// Name
// Student ID

// The cards that make up a two-player hold'em game:
// Each player has two hole cards (so an array of length 2),
// and they share five community cards.
Card[] my_hole;
Card[] your_hole;
Card[] community;

// An integer used to determine what "phase" of the game we're
// in.  They work as follows:
// Mode 0: Show only my hole cards
// Mode 1: Show the first three community cards (the "flop")
// Mode 2: Show the fourth community card (the "turn")
// Mode 3: Show the fifth community card (the "river")
// Mode 4: Reveal the other player's hole cards
int mode;

// Helper function to generate a random card.  You won't
// actually need this in the final version of the question.
Card randCard()
{
  return new Card( int( random( 1, 14 ) ), int( random( 4 ) ) );
}

// Deal out cards by setting the three global arrays of cards
// appropriately.
void deal()
{
  // TODO
  // This is a cheap, inadequate simulation of dealing cards.
  // Random cards are used everywhere, but there might be
  // repetitions.  Your job is to change this code so that 
  // it deals cards from a single deck without repetition.
  Card[] deck = new Card[52];

  for ( int i = 0; i < 4; i++) {
    for ( int j = 1; j < 14; j++) {
      deck[i * 13 + j - 1] = new Card( j, i );
    }
  }

  for ( int n = 0; n < 999999; n++) { 
    Card tmp_val;
    int x = int(random(0, 52));
    int y = int(random(0, 52));

    tmp_val = deck[x];
    deck[x] = deck[y];
    deck[y] = tmp_val;
  }

  my_hole = new Card[] { deck[5], deck[7] };
  your_hole = new Card[] { deck[6], deck[8] };
  community = new Card[] {
    deck[0], deck[1], deck[2], deck[3], deck[4] };
}

void setup()
{
  size( 600, 600 );
  textSize( 36 );
  textAlign( CENTER );
  mode = 0;

  // Set up a first deal of cards.
  deal();
}

void draw()
{
  background( 0, 100, 0 );

  // Always draw my hole cards.

  pushMatrix();
  translate( 210, 460 );
  my_hole[0].draw( true );
  popMatrix();

  pushMatrix();
  translate( 310, 460 );
  my_hole[1].draw( true );
  popMatrix();

  // Draw the other player's hole cards.

  pushMatrix();
  translate( 210, 60 );
  your_hole[0].draw( mode >= 4 );
  popMatrix();

  pushMatrix();
  translate( 310, 60 );
  your_hole[1].draw( mode >= 4 );
  popMatrix();

  // Draw the community cards.

  for ( int idx = 0; idx < 5; ++idx ) {
    boolean showing = false;
    if ( (idx < 3) && (mode >= 1) ) {
      showing = true;
    }
    if ( (idx == 3) && (mode >= 2) ) {
      showing = true;
    }
    if ( (idx == 4) && (mode >= 3) ) {
      showing = true;
    }
    pushMatrix();
    translate( 80 + 90 * idx, 260 );
    community[idx].draw( showing );
    popMatrix();
  }
}

// Progress through the modes when the user
// presses the space bar.  After the final mode,
// deal a new hand and reset.
void keyPressed()
{
  if ( key == ' ' ) {
    ++mode;
    if ( mode == 5 ) {
      mode = 0;
      deal();
    }
  }
}