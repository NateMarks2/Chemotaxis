Bacteria[] bob;

void setup(){
  size(500,500);
  frameRate(-1);
  
  bob = new Bacteria[20];
  for(int i=0;i<20;i++){
    bob[i] = new Bacteria((int)(Math.random()*250),(int)(Math.random()*250),#ffffff);
  }
}

class Bacteria {
  int xCoord;
  int yCoord;
  int bColor;
  int prevXCoord;
  int prevYCoord;
  
  Bacteria(int x,int y,int sColor){
    xCoord = x;
    yCoord= y;
    bColor = sColor;
  }
  
  void move(){
    if(xCoord > 500){xCoord=0;} else if(xCoord <0){xCoord=500;}
    if(yCoord > 500){yCoord=0;} else if(yCoord <0){yCoord=500;}  
    prevXCoord = xCoord;
    prevYCoord = yCoord;
    xCoord += (int)(Math.random()*3)-1;
    yCoord += (int)(Math.random()*3)-1;
  }
  
  void show(){
    stroke(204,102,0);
    line(xCoord,yCoord,prevXCoord,prevYCoord);
    //fill(255);
  }
}

void draw(){
  for(int i=0;i<bob.length;i++){
  bob[i].move();
  bob[i].show();
  }
}
