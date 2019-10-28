Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;  // the second instance of the Flower class
Flower myFlower3;

void setup() {
  fullScreen();

  int _r1= 60;
  int _r2 = 100;
  int _r3 = 120;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  int offset = 350;
  int fH1 = 2;
  int fH2 = 5;
  int fH3 = 7;
  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, fH1); 
  myFlower2 = new Flower(_r2, _petals, _x+random(-500, 500), _y+offset, _pc, fH2);
  myFlower3 = new Flower(_r3, _petals, _x+50, _y-offset, _pc, fH3);
}

void draw() {
  background(#43AF76);

  myFlower1.display();
  myFlower1.move(/*2*/);  //Denne løsning virkede ikke da den i draw hele tiden satte valuen af blomstens speed tilbage til 2 selv når den nåede til hvor den skulle "bounce", altså reverse sin speed.
  myFlower1.bounce();
  myFlower2.display();
  myFlower2.move(/*5*/);
  myFlower2.bounce();
  myFlower3.display();
  myFlower3.move(/*7*/);
  myFlower3.bounce();
  //myFlower3.coloring();
}



  
 
  
