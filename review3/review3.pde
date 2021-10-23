int[] coords;
int x = 0;

void setup() {
    size(500, 500);
    background(255);
    fill(200, 200, 30, 50);
    String[] nums = loadStrings("numbers.csv");
    coords = int(split(nums[0], ','));
    println(coords.length);
}

void draw() {
    rect(x * 35 + 20, height - coords[x],
        30, coords[x]);
    x++;
    if (x == coords.length) {
        x = 0;
    }
    delay(500);
}
