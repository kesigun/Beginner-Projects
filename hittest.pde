// test if point x,y is 
// inside the rect with upper left corner at rx, ry 
// and size rw and rh
boolean hitTest(float x, float y, 
  float rx, float ry, float rw, float rh) {

  // the hit test
  if (x >= rx && x <= rx + rw && 
    y >= ry && y <= ry + rh) {
    return true;
  } else {
    return false;
  }
}