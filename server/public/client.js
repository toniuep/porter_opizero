// client.js


    var socket = io();
    
    function openDoor(){
               socket.emit('openDoor','open_door');
             }
             
  
    socket.on('connect', function(data) {
        socket.emit('join', 'Client is connected!');
    });

