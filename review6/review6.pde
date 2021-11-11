float rotate = 0;
void setup() {
    size(720,720,P3D);
    noStroke();
}

void draw() {
    
    background(0);
    rotateX(0.8);
    scale(0.5);
    translate(width, height + 200);
    pushMatrix();
    rotate(rotate);
    // Matahari
    fill(#FAFF03);
    sphere(80);
    pointLight(255, 255, 255, 0, 10, -1); 
    // directionalLight(255, 255, 255, 0, 10, -1); 
    //planet1
    fill(#2EDB41);
    
    //planet2
    fill(#B26C02);
    planet(42, -45,300, -20);
    //planet3
    fill(#E330DA);
    planet(35,230,20,0);
    //planet4       
    fill(#4A8098);
    planet(23, -52,60,0);
    //planet5
    fill(#E85050);
    planet(10, -130,0,0);
    popMatrix();
    rotate += 0.01;
}

void planet(float size, float x, float y, float z) {
    translate(x,y,z);
    sphere(size);
}
