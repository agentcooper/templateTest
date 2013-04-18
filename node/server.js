var net  = require('net'),
    fs   = require('fs'),
    path = require('path');

var hogan = require('hogan.js');

// load templates

var main = hogan.compile(
  fs.readFileSync(
    path.resolve(__dirname, '../tmpl/mustache/main.tmpl')
  ).toString()
);

var person = hogan.compile(
  fs.readFileSync(
    path.resolve(__dirname,'../tmpl/mustache/person.tmpl')
  ).toString()
);

// start tcp server

var server = net.createServer(function(c) {
  console.log('server connected');

  c.on('end', function() {
    console.log('server disconnected');
  });

  c.on('data', function(data) {
    var json = JSON.parse(data.toString());

    console.time('templating');
      var out = main.render(json, {person: person});
    console.timeEnd('templating');

    c.write(out);
    c.end();
  });

});

server.listen(8124, function() {
  console.log('Server bound to port 8124');
});

// handle ctrl+c

process.on('SIGINT', function () {
  console.log("Closing");
  server.close();
});
