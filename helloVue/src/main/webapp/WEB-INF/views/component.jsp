<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>컴포넌트</title>
</head>
<body>
	
	<div class="container">
		<h1>컴포넌트</h1>
		<div>
			<h3>Alex's stories</h3>
			<ul class="list-group">
				<story v-for="story in mydataBy('Alex')" :story="story"> </story>
			</ul>
			
			<h3>John's stories</h3>
			<ul class="list-group">
				<story v-for="story in mydataBy('John')" :story="story"> </story>
			</ul>
			
			<div class="form-group">
				<label for="query">
					What are you looking for?
				</label>
				<input v-model="query" class="form-control">
			</div>
			
			<h3>Search results:</h3>
			<ul class="list-group">
				<story v-for="story in search" :story="story"></story> 
			</ul>
		</div>
	</div>
	<template id="story-template">
		<li class="list-group-item">
			{{story.writer}} said "{{story.body}}"
		</li>
	</template>
	
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script type="text/javascript">
	Vue.component('story',{
		props:['story'],
		template : '#story-template'
	});
	new Vue({
		el : '.container',
		data:{
			mydatas:[
				{
					body: "나는 오늘 빵 먹었어",
					writer:"Alex",
					upvotes:28
				},
				{
					body: "나는 광어 좋아해",
					writer:"Alex",
					upvotes:8
				},
				{
					body:"나는 어제 회 먹었어",
					writer:"John",
					upvotes:51
				},
				{
					body:"나는 연어 좋아해",
					writer:"John",
					upvotes:74
				},
			],
			query:' '
		},
		
		computed:{
			search : function(){
				var query = this.query
				return this.mydatas.filter(function(story){
					return story.body.includes(query)
				})
			}
		},
		
		
		methods:
			{
			//작가에 따라 이야기를 필터링하는 메서드
			mydataBy : function(writer){
				return this.mydatas.filter(function(story){
					return story.writer === writer
				})
				}
			}
		
	})
</script>
</html>