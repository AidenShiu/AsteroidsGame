class Asteroid extends Floater
{
  private double speedOfRotation, dRadians;
  private float radius;
  Asteroid(){
    speedOfRotation = (int)(Math.random()*3+5);
    corners = (int)(Math.random()*4)+5;  
    xCorners = new int[corners];
    yCorners = new int[corners];
    radius = (int)(Math.random()*15+15);
    for (int i = 0; i < corners; i++){
      double angle = Math.random()*((Math.PI*2)/corners)+((Math.PI*2)/corners*i);
      xCorners[i] = (int)(Math.cos(angle)*radius);
      yCorners[i] = (int)(Math.sin(angle)*radius);
    }
    myColor = color(#5D5959);   
    myCenterX = (int)(Math.random()*440);
    myCenterY = 0; 
    myPointDirection = (int)(Math.random()*360); 
    dRadians = myPointDirection*(Math.PI/180); 
    myXspeed = Math.cos(dRadians);
    myYspeed = Math.sin(dRadians); 
  }
  public void move(){
    turn(speedOfRotation);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public float getRadius(){
    return radius;
  }
  public double getDirection(){
    return myPointDirection;
  }
}
