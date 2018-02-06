// Define a simple card class that has a rank (an integer 
// from 1 to 13, inclusive) and a suit (an integer from
// 0 to 3, inclusive, using the constants named below).

// Useful constants allowing you to refer to suit numbers
// via symbolic names.
int SPADES = 0;
int HEARTS = 1;
int DIAMONDS = 2;
int CLUBS = 3;

class Card
{
  int rank;
  int suit;

  // Constructor for creating new cards.
  Card( int rankIn, int suitIn )
  {
    rank = rankIn;
    suit = suitIn;
  }

  // Method to ask a card to describe itself in a 
  // String.  Use the unicode character codes for the
  // four suits.
  String getString()
  {
    String ret = "";
    if ( rank == 1 ) {
      ret += 'A';
    } else if ( rank == 11 ) {
      ret += 'J';
    } else if ( rank == 12 ) {
      ret += 'Q';
    } else if ( rank == 13 ) {
      ret += 'K';
    } else {
      ret += rank;
    }

    if ( suit == SPADES ) {
      ret += '\u2660';
    } else if ( suit == HEARTS ) {
      ret += '\u2665';
    } else if ( suit == DIAMONDS ) {
      ret += '\u2666';
    } else if ( suit == CLUBS ) {
      ret += '\u2663';
    }

    return ret;
  }

  // As a card to draw itself.  Chances are that you'll
  // want to surround this method by a geometric context
  // so that the card is drawn at a desired location in
  // the sketch window.  The boolean parameter allows you
  // draw the back of the card when set to false (to hide
  // it).
  void draw( boolean showing )
  {
    noStroke();
    if ( showing ) {
      fill( 255 );
      rect( 0, 0, 80, 80, 10 );

      if ( suit == 0 || suit == 3 ) {
        fill( 0 );
      } else {
        fill( 255, 0, 0 );
      }

      text( getString(), 40, 60 );
    } else {
      fill( 120 );
      rect( 0, 0, 80, 80, 10 );
    }
  }
  
  void win() {
    Card[] P1 = {community[0], community[1], community[2], community[3], community[4], my_hole[1], my_hole[2]};
    Card[] P2 = {community[0], community[1], community[2], community[3], community[4], your_hole[1], your_hole[2]};
    
    
    
  }
}