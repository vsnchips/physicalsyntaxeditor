//Start the socket server


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

