// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2, c3, c4;
color red, yellow, green, cyan, blue, magenta;

void setup() {
    size(720, 360);
    
    //Define colors
    b1 = color(255);
    b2 = color(0);
    c1 = color(204, 102, 0);
    c2 = color(0, 102, 153);
    c3 = color(255, 0, 0);
    c4 = color(0, 255, 0);
    red = color(#ff0000);
    yellow = color(#ffff00);
    green = color(#00ff00);
    cyan = color(#00ffff);
    blue = color(#0000ff);
    magenta = color(#ff00ff);
    
    noLoop();
}

void draw() {
    //Foreground
    // color[] colors = {red, yellow, green, cyan, blue, magenta, red};
    // colors = reverse(colors);
    color[] colors = {c1, c2, c3};
    
    // setGradient(50, 90, 540, 80, colors, Y_AXIS);
    setGradient(50, 190, 80 * colors.length - 1, 80, colors, X_AXIS);
}

void setGradient(int x, int y, float w, float h, color[] colors, int axis) {
    
    noFill();
    
    float temp_x = float(x);
    if (axis == Y_AXIS) {  // Top to bottom gradient
        for (int i = y; i <= y + h; i++) {
            float inter = map(i, y, y + h, 0, 1);
            color c = lerpColor(colors[0], colors[1], inter);
            stroke(c);
            line(x, i, x + w, i);
        }
    }
    else if (axis == X_AXIS) {  
        for (int i = colors.length - 1; i > 0; i--) {
            float limit = temp_x + ((x + w) / colors.length-1);
            for (float ii = temp_x; ii <= limit; ii++) {
                float inter = map(ii, temp_x, limit, 0, 1);
                color c = lerpColor(colors[i], colors[i - 1], inter);
                stroke(c);
                line(ii, y, ii,(y + h));
            }
            temp_x  = limit; 
            // println("tempX: ", temp_x);
        }
    }
}
