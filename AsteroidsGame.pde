Spaceship bob;
Star [] sue = new Star[200];
boolean right, left, accelerate;
ArrayList <Asteroid> body = new ArrayList <Asteroid>();
void setup(){
  size(500, 500);
  bob = new Spaceship();
  for (int i = 1; i < sue.length-1; i++){
    sue[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    body.add(new Asteroid());
  }  
}
void draw(){
  background(0);
  for (int i = 1; i < sue.length-1; i++){
    sue[i].show();
  }
  if (left){
    bob.turn(-4);
  }
  if (right){
    bob.turn(4);
  }
  if (accelerate){
    bob.accelerate(.04);
  }
  bob.move();
  bob.show();
  for (int i = 0; i < body.size(); i++){
    body.get(i).move();
    body.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)body.get(i).getX(), (float)body.get(i).getY());
    if (d < body.get(i).getRadius()){
      body.remove(i);
      body.add(new Asteroid());
    }
   }
}
public void keyPressed(){
  if (keyCode == 37){
    left = true;
  }
  if (keyCode == 39){
    right = true;
  }
  if (keyCode == 38){
    accelerate = true;
  }
  if (keyCode == 16){
    bob.myCenterX = (int)(Math.random()*500);
    bob.myCenterY = (int)(Math.random()*500);
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myPointDirection = (int)(Math.random()*360);
  } 
}
public void keyReleased(){
  if (keyCode == 37){
    left = false;
  }
  if (keyCode == 39){
    right = false;
  }
  if (keyCode == 38){
    accelerate = false;
  }
}
