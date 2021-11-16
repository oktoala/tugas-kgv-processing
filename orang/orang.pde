PShape orang;
PShape bench;
PShape tamplian2;
PShape tamplian3;

void setup() {
  size(1280, 720);
  orang = loadShape("filename.svg");
  bench = loadShape("Bench.svg");
  tamplian2 = loadShape("Tampilan2.svg");
  tamplian3 = loadShape("Tampilan3.svg");
  noLoop();
} 

void draw(){

  // shape(tamplian3);
  shape(bench, 364, 374);
  // shape(orang, 583, 270);  // Draw at coordinate (110, 90) at size 100 x 100
}