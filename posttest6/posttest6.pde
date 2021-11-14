void setup() {
    size(640, 360, P3D);
    background(0);
}

void draw() {
    background(#CFB994);
    // Tekan mouse untuk menggerakkan camera
    if (mousePressed) {
        camera(mouseX, height / 2,(height / 2) / tan(PI / 6), width / 2, height / 2, 0, 0, 1, 0);
    }
    lights();
    directionalLight(255, 255, 255, 200, 100, -100); 
    pushMatrix();
    translate(width / 2, height / 2, 0);
    rotateX(PI / 2);
    noStroke();
    rotateZ( -PI / 6);
    piramida();
    popMatrix();
    
    pushMatrix();
    translate((width / 2) - 180, (height / 2) + 50, 0);
    rotateX(PI / 2);
    scale(0.6);
    noStroke();
    rotateZ( -PI / 6);
    piramida();
    popMatrix();
    
    noLights();
    pushMatrix();
    translate(-20, 20);
    fill(#ffff00);
    sphere(20);
    popMatrix();
    
}

void piramida() {
    beginShape();
    fill(#6A3407);
    // noFill();
    vertex( -100, -100, -100);
    vertex(100, -100, -100);
    // vertex(0,    0,  100);
    endShape();
    
    beginShape();
    vertex(100, -100, -100);
    vertex(100,  100, -100);
    vertex(0,    0,  100);
    endShape();
    
    // Depan
    beginShape();
    vertex(100, 100, -100);
    vertex( -100, 100, -100);
    vertex(0,   0,  100);
    endShape();
    
    beginShape();
    vertex( -100,  100, -100);
    vertex( -100, -100, -100);
    vertex(0,    0,  100);
    endShape(CLOSE);
}