function setup() {
  var main_canvas = createCanvas(400, 320);
  main_canvas.parent('canvasContainer'); //colorMode(HSL, 100);  // Use HSB with scale of 0-100

  colorMode(HSB); // Use HSB with scale of 0-100

  background(0);
}

function draw() {
  //clear(0);
  background(0);
  fill(300, 200, 50);
  quad(50, 50, 150, 50, 180, 180, 80, 180);
}

function withArgs(thisArg, thatArg) {
  doStuff();
  doMoreStuff();
  return;
}

let foo;

call(8);
