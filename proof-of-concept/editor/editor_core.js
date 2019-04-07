clog = console.log;

var hardcode;

var socket = new WebSocket('ws://localhost:8081/');
socket.onopen = function(event) {
  console.log('Opened connection 🎉');
  //var json = JSON.stringify({ message: 'Hello' });
  var json = ({ message: 'Hello' });
  socket.send(json);
  console.log('Sent: ' + json);
  
//Init
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

/*document.querySelector('#close').addEventListener('click', function(event) {
  socket.close();
  console.log('Closed connection 😱');
});

document.querySelector('#send').addEventListener('click', function(event) {
  var json = JSON.stringify({ message: 'Hey there' });
  socket.send(json);
  console.log('Sent: ' + json);
});

var log = function(text) {
  var li = document.createElement('li');
  li.innerHTML = text;
  document.getElementById('log').appendChild(li);
}
*/

var clog=console.log;

document.getElementById('load').addEventListener('click', function(event) {
  console.log('click');
  socket.send('givemethehardcode');

});



