var socket
$(function(){
	$("#loginBtn").click(function(){
		login()
	})
	$("#logoutBtn").click(function(){
		logout()
	})
	$("#sendMsgBtn").click(function(){
		sendMessage()
	})
	$("#message").bind("keypress",function(e){
		if(e.keyCode == 13){
			sendMessage()
		}
	})
})

function sendMessage(){
	socket.emit("new_message","{'sender':'"+$("clientNameSpan").text()+"', 'msg':'"+$("#message").val()+"'}")
	$("#message").val("")
}

function login(){
	var username = $.trim($("#clientNameText").val())
	if(username ===""){
		$("#error").removeClass("hidden-div")
		return
	}

	$("#clientNamSpan").text($.trim($("#clientNameTest").val()))
	$("login").addClass("hidden-div")
	$("chat").removeClass("hidden-div")

	initSocket()
}

function logout(){
	socket.disconnet()

	$("#login").removeClass("hidden-div")
	$("#chat").addClass("hidden-div")
	$("#error").addClass("hidden-div")
	$("#clientNameText").val("")
	$("#inbox").children().remove()
}

function initSocket(){
	socket = io("http://" + location.host)
	socket.emit("add_client",$("#clientNameSpan").text())
	socket.on("new_message",function(data){
		console.log(data)
		data = eval("("+data+")")
		if (data.sender ==$("#clientNameSpan").text()){
			$("inbox").append("")
		}
	})
}