
void setup() {
    size(1280, 720);
}

void draw() {
    background(10);
    android_green();
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
