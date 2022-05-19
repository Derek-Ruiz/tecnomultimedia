float Y,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10;
PImage titulo;
PImage FyJ,BMO,DPyM,RH;
PImage FondoI;
int estado=0;

void setup (){
  size (500,500);
  Y=40;
  Y2=40;
  Y3=260;
  Y4=450;
  Y5=530;
  Y6=600;
  Y7=670;
  Y8=700;
  Y9=750;
  Y10=810;
  

  
  FondoI = loadImage ("hora de aventura.jpg");
  titulo = loadImage ("titulo.jpg");
  FyJ = loadImage ("FinnyJake.jpg");
  BMO = loadImage ("BMO.jpg");
  DPyM = loadImage ("DulcePrincesayMarceline.jpg");
  RH = loadImage ("ReyHelado.jpg");
}

void draw (){
  println (frameCount);
  image (FondoI,0,0,500,500);
  frameRate (40);
  
  
  if (frameCount<30||frameCount>150){
    estado=0;
    image (titulo,0,Y%150,500,200);
    textAlign (CENTER);
    textSize (40);
    fill (0);
    text ("CREADO POR\nPendleton Ward\n \nPRODUCIDO POR\nKelly Crews", 250,Y3);
    
    } else {
      estado=1;
    image (titulo,0,Y2,500,200);
    textAlign (CENTER);
    textSize (40);
    fill (0);
    text ("CREADO POR\nPendleton Ward\n \nPRODUCIDO POR\nKelly Crews", 250,Y3);
    Y2-=5;
    Y3-=5;
    }
  
    //pantalla 1
  if (frameCount>150&&frameCount<350){
    estado=2;
  image (FyJ,0,0,500,500);
  textAlign (CENTER);
  textSize (32.5);
  text ("PERSONAJES\nPRINCIPALES\n \nFinn el humano (Jeremy Shada)\n \nJake el perro (John DiMaggio)", 250,Y5);
  Y5-=4;
 
  } //pantalla 2
  else if (frameCount>299&&frameCount<550){
    estado=3;
  image (BMO,0,0,500,500);
  textAlign (CENTER);
  textSize (32.5);
  text ("PERSONAJE\nSECUNDARIO\n \nBMO (Niki Yang)",250,Y6);
  
  Y6-=4;
  } //pantalla 3
  else if (frameCount>549&&frameCount<780){
    estado=4;
    image (DPyM,-110,0,700,500);
    textAlign (CENTER);
    textSize (30.5);
    fill (255);
    text ("PERSONAJES\nSECUNDARIOS\n \nDulce Princesa (Hynden Walch)\nMarceline Abadeer (Cloris Leadman)",250,Y7);
    Y7-=4;
  }
  //pantalla 4
  else if (frameCount>779&& frameCount<1010){
    estado=5;
    image (RH,-40,0,600,500);
    textAlign (CENTER);
    textSize (30.5);
    fill (255);
    text ("PERSONAJE\nSECUNDARIO\n \nRey Helado/Simon Petrikov\n (Tom Kenny)",250,Y8);
    Y8-=4;
    
  }
  //pantalla 5
  else if (frameCount>1009 && frameCount<1500){
    estado=6;
    image (FondoI,0,0,500,500);
    textAlign (CENTER);
    textSize (24);
    fill (0);
    text ("COMPOSITOR\nCasey Basichis\n\nEDITOR DE MÚSICA\nNick Carr\n\nCANCION PRIN. DEL TÍTULO\nPendleton Ward y Casey Basichis\n\nCANCION DE CRÉDITOS FINALES\nAshey Eriksson\n\nESTUDIO DE POSTPROD. DE CANCIONES\n\nSabre Media Studios\n\nSUPERVISION DE EDITORES DE SONIDO\nTom Syslo\nTimothy J. Barquez''MPSE\n\nMEZCLADORES DE REGRABACIÓN\nEric Freeman\nTimothy J. Barquez''C•A•S•",250,Y9);
    Y9-=4;
    
  }

}
void mousePressed (){
  println ("click" + estado);
  setup();
  if (frameCount>1500&& frameCount>1600){
    estado=0;
  }
  if (estado==0){
    frameCount=0;
  }
}
    

  
  
  
  
