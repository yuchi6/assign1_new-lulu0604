PImage bgImg; //背景圖變數
PImage soilImg;//土壤變數
PImage lifeImg;//士兵生命變數
PImage soldierImg;//士兵變數
PImage robotImg;//機器人變數
PImage groundhogImg;//土撥鼠變數
int x =0;//設士兵座標x變數為0
int lightPos = 240+25;//設雷射光變數


void setup() {
   size(640, 480, P2D);//整個畫面尺寸
   bgImg = loadImage("img/bg.jpg");//插入背景圖的檔案
   soilImg = loadImage("img/soil.png");//插入土壤圖的檔案
   lifeImg= loadImage("img/life.png");//插入士兵生命圖的檔案
   soldierImg = loadImage("img/soldier.png");//插入士兵圖的檔案
   robotImg = loadImage("img/robot.png");//插入機器人圖的檔案
   groundhogImg = loadImage("img/groundhog.png");//插入土撥鼠圖的檔案

}

void draw() {
  image(bgImg,0,0);//設背景圖座標
  image(soilImg, 0,160);//設土壤圖座標
  image(lifeImg,10,10);//設士兵生命圖座標
  image(lifeImg,80,10);//設士兵生命圖座標
  image(lifeImg,150,10);//設士兵生命圖座標
  image(soldierImg, x, 160);//設士兵圖座標
  image(groundhogImg,320,80);//設土撥鼠圖座標
  image(robotImg, 240, 240);//設機器人圖座標
  
  strokeWeight(10.0);
  strokeCap(ROUND);
  stroke(255,0,0);//雷射光顏色
  line(lightPos -40, 240+37, lightPos, 240+37); //雷射光座標變化
  lightPos=lightPos-2;
  if(lightPos<=40){
    lightPos = 240+25;
  }
  
  x=x+1; //士兵座標X變化
  if ( x > 640)//士兵超出畫面做改變
    x = -80;
}
