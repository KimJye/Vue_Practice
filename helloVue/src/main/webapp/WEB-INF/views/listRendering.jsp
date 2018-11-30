<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>리스트 랜더링.</title>
</head>
<body>
	<div class="container">
		<h1>v-for 이용해 각 프로퍼티 순회하고 index:key=value 형식으로 표시.</h1>
		<div>
			<ul class="list-group">
				<li v-for="(value,key,index) in mydata" class="list-group-item">
					{{index}} : {{key}} = {{value}}
				</li>
			</ul>
		</div>
	</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el : '.container',
		data:{
			mydata:{
				name: "KimJye",
				height:"169cm",
				weigh:"50kg",
				eyeColor:"dark brown",
				favoriteFood:"sushi"
			}
		}
	})
</script>
</html>