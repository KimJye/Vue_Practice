<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 <link href="common.css" rel="stylesheet">
  <script src="common.js"></script> 

<title>Hello Vue</title>
</head>
<body>
<h3>${message}</h3>
<div id="app">
		<h1>Hello,{{message}}</h1>
		<b>Enter your name:</b></br>
		<input v-model="message" style="width:500px;">
	</div>
<h3><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${now }"/></h3>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el : '#app',
		data:{
			message:'김지혜'
		}
	});
</script>
</html>