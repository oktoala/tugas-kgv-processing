
void setup() {
    size(1280, 720);
}

void draw() {
    background(10);
    android_green();
    yInMn();
    prussian_blue();
}

void prussian_blue(){
    fill(#003153);
    rect(120, 80, 220, 220, 28);
    fill(0);
    textSize(200);
    text("f", 200, 300);
}

void yInMn() {
    int ext = 100;
    int margin = 10;
    int pos = 10;
    strokeWeight(0);
    fill(#2E5090);
    
    square(pos, pos, ext);
    square(pos + ext + margin, pos, ext);
    square(pos, pos + ext + margin , ext);
    square(pos + ext + margin, pos + ext + margin , ext);
}

void android_green() {
    int x = 475;
    strokeWeight(0);
    fill(#3DDC84);
    arc(x, 300, 280, 280, PI, TWO_PI);
    
    // Mata
    fill(0);
    circle(x - 65, 240, 20); 
    circle(x + 65, 240, 20);
    
    // Tanduk
    int xHorn = 20;
    int yHorn = 170;
    strokeWeight(10); 
    stroke(61, 219, 134);
    line(x - xHorn, 400 - yHorn, 400 - xHorn, 300 - yHorn);
    line(x - xHorn, 400 - yHorn, 550 + xHorn, 300 - yHorn);
}

