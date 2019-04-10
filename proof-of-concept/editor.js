//Proof of Concept Editor Server

clog=console.log;
pargs = process.argv;
console.log (`Argv Length:` + process.argv.length);

pargs.forEach(function(arg){console.log(arg);});

if (pargs.length > 3){

  var fs=require("fs");
  var hardcode;
  fs.readFile(pargs[2]+pargs[3],'utf8',function(error,contents){
    hardcode=JSON.stringify({kind:'hardcode','content':(contents), fl: 0.00005});
  });
  
  //Start the editor webserver

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


  //HotCode Server
  var hothome = pargs.length> 4 ? pargs[4]:"index.html";

  //Copy the project to the hotdir
  var fsx=require("fs-extra");
  fsx.copy(pargs[2],"./hotfolder", err => {
    if (err) return console.error(err);
    console.log('Copied The Target into the hotfolder!');

    //Copy hotcode.js and edit html
    fsx.copy("editor/hotcode-client.js","./hotfolder/hotcode-client.js", err => {
      if (err) return console.error(err);
      else{
        console.log('Copied hotcode-client.js into the hotfolder!');

        fs.readFile("hotfolder/"+pargs[3],'utf8',function(error,contents){
          if(error) console.error(error);
          else{
          }
          var pf=require('prepend-file');
          pf("hotfolder/"+hothome,"<script src='hotcode-client.js'></script>\n"),function(error){
            if(error) console.error(error);
          }
        }
        );
      }  
    });
  });

  /*
  //Start the soft target liveserver
  var softtargetserver = require("live-server");
  var tparams = {
    port: 8080,
    host: "0.0.0.0",
    root: "./hotfolder/",
    open: true,
    file: hothome,
    logLevel: 2,
    middleware: [function(req, res, next) { next(); }] // Takes an array of Connect-compatible middleware that are injected into the server middleware stack
  };
  softtargetserver.start(tparams);
*/

  //WebSockets
  var WSS= require('ws').Server;
  var wss = new WSS({ port: 8081 });

  var hotclient = {
    send: function(){}
  }; //which ones the target?

  wss.on('connection', function(socket) {
    console.log('Opened Connection 🎉');

    //Gotcha
    var json = JSON.stringify({ message: 'Gotcha' });
    socket.send(json);
    console.log('Sent: ' + json);

    socket.on('message', function(message) {

      if(message == 'givemethehardcode'){
        socket.send(hardcode);
      }

      //JSON cases 
      else{
        try{
          var jsnmsg = JSON.parse(message);

          if(jsnmsg.message=="hello_hot"){
            clog("HOTCODE SOCKET PINGED-SUBSCRIBING!");
            clog(jsnmsg);
            hotclient=socket;
          }

          else if (jsnmsg.kind=="hot_updates"){
            clog("FORWARDING HOT UPDATES");
            try{hotclient.send(message);}
            catch(e){console.error(e);}
          }

          else if(jsnmsg.kind=="AST")
          {
            console.log(`GOT CODE:`+jsnmsg.tree.code);
            fs.writeFileSync("./hotfolder/"+process.argv[3],jsnmsg.tree.code);
          }

          else if(jsnmsg.kind=="ASTcool")
          {
            console.log(`GOT CODE:`+jsnmsg.tree.code);
            fs.writeFileSync(process.argv[2]+process.argv[3],jsnmsg.tree.code);
          }
          
          else{
           clog("UNKNOWN JSON MSG");
          }

        }catch(e){
          console.log(e);
          clog("UKNOWN SOCKET MESSAGE");
        }
      }
    });//end messaage cases

    socket.on('close', function() {
      console.log('Closed Connection 😱');
    });

  });

  //endif
}
else{
  console.log("need filenames args! use:\n node editor.js <coolproj's directory> <coolproj's target file> <coolproj's index.html>");

}
