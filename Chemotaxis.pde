Bacteria [] Robin;   
 
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
    randomX = (int)(Math.random()*12-6);
    randomY = (int)(Math.random()*12-6);
    System.out.println(randomX);
    System.out.println(randomY);
  }
  void show() {
    stroke(Color);
    strokeWeight(2);
    line(startX,startY, startX + randomX, startY + randomY); 
  }
}   
