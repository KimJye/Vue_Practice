<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>필터(배열항목, 계산된 프로퍼티)</title>
</head>
<body>
	
	<div class="container">
		<h1>필터</h1>
		<div>
			<h3>Alex's stories</h3>
			<ul class="list-group">
				<li v-for="story in mydataBy('Alex')" class="list-group-item">
					{{story.writer}} said "{{story.plot}}"
				</li>
			</ul>
			
			<h3>John's stories</h3>
			<ul class="list-group">
				<li v-for="story in mydataBy('John')" class="list-group-item">
					{{story.writer}} said "{{story.plot}}"
				</li>
			</ul>
		</div>
		<pre>
			{{$data}}
		</pre>
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
				
			]
		},
		/*
		computed:{
			famous:function(){
				return this.mydatas.filter(function(item){
					return item.upvotes>25;
				});
			}
		}
		*/
		
		methods:
			{
			//작가에 따라 이야기를 필터링하는 메서드
			mydataBy : function(writer){
				return this.mydatas.filter(function(story){
					return story.writer === writer
				})
				},
			}
		
	})
</script>
</html>