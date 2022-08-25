const http = require('http');

const server = http.createServer(function (req, res) {

    var url = req.url;
    if (url === '/version') {
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({
            data: 'node 16'
        }));
    } else {
        res.writeHead(404, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({
            error: 'Not found'
        }));
    }
})

server.listen(8080, function () {
    console.log("Server running on 8080");
}); 