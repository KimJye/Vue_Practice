<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3장 과제</title>
</head>
<body>
<div class="container">
	<div v-if="gender === 'male' || gender === 'female'">
		<h1>Hello,
			<span v-show="gender === 'male'">Mister {{name}}.</span>
			<span v-if="gender === 'female'">Miss {{name}}.</span>
		</h1>
	</div>
	<h1 v-else>So you can't decide. Fine!</h1>
	<label for="gender">Enter your gender:</label>
	<input v-model="gender" class="form-control" id="gender">
	<label for="name"> Enter your name:</label>
	<input v-model="name" class="form-control" id="name"> 
	<pre>{{$data}}</pre>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el : '.container',
		data:{
			gender: 'female',
			name:'김지혜'
		},
	})
</script>
</html>