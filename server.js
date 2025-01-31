const express = require('express');
const app = express();
const http = require('http').createServer(app);
const os = require('os');  // To get the instance hostname

const PORT = 3000;

http.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});

app.use(express.static(__dirname + '/public'));

app.get('/', (req, res) => {
    // Log the hostname of the instance handling the request
    const instanceId = os.hostname();  // Get the hostname (unique to the instance)
    console.log(`Request handled by: ${instanceId}`);  // Log to console

    res.sendFile(__dirname + '/index.html');  // Serve the HTML file
});

// Socket.IO setup
const io = require('socket.io')(http);

io.on('connection', (socket) => {
    console.log('Connected...');
    socket.on('message', (msg) => {
        socket.broadcast.emit('message', msg);
    });
});
