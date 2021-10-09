void setup() {
    size(512, 512);
}

void draw() {
    langit();
    awan(16.542, 10.699);
    awan(334.740, 5.537);
    matahari();
    tanah(0, 170.336, #f9c36e);
    tanah(248.523, 170.336, #59f864);
    jalan();
    gunung(0, 51.861, #ff0000);
    gunung(237.199, 51.861, #920000);
    rumah(66.157, 150.138);
    rumah(300.157, 150.138);
    
}

void gunung(float xx, float yy, color colour) {
    
    /* 
    Karena arc yang saya buat adalah setengah lingkaran, jadi width = height
    (nyesuaikan radius)
    */
    float width = 275.801; 
    float height = width;
    /* 
    Karena arc (0,0) ada di tengah, jadi width/2 
    untuk dapat (0,0) atau di pojok kiri-atas. Lalu tambahkan dengan (x,y)
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
    // Ini adalah (x, y) untuk lingkaran pertama
    float x_circle = xx +  10.689 + (wh / 2);
    float y_circle = yy + 9.687 + (wh / 2);
    for (int i = 0; i < 2; i++) {
        fill(#ffffff);
        ellipse(x_circle, y_circle, wh, wh);
        
        // Ini adalah (x, y) untuk lingkaran lingkaran kedua
        x_circle = xx + 42.423 + (wh / 2);
        y_circle = yy + 0 + (wh / 2);
    }
}

void jalan() {
    fill(#000000);
    float x = 40;
    float y = 160;
    quad(189+x, 18+y, 216+x, 18+y, 300+x, 360+y, 120+x, 360+y);
}

void tanah(float x, float y, color colour) {
    float w = 263.477;
    float h = 341.648;
    
    fill(colour);
    rect(x, y, w, h);
    
}

void rumah(float x, float y) {
    float wAtap = 102.987;
    float hAtap = 38.677;
    
    // Atap
    fill(#00ffff);
    triangle(0+x, hAtap+y, wAtap/2+x, 0+y, wAtap+x, hAtap+y);

    // Dinding
    fill(#f3ff1d);
    rect(0+x, hAtap+y, 102.988, 76.547);

    // Pintu
    fill(#d55328);
    rect(14.091+x, hAtap+31.94+y, 31.592, 44.986);

    // Jendela
    rect(58.244+x, hAtap+11.273+y, 33.471, 28.077);



}