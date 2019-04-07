function setup() {
  var main_canvas = createCanvas(getHotLit(0), getHotLit(1));
  main_canvas.parent(getHotLit(2)); //colorMode(HSL, 100);  // Use HSB with scale of 0-100

  colorMode(HSB); // Use HSB with scale of 0-100

  background(getHotLit(3));
}

function draw() {
  //clear(0);
  background(getHotLit(4));
  fill(getHotLit(5), getHotLit(6), getHotLit(7));
  quad(getHotLit(8), getHotLit(9), getHotLit(10), getHotLit(11), getHotLit(12), getHotLit(13), getHotLit(14), getHotLit(15));
}