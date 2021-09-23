int x, y;

void setup() {
    size(1280, 720);
    x = 50;
    y = 90;
    
    noLoop();
}

void draw() {
    
    color[] tugas1 = {#2e5090, #3ddc84,  #003153};
    color[] rgb = {#ff0000, #00ff00, #0000ff};
    color[] hue = {#ff0000, #ffff00, #00ff00, #00ffff, #0000ff, #ff00ff, #ff0000};
    
    setGradient("right-to-left", rgb);
    setGradient("top-to-bottom", rgb);
    setGradient("right-to-left", hue);
    // setGradient("left-to-right", tugas1);
}

void setGradient(String direction, color[] colors) {
    
    float w = 540;
    float h = 90;
    float temp_x = float(x);
    float temp_y = float(y);
    int margin = 2;
    
    noFill();
    
    if (direction == "top-to-bottom" || direction == "bottom-to-bottom") {  

        if (direction != "bottom-to-left") colors = reverse(colors);
        
        for (int i = colors.length - 1; i > 0; i--) {
            float limit = temp_y + ((y + h) / colors.length - 1);
            for (float ii = temp_y; ii <= limit; ii++) {
                float inter = map(ii, temp_y, limit, 0, 1);
                color c = lerpColor(colors[i], colors[i - 1], inter);
                stroke(c);
                line(x, ii, y + h, ii);
            }
            temp_y = limit;
        }
        
    } else if (direction == "right-to-left" || direction == "left-to-right") {  
        
        if (direction != "left-to-right") colors = reverse(colors);
        
        for (int i = colors.length - 1; i > 0; i--) {
            float limit = temp_x + ((x + w) / colors.length - 1);
            for (float ii = temp_x; ii <= limit; ii++) {
                float inter = map(ii, temp_x, limit, 0, 1);
                color c = lerpColor(colors[i], colors[i - 1], inter);
                stroke(c);
                line(ii, y, ii,(y + h));
            }
            temp_x  = limit; 
        }
    }
    
    y += h + margin;
}
