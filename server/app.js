var express = require('express');
var app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const { spawn } = require('child_process');

const child = spawn('mjpg_streamer',['-i','input_opencv.so -r 320x240 -q 60 --filter /home/easy/mjpg-streamer/mjpg-streamer-experimental/plugins/input_opencv/filters/cvfilter_cpp/cvfilter_cpp.so',
  '-o', 'output_http.so -p 8888']);
  //mjpg_streamer -i 'input_opencv.so -r 320x240 -q 60 -f 1 --filter /home/easy/mjpg-streamer/mjpg-streamer-experimental/plugins/input_opencv/filters/cvfilter_cpp/cvfilter_cpp.so' -o 'output_http.so -p 8888'
process.stdin.pipe(child.stdin)
var trig = false;

child.stdout.on('data', (data) => {
  //console.log(`child stdout:\n${data}`);
  var n = data.toString().replace(/[\n\r]/g, "");
  if(n == "error"){
    console.log("camera desconectada.....")


  }
  if(n ==  "open" && trig === false){
    console.log("QR decoded MATCH!!");
    trig = true;
    openDoor();
    setTimeout(function(){
        trig = false;
   },5000); //delay is in milliseconds
  }

});
const Gpio = require('orange-pi-gpio');

var HTTP_PORT = 3000;

app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res, next) {
  res.sendFile(__dirname + '/index.html')
});

// Listen to the web socket connection
io.on('connection', function(client) {
    client.on('join', function(handshake) {
      console.log(handshake);
    });

    client.on('openDoor', function(data) {
      //codi relé
      openDoor();

      console.log("boto pushed")
    });

  });



let gpio5 = new Gpio({pin:5, mode: 'out'});

function openDoor(_value){

  setTimeout(function(){
        console.log("open");
        gpio5.write(1);
      setTimeout(function(){
         gpio5.write(0);
         console.log("close");
      }, 200);
 }, 50);
}

const port = process.env.PORT || 3000;

server.listen(port);
console.log(`Server listening on http://localhost:${port}`);
