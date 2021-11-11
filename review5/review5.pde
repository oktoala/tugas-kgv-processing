void setup()
{
    size(512, 512, P3D);
    frameRate(200);
    noStroke();
}
float x = 0;
float z = 0;
float xi = 1;
float yi = 1;
float zi = 1;

void draw() {
    
    background(0);
    
    // matahari
    pushMatrix();
    translate(232, 192, 0);
    fill(#ffff00);
    sphere(112);
    popMatrix();
    
    planet(20, 200); 
    planet(10, 240);
    planet(30, 100);
}

void planet(float size, float y) {
    
    pushMatrix();
    translate(x, y, z);
    fill(#00ff00);
    sphere(size);
    popMatrix();
    
    if (x > 500) {
        xi = -1;
    } else if (x < 0) {
        xi = 1;
    }
    x += xi;
    
    // Ditengah
    if (z == 250) {
        zi = -1;
    } else if (z == 0 && x > 500) { /* Ini di ujung kanan */
        zi = -1;
    } else if (z == -250) { /* Ini di belakang */
        zi = 1;
    } else if (z == 0 && x <= 0) { /* Ini di ujung kiri (awal) */
        zi = 1;
    }
        
    z +=zi;
        
        
}