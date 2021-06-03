//Random comment

/* more comments*/
// hello comment
// //noinject
function setup() {
  var main_canvas = createCanvas(1280, 720, WEBGL);
  perspective(0.8, 128 / 72, 0, 1000);
  main_canvas.parent('canvasContainer'); //colorMode(HSL, 100);  // Use HSB with scale of 0-100

  colorMode(HSB); // Use HSB with scale of 0-100

  background(0);
}

function draw() {
  //clear(0);
  background(1,1,1);
  fill(300, 200, 50);
  rotate(10, [5, 5, 5]);
  rotateX(1);
  rotateY(1);
  rotateZ(1);
  box(300, 300, 100, 100);
}

function testFunctionwithArgs(thisArg, thatArg) {
  doStuff();
  doMoreStuff();
  return;
}