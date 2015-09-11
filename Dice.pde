void setup()
{
	size(500,300);
	noLoop();
}
void draw()
{
	for(int u = 0; u <= 400; u+=50 )
	{ 
		for(int o = 0; o <= 200; o+=50 ){
		Die bill = new Die(10 + u,10 + o);
		bill.show();
	}
		
	}

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
		if (Math.random() <.166666 )
		{
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if (Math.random() <.333333)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
		}
		else if (Math.random() <.5)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if (Math.random() <.666666)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
		}
		else if (Math.random() <.833333)
		{
			ellipse(myX + 10, myY + 10, 10,10);
			ellipse(myX + 40, myY + 10, 10,10);
			ellipse(myX + 10, myY + 40, 10,10);
			ellipse(myX + 40, myY + 40, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else
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
