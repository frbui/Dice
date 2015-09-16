
void setup()
{
	size(600,280);
	noLoop();
}
void draw()
{
	for(int u = 0; u <= 400; u+=50 )
	{ 
		for(int o = 0; o <= 200; o+=50 )
		{
		Die bill = new Die(10 + u,10 + o);
		bill.show();

		}
		
	}
	text("roll" + roll , 500, 200 );
}


void mousePressed()
{
	redraw();
	
}
class Die //models one single dice cube
{
	int myX; 
	int myY;   //variable declarations here
	Die(int x, int y) 
	{
		myX = x;
		myY = y;  //variable initializations here
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
		int roll = (int)(Math.random()*6) + 1  ;
		
		if (roll == 1 )
		{
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if (roll == 2)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
		}
		else if (roll == 3)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if (roll == 4)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
		}
		else if (roll == 5)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if (roll == 6)
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
