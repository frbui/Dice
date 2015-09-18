Die bill;
int total;
void setup()
{
	size(600,280);
	noLoop();
}
void draw()
{
	background(0,100,0);
	for(int u = 0; u <= 400; u+=50 )
	{ 
		for(int o = 0; o <= 200; o+=50 )
		{
		Die bill = new Die(10 + u,10 + o);
		bill.show();
		total += bill.blah;
		}		
	}
	textSize(15);
	text ("Total Roll: " + total, 475,140);
}


void mousePressed()
{
	total = 0;
	redraw();
	
}
class Die //models one single dice cube
{
	int myX, myY, blah;   //variable declarations here
	
	Die(int x, int y) 
	{
		blah = (int)(Math.random()*6) + 1;
		myX = x;
		myY = y;
		  //variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(225);
		rect(myX, myY,50,50); //your code here
		fill(0);
		
		if (blah == 1 )
		{
			ellipse(myX + 25, myY + 25, 10,10);
			
		}
		if (blah == 2)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			
		}
		if (blah == 3)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
			
		}
		if (blah == 4)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
		
		}
		if (blah == 5)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
			
		}
		if (blah == 6)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 10, myY + 25, 10,10);
			ellipse(myX + 40, myY + 25, 10,10);
		
		}
	}
}
