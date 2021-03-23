import peasy.*;
import queasycam.*;

PImage sea, sand, sky, ep, dol, sh, ro, ch;
PShape tubep, dolph, shark, rock, chest;
//PeasyCam cam;
QueasyCam cam;
boolean help;
String Shelp;
int day = 0;

void setup(){
  size(600, 600, P3D);
  cam = new QueasyCam(this);
  this.perspective(PConstants.PI/3f, (float)this.width/(float)this.height, 0.01f, 2000f);
  cam.speed = 1;     
  cam.sensitivity = 0.5;
  cam.position = new PVector(0,0,0);
  
  sea = loadImage("seaside.jpg");
  sand = loadImage("sand.jpg");
  sky = loadImage("sky.jpg");
  
  ep = loadImage("ep.png");
  tubep = loadShape("tubep.obj");
  tubep.setTexture(ep);
  tubep.scale(100);
  
  dol = loadImage("Dolphin/TOBJ_0.png");
  dolph = loadShape("Dolphin/dolphin.obj");
  dolph.setTexture(dol);
  
  sh = loadImage("Shark/TOBJ_0.png");
  shark = loadShape("Shark/shark.obj");
  shark.setTexture(sh);
  
  ro = loadImage("Rock/clay.png");
  rock = loadShape("Rock/clayrock.obj");
  rock.setTexture(ro);
  rock.scale(60);
  
  ch = loadImage("Chest/cheast.png");
  chest = loadShape("Chest/cheast.obj");
  chest.setTexture(ch);
  chest.scale(40);
  
  help = true;
  Shelp = "Move the MOUSE to move the camera.\nMove with WASD for horizontal movement\nand Q/E for height.\nPress L to change the ambient lights.\nPress H to return.";
}

void draw(){
  background(0);
  //cam.controllable = !help;
  if(!help){
    switch(day){
    case 0:ambientLight(64,224,208); break;
    case 1:ambientLight(255,127,80); break;
    case 2:ambientLight(25,25,112); break;
    }
    genLimits();
    pushMatrix();
    drawRock(500,140,500,0);
    
    drawTube(450,140,450,0);
    drawTube(450,140,550,0);
    drawTube(550,140,450,0);
    drawTube(550,140,550,0);
    drawTube(500,140,450,0);
    drawTube(450,140,500,0);
    drawTube(550,140,500,0);
    drawTube(500,140,550,0);
    
    drawDolphin(400,0,-150,0);
    drawShark(-250,0,350,0);
    drawChest(0,150,-300,180);
    popMatrix();
  }else{
    showHelp();
  }
  if(cam.position.x > 480){
    cam.position.x = 480;
  }else if(cam.position.x < -480){
    cam.position.x = -480;
  }else if(cam.position.z > 480){
    cam.position.z = 480;
  }else if(cam.position.z < -480){
    cam.position.z = -480;
  }else if(cam.position.y > 140){
    cam.position.y = 140;
  }else if(cam.position.y < -140){
    cam.position.y = -140;
  }
}

void genLimits(){
  pushMatrix();
  stroke(0);
  noStroke();
  PShape lim = createShape(BOX,1200,300,1200);
  lim.setTexture(sea);
  shape(lim);
  translate(0,150,0);
  PShape floor = createShape(BOX,1200,10,1200);
  floor.setTexture(sand);
  shape(floor);
  translate(0,-300,0);
  PShape top = createShape(BOX,1200,10,1200);
  top.setTexture(sky);
  shape(top);
  popMatrix();
}

void drawTube(int x, int y, int z, int r){
  pushMatrix();
  translate(x,y,z);
  rotateX(radians(90));
  rotateY(radians(r));
  shape(tubep);
  popMatrix();
}

void drawDolphin(int x, int y, int z, int r){
  pushMatrix();
  translate(x,y,z);
  rotateX(radians(180));
  rotateY(radians(r));
  shape(dolph);
  popMatrix();
}

void drawShark(int x, int y, int z, int r){
  pushMatrix();
  translate(x,y,z);
  rotateX(radians(180));
  rotateY(radians(r));
  shape(shark);
  popMatrix();
}

void drawRock(int x, int y, int z, int r){
  pushMatrix();
  translate(x,y,z);
  rotateX(radians(180));
  rotateY(radians(r));
  shape(rock);
  popMatrix();
}

void drawChest(int x, int y, int z, int r){
  pushMatrix();
  translate(x,y,z);
  rotateX(radians(-90));
  rotateY(radians(r));
  shape(chest);
  popMatrix();
}

void showHelp(){
  stroke(255);
  rotateY(radians(-90));
  text(Shelp,cam.position.x,cam.position.y,cam.position.z-300);
}

void keyPressed ( )
{
  if((key =='H')||(key=='h')){
    help = !help;
  }
  if((key =='L')||(key=='l')){
    day = (day+1)%3;
  }
}
