class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class
  float currentSpeed = 1f ;
	 float TRIGGERED_SPEED_MULTIPLIER = 5f;
   Dinosaur(float x, float y){
    super(x, y);
  }
 void display(){
    pushMatrix();
      translate(x, y);
      if (currentSpeed > 0 ) {
        scale(1, 1);
        image(dinosaur, 0, 0, w, h); 
      } else {
        scale(-1, 1);
        image(dinosaur, -w, 0, w, h); 
      }
    popMatrix();
     
  }
  
   void update(){
    if( player.y==y && currentSpeed>0 && player.x>x){
    x += TRIGGERED_SPEED_MULTIPLIER;}
    else if(player.y==y && currentSpeed<0 && player.x<x){
    x += TRIGGERED_SPEED_MULTIPLIER;}
    else{
    x += currentSpeed;
  }

    if(x+w >= width || x<=0){
      currentSpeed*=-1;
      TRIGGERED_SPEED_MULTIPLIER*=-1;
    }
   }
}
    
	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
