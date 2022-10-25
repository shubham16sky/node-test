import dotenv from "dotenv";
dotenv.config({
    encoding: "utf8",
    path: path.resolve(process.cwd(), ".env"),
});



var http = require('http');
// var port = process.env.node_port;

http.createServer(function (request , response){
    response.writeHead(200,{'Content-Type':'text/plain'});

    response.end('Hello world\n');
}).listen(process.env.nodePort)

console.log('Server Running at port '+process.env.nodePort);




