class Star
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = 255;
  }
  public void show()
  {
    stroke(myColor);
    fill(myColor);
    ellipse(myX, myY, 2, 2);
  }
}
