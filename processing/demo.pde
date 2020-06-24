int bullet = 0 ;//繧ｷ繝ｧ繝�ヨ謨ｰ
int score = 0; //繧ｹ繧ｳ繧｢
int hit = 0;//繝偵ャ繝域焚
float [] zx=new float[10];//繧ｿ繝ｼ繧ｲ繝�ヨx蠎ｧ讓�
float [] zy=new float[10];//繧ｿ繝ｼ繧ｲ繝�ヨy蠎ｧ讓�
void setup()
{
  size(1250, 700);//謠冗判繧ｵ繧､繧ｺ

  for (int i=0; i<10; i++)
  {
    zx[i]=random(150, width-150);//繧ｿ繝ｼ繧ｲ繝�ヨ縺ｮ繝ｩ繝ｳ繝繝�逕滓�
    zy[i]=random(100, height-100);//繧ｿ繝ｼ繧ｲ繝�ヨ縺ｮ繝ｩ繝ｳ繝繝�逕滓�
  }
}

void draw()

{ 
  /*if(mousePressed)
   {frameRate(3);}
   else
   {frameRate(60);}*/

  background(255);//繝舌ャ繧ｯ繧ｰ繝ｩ繧ｦ繝ｳ繝�
  strokeCap(SQUARE);//蝗ｳ蠖｢縺ｮ遶ｯ蠖｢
  strokeWeight(2);
  //fill(255, 0, 0);
  //ellipse(mouseX+tx,mouseY+ty,50,50);//terget
  fill(255, 0, 0);//繧ｿ繝ｼ繧ｲ繝�ヨ縺ｮ濶ｲ

  for (int j=0; j<10; j++)
  {
    ellipse(625-mouseX+zx[j], 350-mouseY+zy[j], 50, 50);//繧ｿ繝ｼ繧ｲ繝�ヨ縺ｮ遘ｻ蜍�
    ellipse(50+(625-mouseX+zx[j])/6.2, 50+(350-mouseY+zy[j])/6.2, 5, 5);//繧ｿ繝ｼ繧ｲ繝�ヨ縺ｮ遘ｻ蜍�
  }

  strokeWeight(25);
  noFill();
  stroke(100);
  ellipse(width/2, height/2, 625, 625);//繧ｵ繧､繝�


  stroke(0, 0, 255);
  arc(width/2, height/2, 625, 625, radians(mouseY/2), radians(mouseX/3.47));
  arc(width/2, height/2, 625, 625, radians(mouseX/3.47), radians(mouseY/2));//繧ｵ繧､繝医ョ繧ｶ繧､繝ｳ

  stroke(255, 0, 0);
  arc(width/2, height/2, 625, 625, radians(360)-radians(mouseY/2), radians(360)-radians(mouseX/3.47));
  arc(width/2, height/2, 625, 625, radians(360)-radians(mouseX/3.47), radians(360)-radians(mouseY/2));//繧ｵ繧､繝医ョ繧ｶ繧､繝ｳ

  stroke(0, 255, 0);
  arc(width/2, height/2, 625, 625, radians(180)-radians(mouseY/2), radians(180)-radians(mouseX/3.47));
  arc(width/2, height/2, 625, 625, radians(180)-radians(mouseX/3.47), radians(180)-radians(mouseY/2));//繧ｵ繧､繝医ョ繧ｶ繧､繝ｳ

  stroke(0);
  ellipse(width/2, height/2, 600, 600);//繧ｵ繧､繝�
  stroke(100);
  strokeWeight(1.25);
  stroke(0);

  line(450, height/2, 800, height/2);//繧ｵ繧､繝�
  line(width/2, 150, width/2, 540);
  fill(255);
  beginShape();
  vertex(width/2-10, 130);
  vertex(width/2+10, 130);
  vertex(width/2+10, 130+50);
  vertex(width/2, 130+65);
  vertex(width/2-10, 130+50);
  endShape(CLOSE);//繧ｵ繧､繝�

  beginShape();
  vertex(420, height/2-10);
  vertex(420, height/2+10);
  vertex(420+50, height/2+10);
  vertex(420+65, height/2);
  vertex(420+50, height/2-10);
  endShape(CLOSE);//繧ｵ繧､繝�

  beginShape();
  vertex(830, height/2-10);
  vertex(830, height/2+10);
  vertex(830-50, height/2+10);
  vertex(830-65, height/2);
  vertex(830-50, height/2-10);
  endShape(CLOSE);//繧ｵ繧､繝�

  line(width/2, 540, width/2-30, 570);
  line(width/2, 540, width/2+30, 570);
  line(width/2-50, 525, width/2+50, 525);
  line(width/2-65, 500, width/2+65, 500);
  line(width/2-50, 475, width/2+50, 475);
  line(width/2-25, 450, width/2+25, 450);//繧ｵ繧､繝�


  for (int i =500; i< 751; i+=25)
  {
    line(i, height/2+3, i, height/2-3);
  }
  for (int i =225; i< 351; i+=25)
  {
    line(width/2+3, i, width/2-3, i);
  }//繧ｵ繧､繝�

  stroke(0);
  noFill();
  strokeWeight(400);
  ellipse(width/2, height/2, 1050, 1050);//繧ｵ繧､繝�
  fill(0);
  PFont font;
  font =loadFont("Algerian-48.vlw");//繝輔か繝ｳ繝�
  textFont(font, 25);
  text("tiger", width/2-30, 470);//繧ｵ繧､繝�

  strokeWeight(1);
  fill(255);
  rect(50, 50, 200, 150);//繝槭ャ繝�
  for (int j=0; j<10; j++)
  {
    fill(0);
    ellipse(50+(625-mouseX+zx[j])/6.2, 50+(350-mouseY+zy[j])/6.2, 5, 5);//map
  }//繝槭ャ繝� 繧ｿ繝ｼ繧ｲ繝�ヨ
  strokeWeight(2);
  stroke(255, 0, 0);
  noFill();
  rect(50+mouseX/12.64, 50+mouseY/9.33, 100, 75);//繝槭ャ繝� 迴ｾ蝨ｨ蝨ｰ


  fill(255);
  stroke(0);
  beginShape();
  vertex(300, 600);
  vertex(250, 550);
  vertex(50, 550);
  vertex(50, 650);
  vertex(250, 650);
  vertex(300, 600);
  vertex(50, 600);
  endShape(CLOSE);//繧ｹ繧ｳ繧｢��

  beginShape();
  vertex(50, 48);
  vertex(50, 30);
  vertex(100, 30);
  vertex(130, 48);
  endShape(CLOSE);//繝槭ャ繝�


  beginShape();
  vertex(850, 650);
  vertex(900, 600);
  vertex(1200, 600);
  vertex(1150, 650);
  endShape(CLOSE);//

  beginShape();
  vertex(900, 50);
  vertex(1000, 150);
  vertex(1200, 150);
  vertex(1200, 50);
  endShape(CLOSE);//繧ｹ繧ｳ繧｢��

  stroke(255);
  line(1205, 600, 1155, 650);//繝�じ繧､繝ｳ

  fill(0);
  textSize(40);
  text(str(bullet)+" shot", 80, 595);//謦�焚
  text(str(hit)+" hit", 80, 645);//繝偵ャ繝域焚
  textSize(45);
  text(str(score), 1000, 100);//繧ｹ繧ｳ繧｢
  textSize(30);
  text(" point", 1080, 140);//繝昴う繝ｳ繝�
  fill(0, 0, 255);
  textSize(20);
  text(" map", 50, 47);//繝槭ャ繝�
  fill(255, 0, 0);
  textSize(20);
  fill(0);
  text("2016/7/11",970,630);
  for (int j=0; j<10; j++)
  {
    if (dist(width/2, height/2, 625-mouseX+zx[j], 350-mouseY+zy[j])<25)
    {//text("lock on", 900, 650);

      text("lock on", 625-mouseX+zx[j]-30, 350-mouseY+zy[j]-25);
    }//繝槭ャ繝暦ｼ�lock on
  }
}



void mouseClicked()
{ 
  bullet+=1;
  for (int j=0; j<10; j++)
  {
    if (dist(width/2, height/2, 625-mouseX+zx[j], 350-mouseY+zy[j])<25)//蠖薙◆繧雁愛螳�
    {
      hit+=1;
      score+=1000;
      zx[j]=random(300, width-300);
    }
  }
  score-=bullet*20;
  strokeWeight(4);
  fill(255, 255, 0, 100);
  ellipse(width/2, height/2, 600, 600);//逋ｺ遐ｲ
}
