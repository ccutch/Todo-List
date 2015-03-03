var connect = require('connect');
var serveStatic = require('serve-static');
var open = require('open'); 

connect().use(serveStatic(__dirname)).listen(1234);
console.log('Listening on port 1234');

open('http://127.0.0.1:1234');