void setup(){
  
  size (400,400);
  textSize (80);
}


void draw(){
  background (3,185,150);
  text ("Derek",90,360);
  noStroke ();
  fill (255,200,150); //piel
  ellipse (190,200,153,202); //cabeza.
  
  //nariz y boca.
  {fill (235,170,130);
  triangle (170,220,180,200,180,240); //nariz.
  triangle (197,240,200,230,190,240); //nariz.
  bezier (160,260,180,265,200,265,220,260); //boca.
 }
 //cabello:
 {
  fill (0);
  noStroke();
  ellipse (190,130,129,62); //cabello.
  bezier (135,115,112,140,110,150,115,190); //patilla
  bezier (240,109,263,140,270,150,265,190); //patilla
  }
  
  //ojos:
  {
   fill (255);
   ellipse (225,200,40,18); //ojo.
   ellipse (150,200,40,18); //ojo.
   
   fill (0);
   ellipse (235,198,8,12);
   ellipse (160,198,8,12);
   fill (100,50,100,50);
   bezier (175,205,165,215,155,220,145,220); //ojera
   bezier (200,205,210,215,220,220,230,220); //ojera
    
    fill (0);
    rect (200,175,40,5,60); //ceja.
    rect (135,175,40,5,60); //ceja.
  }
  
  //orejas:
  {
    fill (255,200,150);
    noStroke();
    rect (100,190,20,40,30,0,0,100); //oreja.
    rect (260,190,20,40,0,30,100,0); //oreja.
  }
  
  //piercings:
  {
    fill (0);
    rect (265,223,6,8); 
    rect (108,223,5,10);
    
    
    
  }
  
}