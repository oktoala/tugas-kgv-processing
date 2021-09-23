int x, y;
void setup() {
    size(1280, 720);
    x = 10;
    y = 10;
    
    noLoop();
}

void draw() {
    
    color[] tugas1      = {#2e5090, #3ddc84,  #003153}; // yInMn, Android Green, Prussian Blue
    color[] hue         = {#ff0000, #ffff00, #00ff00, #00ffff, #0000ff, #ff00ff, #ff0000}; // rygcbmr
    color[] instagram   = {#405de6, #5851db, #833ab4, #c13584, #e1306c, #fd1d1d, #F56040, #F77737, #FCAF45, #FFDC80};
    color[] google      = {#4285f4, #0F9D58, #F4B400, #DB4437};
    
    setGradient("top-to-bottom", tugas1);
    setGradient("right-to-left", hue);
    setGradient("bottom-to-top", instagram);
    setGradient("left-to-right", google);
}

void setGradient(String direction, color[] colors) {
    
    float limit = 0.0;
    float w = 600;
    float h = 90;
    float temp_x = float(x);
    float temp_y = float(y);
    int margin = 2;
    
    noFill();
    
    if (direction == "top-to-bottom" || direction == "bottom-to-top") {  
        
        if (direction != "bottom-to-left") colors = reverse(colors);
        
        for (int i = colors.length - 1; i > 0; i--) {
            limit = temp_y + ((y + h) / colors.length - 1);
            for (float ii = temp_y; ii <= limit; ii++) {
                float inter = map(ii, temp_y, limit, 0, 1);
                color c = lerpColor(colors[i], colors[i - 1], inter);
                stroke(c);
                line(x, ii, x + w, ii);
            }
            temp_y = limit;
        }
        y = int(limit + margin);
        
    } else if (direction == "right-to-left" || direction == "left-to-right") {  
        
        if (direction != "left-to-right") colors = reverse(colors);
        
        for (int i = colors.length - 1; i > 0; i--) {
            limit = temp_x + ((x + w) / colors.length - 1);
            for (float ii = temp_x; ii <= limit; ii++) {
                float inter = map(ii, temp_x, limit, 0, 1);
                color c = lerpColor(colors[i], colors[i - 1], inter);
                stroke(c);
                line(ii, y, ii,(y + h));
            }
            temp_x  = limit; 
        }
        y +=h + margin;
    }
}

