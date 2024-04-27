//La pieza se activa pulsando el boton con la flecha
int x;
int y;
PImage P;

void setup(){
  fullScreen();
P = loadImage("Kiosko.jpg");//Aquí esstá el nombre de la fotografía, para cambiarla es necesario subir una nueva foto al archivo del programa
P.resize(500, 500);//Este es el tamaño de la fotografía
x = 26;
y = 2;
}

void draw(){
background(235, 65, 65);//Este es el color del fondo
fill(255,255,255);//Este es el color de las letras del texto abajo a la derecha
text("Fotografía Urbana/ Andrea Villegas/ Del 10 al 29 de septiembre", 800, 670);
  image(P, 450, 70);//Aquí está la posición de la fotografía
paint();
x = x + y;
//Estos "if" sirven para llevar el circulo de derecha a izquierda 
if(x>1300){
   y = -1;
}
if(x<50){
  y = 1;
}

}

void paint(){
  fill(154, 173, 255);//Este es el color del circulo
  ellipse(x, 550, 200, 200);
  fill(255, 120, 0);//Color del texto dentro del circulo
  textSize(20);//Tamaño del texto dentro del circulo
  text("Art Photography", x-65, 550);
}
  
