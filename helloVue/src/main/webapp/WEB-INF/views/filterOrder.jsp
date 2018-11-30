<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>filterorder</title>
</head>
<body>
	 
	<div class="container">
		<h1>정렬</h1>
		<ul class="list-group">
			<li v-for="story in orderedDatas" class="list-group-item">
				{{story.writer}} said "{{story.plot}}" and upvoted {{story.upvotes}} times.
			</li>
		</ul>
		<button @click="order = order * -1">Reverse Order</button>
		<pre>{{$data}}</pre>
	</div>
	
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el : '.container',
		data:{
			mydatas:[
				{
					plot: "나는 오늘 빵 먹었어",
					writer:"Alex",
					upvotes:28
				},
				{
					plot: "나는 광어 좋아해",
					writer:"Alex",
					upvotes:8
				},
				{
					plot:"나는 어제 회 먹었어",
					writer:"John",
					upvotes:51
				},
				{
					plot:"나는 연어 좋아해",
					writer:"John",
					upvotes:74
				},
				
			],
			order :-1
		},
		
		computed: {
			orderedDatas : function(){
				var order = this.order;
				return this.mydatas.sort(function(a,b){
					return (a.upvotes - b.upvotes) * order;
				})
			}
		}
		
	})
</script>
</html>