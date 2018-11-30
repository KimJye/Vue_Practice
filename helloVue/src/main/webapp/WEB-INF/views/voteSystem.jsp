<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>투표시스템(메서드,디렉티브,컴포넌트)</title>
</head>
<body>
	<div id="app">
		<div class="container">
			<h1>stories</h1>
			<ul class="list-group">
			<story v-for="story in mydatas" :story="story" :favorite="favorite"> </story>
			</ul>
			<pre>{{$data}}</pre>
		</div>
	</div>
	<template id="story-template">
		<li class="list-group-item">
			{{story.writer}} said "{{story.body}}".
			Story upvotes {{story.upvotes}}.
			<button v-show="!story.voted" @click="upvote" class="btn btn-default">Upvote</button>
			<button v-show="!isFavorite" @click="setFavorite" class="btn btn-primary">Favorite</button>
			<span v-show="isFavorite" class="glyphicon glyphicon-star pull-right" aria-hidden="true"></span>
		</li>
	</template>
	
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script type="text/javascript">
	Vue.component('story',{
		props:['story','favorite'],
		template : "#story-template",
		methods:{
			upvote:function(){
				this.story.upvotes+=1;
				this.story.voted=true;
			},
			setFavorite:function(){
				this.favorite = this.story;
			},
		},
		computed:{
			isFavorite:function(){
				return this.story == this.favorite;
			},
		}
	});
	new Vue({
		el : '#app',
		data:{
			mydatas:[
				{
					body: "나는 오늘 빵 먹었어",
					writer:"Alex",
					upvotes:28,
					voted:false,
				},
				{
					body: "나는 광어 좋아해",
					writer:"Alex",
					upvotes:8,
					voted:false,
				},
				{
					body:"나는 어제 회 먹었어",
					writer:"John",
					upvotes:51,
					voted:false,
				},
				{
					body:"나는 연어 좋아해",
					writer:"John",
					upvotes:74,
					voted:false,
				},
			],
			favorite:{}
		
		}
	})
</script>
</html>