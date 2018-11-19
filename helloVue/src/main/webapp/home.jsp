<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Vue</title>
</head>
<script src="https://cdnjs.cloudflare.com/aajax/libs/vue/2.3.4/vue.min.js"></script>
<script>
	new Vue({
		el : '#app'
		data:{
			message:'Greetings your Majesty!'
		}
	});
</script>
<body>
	<div id="app">
		<h1>{{message}}</h1>
	</div>
</body>

</html>