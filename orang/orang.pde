float x, y;

float size = 240;

void setup() {
    size(800, 500);
    frameRate(400);
    x = 0;
    // noLoop();
}

void draw() {
    background(#21CBBC);
    println(x);
    
    smooth();
    noStroke();
    pushMatrix();

    translate(50,50);
    //matahari
    fill(#FFF303);
    ellipse(550,40,100,100);
    
    //awan
    fill(#E8E8E8);
    ellipse(350,80,70,45);
    ellipse(400,80,85,65);
    ellipse(440,80,70,35);
    fill(#E6EAEA);
    ellipse(50,40,80,55);
    ellipse(100,40,95,75);
    ellipse(140,40,80,45);
    
    //aspal
    fill(#6B696c);
    rect( - 50,350,1000,300);
    
    //mode bergerak
    x += 0.3;
    translate(x - 200, height / 2 - 2 * size / 2);

    //mobil bergerak
    fill(#FF5D12); //belakang
    rect(75,250,200,100);
    fill(#FE00FF); //depan
    rect(275,285,70,65);
    fill(255); //kaca mobil
    rect(285,295,45,45);
    fill(0); //ban
    ellipse(125,350,60,60);
    ellipse(275,350,60,60);
    
    //awan bergerak
    rotate(radians( - 2));
    scale(1);
    fill(#E042F2);
    fill(#E0E0E0);
    ellipse(400,0,80,40);
    ellipse(450,0,95,60);
    ellipse(500,0,80,30);
    
    popMatrix();

    if (x > 949){
        x = -500;
    }
}