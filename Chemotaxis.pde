Bacteria [] Robin;   
int rX = -6;
int rY = -6;
 
 
 //declare bacteria variables here   
 void setup()   
 {     
   size(800,800); 
   background(255);
   Robin = new Bacteria[5];
   for(int i = 0; i < Robin.length; i++) {
     Robin[i] = new Bacteria();
   }
 }   
 void draw()   
 { 
   fill(255, 255, 255, 5);
   rect(0, 0, 800, 800);
   //fill(255, 255, 0);
   //ellipse(0, 0, 150, 150);
   if(mousePressed == false) {
       rX = -6;
       rY = -6;
     }
   if(mousePressed == true) {
     if(mouseX > 400 && (mouseButton == LEFT)) {
       rX = -4;
     } else if(mouseX < 400 && (mouseButton == LEFT)) {
       rX = -8;
     }
     if(mouseY > 400 && (mouseButton == RIGHT)) {
       rY = -4;
     } else if(mouseY < 400 && (mouseButton == RIGHT)) {
       rY = -8;
     }
   }
   for(int i = 0; i < Robin.length; i++) {
     Robin[i].walk();
     Robin[i].show();
   }
 }  
 
 
 
 class Bacteria {     
   int startX, startY, randomX, randomY, Color;  
  Bacteria() {
    Color = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    startX = 400;
    startY = 400;
    randomX = 0;
    randomY = 0;
  }
  void walk() { 
    startX = startX + randomX;
    startY = startY + randomY;
    randomX = (int)(Math.random()*12+rX);
    randomY = (int)(Math.random()*12+rY);
    System.out.println(randomX);
    System.out.println(randomY);
  }
  void show() {
    stroke(Color);
    strokeWeight(2);
    line(startX,startY, startX + randomX, startY + randomY); 
  }
}  
