//Proof of Concept Editor Server

//Open the hardcode
process.argv.forEach(function (arg){
  console.log(arg);
});

console.log (`Argv Length:` + process.argv.length);
if (process.argv.length > 3){

  var fs=require("fs");
  var hardcode;
  fs.readFile(process.argv[2],'utf8',function(error,contents){
    hardcode=JSON.stringify({kind:'hardcode','content':(contents), fl: 0.00005});
  });


  //Start ohe editor webserver

  var editserver = require("live-server");

  var params = {
    port: 8181,
    host: "0.0.0.0",
    root: "./editor/", // Set root directory that's being served. Defaults to cwd.
    open: true, // When false, it won't load your browser by default.
    //	ignore: 'scss,my/templates', // comma-separated string for paths to ignore
    file: "index.html", // When set, serve this file (server root relative) for every 404 (useful for single-page applications)
    //	wait: 1000, // Waits for all changes, before reloading. Defaults to 0 sec.
    mount: [['/components', './node_modules']], // Mount a directory to a route.
    logLevel: 2, // 0 = errors only, 1 = some, 2 = lots
    middleware: [function(req, res, next) { next(); }] // Takes an array of Connect-compatible middleware that are injected into the server middleware stack
  };
  editserver.start(params);


  //Start the soft target liveserver
  /*
var softtargetserver = require("live-server");
var tparams = {
  port: 8080,
  host: "0.0.0.0",
  root: "./temptarget/", // Set root directory that's being served. Defaults to cwd.
  open: true, // When false, it won't load your browser by default.
  //	ignore: 'scss,my/templates', // comma-separated string for paths to ignore
  file: "index.html", // When set, serve this file (server root relative) for every 404 (useful for single-page applications)
  //	wait: 1000, // Waits for all changes, before reloading. Defaults to 0 sec.
  //	mount: [['/components', './node_modules']], // Mount a directory to a route.
  logLevel: 2, // 0 = errors only, 1 = some, 2 = lots
  middleware: [function(req, res, next) { next(); }] // Takes an array of Connect-compatible middleware that are injected into the server middleware stack
};
softtargetserver.start(params);
*/

  //WebSockets
  var WSS= require('ws').Server;
  var wss = new WSS({ port: 8081 });

  wss.on('connection', function(socket) {
    console.log('Opened Connection 🎉');

    var json = JSON.stringify({ message: 'Gotcha' });
    socket.send(json);
    console.log('Sent: ' + json);

    socket.on('message', function(message) {
      console.log('Received: ' + message);

      /*      wss.clients.forEach(function each(client) {
        var json = JSON.stringify({ message: 'Something changed' });
        client.send(json);
        console.log('Sent: ' + json);
      });
      */

      if(message == 'givemethehardcode'){
        socket.send(hardcode);
      }
      try{
        //     if(IsValidJSONString(message)){
        var ast = JSON.parse(message);
        if(ast.code)
        {
          console.log(`GOT CODE:`+ast.code);
          fs.writeFileSync(process.argv[3],ast.code);
        }

      }catch(e){
        console.log(e);
      }
      socket.on('close', function() {
        console.log('Closed Connection 😱');
      });

    });
  });


  //endif
}
else{
  console.log("need filenames args! use:\n node editor.js <coolfile> <hotfile>");
}
