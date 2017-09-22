var static = require('node-static'),
  port = 3000,
  http = require('http');

var file = new static.Server('./index.html', {
  cache: 3600,
  gzip: true
});

http.createServer(function(request, response) {
  request.addListener('end', function() {
    file.serve(request, response);
  }).resume();
}).listen(port);