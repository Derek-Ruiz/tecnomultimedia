/* tp2: Ilusión Óptica Interactiva.

Derek Misseri Ruiz
Legajo: 88321/1
Profesor: David Bedoian
Comisión: 3
Fecha de entrega: Jueves 09-06-22
Vídeo explicativo: https://youtu.be/J0h8D4B_4t4

*/

void setup(){
  size (500,500);
}

void draw (){
  
  /*Para que el color cambie conforme el mouse se
  mueve de afuera hacia el centro ==>
  */
  float col= dist (width/2, height/2, mouseX,mouseY);
  float maxD= dist (0,0,width/2, height/2);
  float Blu= map (col,0,maxD,0,255);
  
  /*Para centrar las figuras de la Ilusión
  +impresión de los frames ==>
  */
  println (frameCount);
  translate (width/2, height/2);
  rectMode (CENTER);
  
/*Creación de figura con repetición para formar 
un "remolino" con movimiento + cambio de color
según la posición mouseX y mouseY ==>
*/

  for (int I=0;I<1000;I++){
    rotate (radians (-15));
  rect (0+I,0,I+Blu/2,300);
  strokeWeight(1.5);
  fill (I*Blu/300,0,100,100);
 }
 }
   
