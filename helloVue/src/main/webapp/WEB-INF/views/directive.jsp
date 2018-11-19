<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue</title>
</head>
<body>
 <div id="v-show">
 	<h1 v-if="!message">You must send a message for help!</h1>
 	<h2 v-lese>Yout have sent a message!</h2>
 	<textarea v-model="message"></textarea>
 	<button v-show="message">
 		Send word to allies for help!
 	</button>
 	<pre>
 		{{$data}}
 	</pre>
 </div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el :'#v-show',
		data : {
			message : 'Our king is dead! Send help!'
		}
	})	
</script>
</html>