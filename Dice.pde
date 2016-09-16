int sumDots;
int nDots = 0;
int nTries = 0;
void setup()
{
	noLoop();
	size(760, 470);
	
}
void draw()
{
	background(50, 0, 0);
	for(int i = 10; i < 540; i = i + 35)
	{
		for(int e = 10; e < 450; e = e + 35)
			{
				Die shuu = new Die (i, e, 30);
				shuu.roll();
				shuu.show();
				nDots = sumDots + shuu.numDots;
				sumDots = nDots;
				
}
}
fill(255,255,255);
PFont font, sFont;
font = createFont("georgia", 24);
sFont = createFont("georgia", 10);
textFont(sFont);
nTries = nTries + 1;
text("Number of Tries: " + nTries, 620, 200);
text(sumDots, 742, 465);
textFont(font);
text("You got...", 615, 75);
if(sumDots == 707)
{
	nTries = 0;
}

if(sumDots >= 512)
{
	text("1 ", 600, 100);
	sumDots = sumDots - 512;
}
else if (sumDots < 512)
{
	text("0 ", 600, 100);
}
if(sumDots >= 256)
{
	text("1 ", 613, 100);
	sumDots = sumDots - 256;
}
else if (sumDots < 256)
{
	text("0 ", 613, 100);
}
if(sumDots >= 128)
{
	text("1 ", 626, 100);
	sumDots = sumDots - 128;
}
else if (sumDots < 128)
{
	text("0 ", 626, 100);
}
if(sumDots >= 64)
{
	text("1 ", 639, 100);
	sumDots = sumDots - 64;
}
else if (sumDots < 64)
{
	text("0 ", 639, 100);
}
if(sumDots >= 32)
{
	text("1 ", 652, 100);
	sumDots = sumDots - 32;
}
else if (sumDots < 32)
{
	text("0 ", 652, 100);
}
if(sumDots >= 16)
{
	text("1 ", 665, 100);
	sumDots = sumDots - 16;
}
else if (sumDots < 16)
{
	text("0 ", 665, 100);
}
if(sumDots >= 8)
{
	text("1 ", 678, 100);
	sumDots = sumDots - 8;
}
else if (sumDots < 8)
{
	text("0 ", 678, 100);
}
if(sumDots >= 4)
{
	text("1 ", 691, 100);
	sumDots = sumDots - 4;
}
else if (sumDots < 4)
{
	text("0 ", 691, 100);
}
if(sumDots >= 2)
{
	text("1 ", 704, 100);
	sumDots = sumDots - 2;
}
else if (sumDots < 2)
{
	text("0 ", 704, 100);
}
if(sumDots >= 1)
{
	text("1 ", 717, 100);
	sumDots = sumDots - 1;
}
else if (sumDots < 1)
{
	text("0 ", 717, 100);
}

nDots = 0;
sumDots = 0;
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, mySize;
	int numDots;
	Die(int x, int y, int z) //constructor
	{
		myX = x;
		myY = y;
		mySize = z;
	}
	void roll()
	{
		numDots = (int)(Math.random()*6) + 1;
	}
	void show()
	{
		noStroke();
		fill(255, 255, 255);
		rect(myX, myY, mySize, mySize, 7);
		if (numDots == 1)
		{
			fill(50, 0, 0);
			ellipse(myX + 15, myY + 15, 5, 5);
		}
		if (numDots == 2)
		{
			fill(50, 0, 0);
			ellipse(myX + 20, myY + 10, 5, 5);
			ellipse(myX + 10, myY + 20, 5, 5);
		}
		if (numDots == 3)
		{
			fill(50, 0, 0);
			ellipse(myX + 8, myY + 8, 5, 5);
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 22, myY + 22, 5, 5);
		}
		if(numDots == 4)
		{
			fill(50, 0, 0);
			ellipse(myX + 8, myY + 8, 5, 5);
			ellipse(myX + 22, myY + 8, 5, 5);
			ellipse(myX + 8, myY + 22, 5, 5);
			ellipse(myX + 22, myY + 22, 5, 5);
		}
		if(numDots == 5)
		{
			fill(50, 0, 0);
			ellipse(myX + 8, myY + 8, 5, 5);
			ellipse(myX + 22, myY + 8, 5, 5);
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 8, myY + 22, 5, 5);
			ellipse(myX + 22, myY + 22, 5, 5);
		}
		if(numDots == 6)
		{
			fill(50, 0, 0);
			ellipse(myX + 8, myY + 8, 5, 5);
			ellipse(myX + 22, myY + 8, 5, 5);
			ellipse(myX + 8, myY + 22, 5, 5);
			ellipse(myX + 22, myY + 22, 5, 5);
			ellipse(myX + 8, myY + 15, 5, 5);
			ellipse(myX + 22, myY + 15, 5, 5);
	}
}
}
