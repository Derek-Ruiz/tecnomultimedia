/* tp2: Ilusión Óptica Interactiva.

Derek Misseri Ruiz
Legajo: 88321/1
Profesor David Bedoian
Fecha de entrega: Jueves 09-06-22

*/


float pase,mov;
float tam;

void setup(){
  size (500,500);
  mov++;
 pase=0;
 tam+=1;

}

void draw (){
  
  
  float col= dist (width/2, height/2, mouseX,mouseY);
  float maxD= dist (0,0,width/2, height/2);
  float Blu= map (col,0,maxD,0,255);
  
  
  
  println (frameCount);
  translate (width/2, height/2);
 rectMode (CENTER);
  

  for (int I=0;I<1000;I++){
    rotate (radians (-15/mov));
  rect (0+I,0,I+Blu/2,300);
  strokeWeight(0.5);
  fill (I*Blu/300,0,100,100);
 }
   }
   
   void mouseDragged (){
     
   if (mouseX<500&&mouseY<250){
     println ("Soy luz" +mouseX+mouseY);
    // rotate (radians (-10));
     ellipse(CENTER,CENTER,5,5);
     fill (100,0,100,100);
   } else if (mouseX<500&&mouseY>500){ 
     println ("Soy nada" +mouseX+mouseY);
     //rotate (radians (-20));
     ellipse (CENTER,CENTER,5,5);
     fill (255/100,0,100,100);
   }
   
  }
  