<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>hw6 연습문제</title>
</head>
<body>
	
	<div class="container">
		<div>
			<h1>People of Gaul</h1>
			<ul class="list-group">
				<li v-for="story in orderAge" class="list-group-item">
					{{story.name}} {{story.age}}
				</li>
			</ul>
			
			<h1>"Old" People of Gaul</h1>
			<ul class="list-group">
				<li v-for="story in old" class="list-group-item">
					{{story.name}} {{story.age}}
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
					name:"지혜",
					age:23
				},
				{
					name:"루비",
					age:24
				},
				{
					name:"하얀",
					age:50
				},
				{
					name:"공주",
					age:40
				},
				{
					name:"왕자",
					age:68
				},
				
			]
		},
		
		computed:{
			orderAge:function(){
				return this.mydatas.sort(function(a,b){
					return a.age - b.age;
				});
			},
			old:function(){
				return this.mydatas.filter(function(item){
					return item.age>65;
				})
			}
		}
		
		/* 요렇게 정렬도 가능
		 methods: {
          orderedPeople: function () {
            return _.orderBy(this.people, 'age')
        }
		*/
	
		
	})
</script>
</html>