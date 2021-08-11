<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
var websocket = new WebSocket("ws://192.168.0.13:8080/wsocket");
websocket.onopen = function(message){}
websocket.onclose = function(message){}
websocket.onerror = function(message){}
websocket.onmessage = function(message){
	document.getElementById("message").innerHTML += message.data+"<br>";
}

function sendmessage(){
	websocket.send("${sessionScope.id}:"+document.getElementById("smsg").value);
}
function keysend(event){
	//alert(event.keyCode);
	if(event.keyCode==13){
		sendmessage();
		document.getElementById("smsg").value="";
	}
	/*
	consol.log(command);
	if(command=="clear"){
		document.getElementById("message").value="";
	}*/
}

</script>
<section>

<input type="text" name="smsg" id="smsg" onkeyup="keysend(event)">
<input type="button" value ="전송" onclick="sendmessage()">
<div id="message">
</div>
</section>