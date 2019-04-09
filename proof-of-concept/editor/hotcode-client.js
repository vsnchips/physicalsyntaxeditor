//WebSocket Definition
var hotsocket= new WebSocket('ws://localhost:8081/');
hotsocket.onopen=function(event){

  //Init
  console.log('Opened connection 🎉');
  var json = JSON.stringify({ message: 'hello_hot' });
  console.log('Sent: ' + json);
  hotsocket.send(json);
}

hotsocket.onerror = function(event) {
  console.log('Error: ' + (event));
}

hotsocket.onmessage = function (event) {
  json = JSON.parse(event.data);
  if (json.kind == 'hot_updates'){
      lits=json.lits;
  }
  console.log('Recieved:' + json);
}

hotsocket.onclose = function(event) {
  console.log('Closed connection 😱');
}
//End Socket Definition


//HotLit updating
var lits = Array();

function getHotLit(n){
  return lits[n];
}

function updateHotLits(){

}
