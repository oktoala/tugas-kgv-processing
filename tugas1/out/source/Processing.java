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

public class Processing extends PApplet {


public void setup() {
    
}

public void draw() {
    background(10);
    android_green();
    yInMn();
    prussian_blue();
}

public void prussian_blue(){
    strokeWeight(0);
    fill(0xff003153);
    rect(120, 80, 220, 220, 28);
    fill(0);
    textSize(200);
    text("f", 200, 300);
}

public void yInMn() {
    int ext = 100;
    int margin = 10;
    int pos = 10;
    strokeWeight(0);
    fill(0xff2E5090);
    
    square(pos, pos, ext);
    square(pos + ext + margin, pos, ext);
    square(pos, pos + ext + margin , ext);
    square(pos + ext + margin, pos + ext + margin , ext);
}

public void android_green() {
    int x = 475;
    strokeWeight(0);
    fill(0xff3DDC84);
    arc(x, 300, 280, 280, PI, TWO_PI);
    
    // Mata
    fill(0);
    circle(x - 65, 240, 20); 
    circle(x + 65, 240, 20);
    
    // Tanduk
    int xHorn = 20;
    int yHorn = 170;
    strokeWeight(10); 
    stroke(61, 219, 134);
    line(x - xHorn, 400 - yHorn, 400 - xHorn, 300 - yHorn);
    line(x - xHorn, 400 - yHorn, 550 + xHorn, 300 - yHorn);
}

  public void settings() {  size(1280, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Processing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
