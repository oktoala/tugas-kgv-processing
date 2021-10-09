void setup() {
    size(512, 512);
}

void draw() {
    background(#ff0000, #00ff00, #0000ff);
    langit();
    awan(16.542, 10.699);
    awan(334.740, 5.537);
    matahari();
    gunung(0, 51.861, #ff0000);
    gunung(237.199, 51.861, #920000);
    
}

void gunung(float xx, float yy, color colour) {
    
    /* 
    Karena arc adalah setengah lingkaran, jadi width = height
    (nyesuaikan radius)
    */
    float width = 275.801; 
    float height = width;
    /* 
    Karena arc (0,0)nya ada di tengah, jadi width/2 
    untuk dapat (0,0). Lalu tambahkan dengan (x,y)
    sesuka kalian.
    */
    float x = (width / 2) + xx; 
    float y = (width / 2) + yy;
    fill(colour);
    noStroke();
    arc(x, y, width, height, PI, TWO_PI);
}

void matahari() {
    /* 
    Penjelasan Matahari sama seperti gunung bedanya cuma di ukuran.
    */
    fill(#ffff00);
    noStroke();
    arc(73 + 181.039, 73 + 57.354, 143.969, 143.969, PI, TWO_PI);
}

void langit() {
    // Langit cuman persegi empat biasa yang berwaena biru
    fill(#40fff1);
    rect(0, 0, 512.000, 190.336);
}

void awan(float xx, float yy) {
    float x_rect = 0 + xx;
    float y_rect = 31.065 + yy;
    float w_rect = 112.237;
    float h_rect = 43.090;
    noStroke();
    
    fill(#ffffff);
    rect(x_rect, y_rect, w_rect, h_rect, 100);
    
    float wh = 51.108;
    float x_circle = xx+  10.689+ (wh/2);
    float y_circle = yy+ 9.687+ (wh/2);
    for (int i = 0; i < 2; i++) {
        fill(#ffffff);
        ellipse(x_circle, y_circle, wh, wh);

        x_circle = xx + 42.423+ (wh/2);
        y_circle = yy +0+ (wh/2);
    }
}