import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class tugas2 extends PApplet {

// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
int b1, b2, c1, c2, c3, c4;
int red, yellow, green, cyan, blue, magenta;

public void setup() {
    
    
    //Define colors
    b1 = color(255);
    b2 = color(0);
    c1 = color(204, 102, 0);
    c2 = color(0, 102, 153);
    c3 = color(255, 0, 0);
    c4 = color(0, 255, 0);
    red = color(0xffff0000);
    yellow = color(0xffffff00);
    green = color(0xff00ff00);
    cyan = color(0xff00ffff);
    blue = color(0xff0000ff);
    magenta = color(0xffff00ff);
    
    noLoop();
}

public void draw() {
    //Foreground
    // color[] colors = {red, yellow, green, cyan, blue, magenta, red};
    // colors = reverse(colors);
    int[] colors = {c1, c2, c3};
    
    // setGradient(50, 90, 540, 80, colors, Y_AXIS);
    setGradient(50, 190, 80 * colors.length - 1, 80, colors, X_AXIS);
}

public void setGradient(int x, int y, float w, float h, int[] colors, int axis) {
    
    noFill();
    
    float temp_x = PApplet.parseFloat(x);
    if (axis == Y_AXIS) {  // Top to bottom gradient
        for (int i = y; i <= y + h; i++) {
            float inter = map(i, y, y + h, 0, 1);
            int c = lerpColor(colors[0], colors[1], inter);
            stroke(c);
            line(x, i, x + w, i);
        }
    }
    else if (axis == X_AXIS) {  
        for (int i = colors.length - 1; i > 0; i--) {
            float limit = temp_x + ((x + w) / colors.length-1);
            for (float ii = temp_x; ii <= limit; ii++) {
                float inter = map(ii, temp_x, limit, 0, 1);
                int c = lerpColor(colors[i], colors[i - 1], inter);
                stroke(c);
                line(ii, y, ii,(y + h));
            }
            temp_x  = limit; 
            // println("tempX: ", temp_x);
        }
    }
}
  public void settings() {  size(720, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "tugas2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
