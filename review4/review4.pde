void setup() {
    size(512, 512);
    background(255);
    smooth();
    noFill();
    stroke(0);
    noLoop();
}

void draw() {
    // Huruf Y
    beginShape();
    curveVertex(36.861, 46.970);
    curveVertex(36.861, 46.970);
    curveVertex(81.852, 116.956);
    curveVertex(83.519, 216.938);
    curveVertex(70.188, 209.439);
    curveVertex(81.852, 116.956);
    curveVertex(132.676, 43.637);
    curveVertex(132.676, 43.637);
    endShape();
    
    
    // Huruf O
    pushMatrix();
    translate(100, 50);
    bezier(50, 75, 25, 25, 125, 25, 100, 75);
    bezier(50, 75, 25, 125, 125, 125, 100, 75);
    popMatrix();
    
    
    beginShape();
    curveVertex(294.599, 85.023);
    curveVertex(294.599, 85.023);
    curveVertex(247.521, 87.523);
    curveVertex(240.855, 187.503);
    curveVertex(299.177, 187.503);
    curveVertex(304.176, 140.012);
    curveVertex(266.684, 138.346);
    curveVertex(266.684, 138.346);
    endShape();
    
    beginShape();
    curveVertex(355.272, 80.786);
    curveVertex(355.272, 80.786);
    curveVertex(327.621, 183.984);
    curveVertex(341.229, 133.197);
    curveVertex(370.270, 133.197);
    curveVertex(382.895, 180.316);
    curveVertex(355.272, 80.786);
    curveVertex(355.272, 80.786);
    endShape();

    float x = 60;
    pushMatrix();
    beginShape();
    curveVertex(355.272+x, 80.786);
    curveVertex(355.272+x, 80.786);
    curveVertex(327.621+x, 183.984);
    curveVertex(341.229+x, 133.197);
    curveVertex(370.270+x, 133.197);
    curveVertex(382.895+x, 180.316);
    curveVertex(355.272+x, 80.786);
    curveVertex(355.272+x, 80.786);
    endShape();
    popMatrix();
    
    
    
}