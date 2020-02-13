
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	tree(320,380,70,3*(PI/2));  //will add later 
} 
public void tree(int x, int y, double len, double angle){
  double angle1 = angle+PI/4;
  double angle2 = angle-PI/4; 
  len*=.8;
  int endX1 = (int)(len*Math.cos(angle1) + x);
  int endY1 = (int)(len*Math.sin(angle1) + y);
  int endX2 = (int)(len*Math.cos(angle2) + x);
  int endY2 = (int)(len*Math.sin(angle2) + y);
  if(len<=10){
    line(x,y,endX1,endY1);
    line(x,y,endX2,endY2);
  }else{
    line(x,y,endX1,endY1);
    line(x,y,endX2,endY2);
    tree(endX1,endY1,len,angle1);
    tree(endX2,endY2,len,angle2);
  }
} 
