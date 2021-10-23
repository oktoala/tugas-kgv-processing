void setup() {
    size(512, 512);
    background(#1e1e1e);
    noLoop();
    noStroke();
}

void draw() {

    // pushMatrix();
    fill(#ffffff);
    textSize(12);
    text("1915016074", 20, 20);
    text("Oktavian Yoga", 20, 40);
    // popMatrix();

    fill(#8bd3e1);
    
    pushMatrix();
    translate(110.212, 53.644);
    roof();
    popMatrix();
    
    pushMatrix();
    translate(102.079, 150.049);
    front("left");
    popMatrix();
    
    pushMatrix();
    translate(262.468, 150.049);
    front("right");
    popMatrix();
    
    pushMatrix();
    translate(21.517, 238.789);
    bottomBack("left");
    popMatrix();
    
    pushMatrix();
    translate(422.547, 238.789);
    bottomBack("right");
    popMatrix();
    
    pushMatrix();
    translate(17.388, 328.329);
    bottomFront("left");
    popMatrix();
    
    pushMatrix();
    translate(269.253, 328.329);
    bottomFront("right");
    popMatrix();
}

void roof() {
    /* 
    Ini bagian atas gambar, bujur sangkar biasa
    */
    float w = 291.167;
    float h = 169.814;
    float xhalf = w / 2;
    float yhalf = h / 2;
    quad(0, yhalf, xhalf, 0, w, yhalf, xhalf, h);
}

void front(String direction) {
    /* 
    Ini bagian depan. Ada dua bentuk yang sebenarnya sama
    cuma di flip horizantal
    (x1, y1, x2, y2, x3, y3, x4, y4) => (x1, y2, x2, y1, x3, y4, x4, y3);
    */
    float w = 147.036;
    float h = 254.740;
    float xT = 84.929;
    float yT = 169.810;
    if (direction == "left") {
        quad(0, 0, w, 84.929, w, h, 0, 169.810);
    } else if (direction == "right") {
        quad(0, 84.929, w, 0, w, 169.810, 0, h);
    }
}


void bottomBack(String direction) {
    /* 
    Ini adalah bagian bawah belankang, segitiga sama sisi biasa
    Ada dua bentuk, yang sebenarnya sama, cuma beda karena di 
    flip horizontal atau rotate(180 deg)
    */
    float w = 67.208;
    float h = 77.270;
    if (direction == "left") {
        triangle(0, h / 2, w, 0, w, h);
        
    } else if (direction == "right") {
        pushMatrix();
        translate(w, h);
        rotate(radians(180));
        triangle(0, h / 2, w, 0, w, h);
        popMatrix();
    }
}

void bottomFront(String direction) {
    /* 
    Ini adalah bagian bawah-depan. Kurang tau bentuknya apa.
    Ada dua bentuk, hanya beda karena di flip horizontal
    (x1, y1, x2, y2, x3, y3, x4, y4) => (x1, y3, x4, y2, x3, y1, x2, y4)
    */
    float w = 225.098;
    float h = 129.802;
    if (direction == "left") {
        quad(0, 42.961, 75.140, 0, w, 86.612, 149.592, h);
        
    } else if (direction == "right") {
        quad(0, 86.612, 149.592, 0, w, 42.961, 75.140, h);
    }
}