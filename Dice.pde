Die rob;
void setup()
{
  size(555, 430);
  noLoop();
  rob= new Die (0,0);
}
void draw()
{
  background (200,250,223);
   int sum=0;
  for (int i = 5; i< 550; i+=55) {
    for (int j = 5; j < 380; j+=55) {
      Die rob = new Die(i, j);
      rob.roll();
      rob.show();
      sum = sum + rob.num;
    }
  }
  fill(0);
  text("Your roll: " + sum, 245, 415); 
}
void mousePressed()
{
  redraw();
}

class Die
{
  //three member variables
  int num; 
  int myX, myY;

  //three member functions
  Die(int x, int y) //constructor
  {
    //java code
    num =(int)(Math.random()*6)+1;
    myX=x;
    myY=y;
  }
  void roll()
  {
  num =(int)(Math.random()*6)+1;  
   }
  void show()
  {
    //java code
     fill(255);
     rect(myX,myY,50,50,7);
     fill((int)(Math.random() *250),(int)(Math.random() *250),(int)(Math.random() *250));
     if(num == 1)
     {
        ellipse(25+myX,25+myY,10,10);
     }
     else if(num==2)
     {
        ellipse(10+myX,10+myY,10,10);
        ellipse(40+myX,40+myY,10,10);
     }  
     else if(num==3)
     {
        ellipse(25+myX,25+myY,10,10);
        ellipse(10+myX,10+myY,10,10);
        ellipse(40+myX,40+myY,10,10);
     } 
     else if(num==4)
     {
        ellipse(10+myX,10+myY,10,10);
        ellipse(40+myX,40+myY,10,10);
        ellipse(10+myX,40+myY,10,10);
        ellipse(40+myX,10+myY,10,10);
     }  
     else if(num==5)
     {
        ellipse(25+myX,25+myY,10,10);
        ellipse(10+myX,10+myY,10,10);
        ellipse(40+myX,40+myY,10,10);
        ellipse(10+myX,40+myY,10,10);
        ellipse(40+myX,10+myY,10,10);
     } 
     else 
     {
        ellipse(10+myX,25+myY,10,10);
        ellipse(40+myX,25+myY,10,10);
        ellipse(10+myX,10+myY,10,10);
        ellipse(40+myX,40+myY,10,10);
        ellipse(10+myX,40+myY,10,10);
        ellipse(40+myX,10+myY,10,10);
     } 
  }
}
