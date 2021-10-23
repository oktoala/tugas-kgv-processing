void setup() {
    size(512, 512);
    // noLoop();
}
int i = 0;
    int teta = 15; /* Tinggal ubah nilai teta supaya lebih variatif */
void draw() {
    noStroke();
    // for (int i = 0; i <= 360; i+= teta) {
        pushMatrix();
        translate(256, 256);
        rotate(radians(i));
        fill(color(random(255), random(255), random(255)));
        rect(100, 100, 100, 40);
        popMatrix();
    // }    
    i += teta;
}
