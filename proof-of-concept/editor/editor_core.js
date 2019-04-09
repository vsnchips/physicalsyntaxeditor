clog = console.log;

var hardcode;

//WebSocket Definition
var socket = new WebSocket('ws://localhost:8081/');

function updateHotLits(){
  litmsg =JSON.stringify({kind:'hot_updates',lits:lits});
  socket.send(litmsg);
  clog("Posting lits");
  clog(litmsg);

}

function hotLitsLoop(){
  updateHotLits();
  setTimeout( () => {
 // window.requestAnimationFrame(hotLitsLoop);
  },
  1000.0/3.0);
}

 function write(){
  clog("Sending hotcode");
  pkt = JSON.stringify({kind:"AST", tree:ast});
  socket.send(pkt);
  clog(pkt);
 }
 
socket.onopen = function(event) {
var pkt;
  //Init
  console.log('Opened connection 🎉');
  //var json = JSON.stringify({ message: 'Hello' });
  var json = ({ message: 'Hello' });
  socket.send(json);
  console.log('Sent: ' + json);
  
  socket.send('givemethehardcode');
  clog("request hardcode");

  hotLitsLoop();

}

socket.onerror = function(event) {
  console.log('Error: ' + JSON.stringify(event));
}

socket.onmessage = function (event) {
//  console.log('Received: ' + event.data);
    json = JSON.parse(event.data);
  if (json.kind == 'hardcode'){
    hardcode = json.content;
    clog('EVENT DATA CONTENT:' + JSON.parse(event.data).content);
    transform();
    write();
  }
}

socket.onclose = function(event) {
  console.log('Closed connection 😱');
}
//End Socket Definition

var ast;

//Babel =
function transform(){
  clog("transforming hardcode");
  ast = Babel.transform(hardcode,{
    plugins: [hotcode]
  })
}

//HTML object binding
document.getElementById('load').addEventListener('click', function(event) {
  socket.send('givemethehardcode');

});

document.getElementById('event_transform').addEventListener('click', function(event) {
  transform();
});


document.getElementById('event_write_hot').addEventListener('click', function(event) {
 write(); 
});


