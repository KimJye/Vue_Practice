<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>행성</title>
</head>
<body>
	<div id="app">
		<div class="container">
			<h1>행성</h1>
			<ul class="list-group">
			<planet v-for="planet in planets" :planet="planet"> </planet>
			</ul>
			<pre>{{$data}}</pre>
		</div>
	</div>
	<template id="planet-template">
		<li class="list-group-item">
			Planet : {{planet.name}} Visited {{planet.number}} time(s).
			<button v-show="canBeVisited" @click="visit" class="btn btn-default">visit</button>
			<span v-show="planet.number>=3" class="fa fa-rocket fa-2x pull-right" aria-hidden="true"></span>
		</li>
	</template>
	
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script type="text/javascript">
	Vue.component('planet',{
		props:['planet'],
		template : "#planet-template",
		methods:{
			visit:function(){
				this.planet.number++;
			},
		},
		computed: {
			    canBeVisited: function () {
			      return this.planet.number < 3;
			    }
			  }
	
	});
	new Vue({
		el : '#app',
		data:{
			planets:[
				{
					name:"Mercury",
					number:0
				},
				{
					name:"earth",
					number:0
				},
				{
					name:"sun",
					number:0
				},
				{
					name:"moon",
					number:0
				}
			]
		}
	})
</script>
</html>