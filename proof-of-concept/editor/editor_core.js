clog = console.log;

var hardcode;


//WebSocket Definition
var socket = new WebSocket('ws://localhost:8081/');
socket.onopen = function(event) {

  //Init
  console.log('Opened connection 🎉');
  //var json = JSON.stringify({ message: 'Hello' });
  var json = ({ message: 'Hello' });
  socket.send(json);
  console.log('Sent: ' + json);
  
  socket.send('givemethehardcode');
}

socket.onerror = function(event) {
  console.log('Error: ' + JSON.stringify(event));
}

socket.onmessage = function (event) {
//  console.log('Received: ' + event.data);
    json = JSON.parse(event.data);
  if (json.kind == 'hardcode'){
    hardcode = json.content;
  }
    clog('HARD CODE:' + hardcode);
    clog('EVENT DATA:' + event.data);
    clog('EVENT DATA CONTENT:' + event.data["content"]);
    clog('EVENT DATA CONTENT:' + JSON.parse(event.data).content);
}

socket.onclose = function(event) {
  console.log('Closed connection 😱');
}
//End Socket Definition

var ast;

//Babel =
function transform(){
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
  socket.send(JSON.stringify(ast));
  
});


