PImage bgImg; //背景圖
PImage soilImg;//土壤
PImage lifeImg;//士兵生命
PImage soldierImg;//士兵
PImage robotImg;//機器人
PImage groundhogImg;//土撥鼠
int x =0;//設士兵座標x為0
int lightPos = 240+25;//設定雷射光座標


void setup() {
   size(640, 480, P2D);//顯示的畫面尺寸
   bgImg = loadImage("img/bg.jpg");//放入背景圖片
   soilImg = loadImage("img/soil.png");//放入土壤圖片
   lifeImg= loadImage("img/life.png");//放入士兵生命圖片
   soldierImg = loadImage("img/soldier.png");//放入士兵圖片
   robotImg = loadImage("img/robot.png");//放入機器人圖片
   groundhogImg = loadImage("img/groundhog.png");//放入土撥鼠圖片

}

void draw() {
  image(bgImg,0,0);//設背景圖的座標
  image(soilImg, 0,160);//設土壤圖的座標
  image(lifeImg,10,10);//設士兵生命圖1的座標
  image(lifeImg,80,10);//設士兵生命圖2的座標
  image(lifeImg,150,10);//設士兵生命圖3的座標
  image(soldierImg, x, 160);//設士兵圖的座標
  image(groundhogImg,320,80);//設土撥鼠圖的座標
  image(robotImg, 240,240 );//設機器人圖的座標
  
  strokeWeight(10.0);//雷射光射出寬度
  strokeCap(ROUND);
  stroke(255,0,0);//雷射光的顏色
  line(lightPos -40, 240+37, lightPos, 240+37); //雷射光的座標變化
  lightPos=lightPos-2;
  if(lightPos<=40){
    lightPos = 240+25;
  }
  
  x=x+1; //士兵座標X變化
  if ( x > 640)//士兵超出畫面做改變
    x = -80;
}
