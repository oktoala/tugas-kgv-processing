// Tema Logo Website Saya
void setup() {
    size(512, 512);
    frameRate(180); /* Diubah jika terlalu cepat atau lambat */
    // noLoop();
    noStroke();
    background(#1e1e1e);
}


void draw() {

    bottomBack("left");
    
    bottomBack("right");
    
    bottomFront("left");
    
    bottomFront("right");
    
    // noLoop();
    fill(#ffffff);
    textSize(12);
    text("1915016074", 20, 20);
    text("Oktavian Yoga", 20, 40);
    fill(#1e1e1e);
    rect(249.115,234.978, 13.353, 169.811);
    fill(#8bd3e1);
    strokeWeight(4);
    stroke(#1e1e1e);
    front("left");
    front("right");
    noStroke();
    roof();
}
    
void roof() {
    /* 
    Ini bagian atas gambar, bujur sangkar biasa
    */
    float w = 291.167;
    float h = 169.814;
    float xhalf = w / 2;
    float yhalf = h / 2;
    pushMatrix();
    fill(#8bd3e1);
    translate(110.212, 53.644);
    quad(0, yhalf, xhalf, 0, w, yhalf, xhalf, h);
    popMatrix();
}

void front(String direction) {
    /* 
    Ini bagian depan. Ada dua bentuk yang sebenarnya sama
    cuma di flip horizantal
    (x1, y1, x2, y2, x3, y3, x4, y4) => (x1, y2, x2, y1, x3, y4, x4, y3);
    */
    float w = 147.036;
    float h = 254.740;
    float y2 = 84.929;
    float y4 = 169.810;
    pushMatrix();
    if (direction == "left") {
        fill(#8bd3e1);
        translate(102.079, 150.049);
        quad(0, 0, w, y2, w, h, 0, y4);
    } else if (direction == "right") {
        fill(#8bd3e1);
        translate(262.468, 150.049);
        quad(0, y2, w, 0, w, y4, 0, h);
    }
    popMatrix();
}

float xLPlus = 1; /* Buat increment bagian kiri belakang */
float xLeft = 21.517; /* Nilai awal bagian kiri belakang */
float xRPlus = 1; /* Buat increment bagian kanan belakang */
float xRight = 422.547; /* Nilai awal bagian kanan belakang */
void bottomBack(String direction) {
    /* 
    Ini adalah bagian bawah belankang, segitiga sama sisi biasa
    Ada dua bentuk, yang sebenarnya sama, cuma beda karena di 
    flip horizontal atau rotate(180 deg)
    */
    float w = 67.208;
    float h = 77.270;
    pushMatrix();
    if (direction == "left") {
        background(#1e1e1e);
        translate(xLeft, 238.789);
        fill(#8bd3e1);
        triangle(0, h / 2, w, 0, w, h);

        // Ini bagian animasinya
        if (xLeft <= 21.517) {
            xLPlus = 1.0;
        } else if (xLeft >= 121.517) {
            xLPlus = -1.0;
        }
        xLeft += xLPlus;
        
    } else if (direction == "right") {
        pushMatrix();
        translate(xRight, 238.789);
        pushMatrix();
        translate(w, h);
        rotate(radians(180));
        fill(#8bd3e1);
        triangle(0, h / 2, w, 0, w, h);
        popMatrix();
        popMatrix();

        // Ini bagian animasinya
        if (xRight >= 422.547) {
            xRPlus = -1.0;
        } else if (xRight <= 322.547) {
            xRPlus = 1.0;
        }
        xRight += xRPlus;
    }
    popMatrix();
}

float xBLPlus = 1;
float yBLPlus = 1;
float xBLeft = 17.388;
float yBLeft = 328.329;

float xBRPlus = 1;
float yBRPlus = 1;
float xBRight = 269.253;
float yBRight = 328.329;
void bottomFront(String direction) {
    /* 
    Ini adalah bagian bawah-depan. Kurang tau bentuknya apa.
    Ada dua bentuk, hanya beda karena di flip horizontal
    (x1, y1, x2, y2, x3, y3, x4, y4) => (x1, y3, x4, y2, x3, y1, x2, y4)
    */
    float w = 225.098;
    float h = 129.802;
    pushMatrix();
    if (direction == "left") {
        fill(#8bd3e1);
        translate(xBLeft + xBLPlus, yBLeft + yBLPlus);
        quad(0, 42.961, 75.140, 0, w, 86.612, 149.592, h);

        // Ini bagian animasinya
        if (xBLeft >=  117.388 || yBLeft <= 228.329) {
            xBLPlus = -1.0;
            yBLPlus = 1.0;
        } else if (xBLeft <= 17.388 || yBLeft >= 328.329) {
            xBLPlus = 1.0;
            yBLPlus = -1.0;
        }
        xBLeft += xBLPlus;
        yBLeft += yBLPlus;
        
    } else if (direction == "right") {
        fill(#8bd3e1);
        translate(xBRight + xRPlus, yBRight + yBRPlus);
        quad(0, 86.612, 149.592, 0, w, 42.961, 75.140, h);

        // Ini bagian animasinya
        if (xBRight <=  169.253 || yBRight <= 228.329) {
            xBRPlus = 1.0;
            yBRPlus = 1.0;
        } else if (xBLeft >= 269.253 || yBRight >= 328.329) {
            xBRPlus = -1.0;
            yBRPlus = -1.0;
        }
        xBRight += xBRPlus;
        yBRight += yBRPlus;
    }
    popMatrix();
}