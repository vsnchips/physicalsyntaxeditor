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


var hotast;
var coolast;

//These functions create Abstract syntax trees.
  //Next Step!! TODO: Replace these with interactive ast manipulation.

function transform_hot(){
  clog("transforming hardcode");
  hotast = Babel.transform(hardcode,{
    plugins: [hotcode]
  })
}

function transform_ast_representation(){

  clog("transforming hardcode");
  coolast = Babel.transform(hardcode,{
	  ast:true,
	  plugins: []
  })
	//draw ast
 astroot2elms(coolast.ast);

}

function write(){
  clog("Sending hot code");
  pkt = JSON.stringify({kind:"AST", tree:hotast});
  socket.send(pkt);
  clog(pkt);
 }

function render(){
  clog("Sending cool code");
  pkt = JSON.stringify({kind:"ASTcool", tree:coolast});
  socket.send(pkt);
  clog(pkt);
 }

//Socket Definition

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
	  transform_hot();
	  write();

	  transform_ast_representation();
  }
}

socket.onclose = function(event) {
  console.log('Closed connection 😱');
}
//End Socket Definition


//HTML object binding
document.getElementById('load').addEventListener('click', function(event) {
  socket.send('givemethehardcode');

});

document.getElementById('event_transform_hot').addEventListener('click', function(event) {
  transform_hot();
});

document.getElementById('event_transform_cool').addEventListener('click', function(event) {
  transform_ast_representation();
});

document.getElementById('event_write_hot').addEventListener('click', function(event) {
 write(); 
});

document.getElementById('event_write_cool').addEventListener('click', function(event) {
 render(); 
});


