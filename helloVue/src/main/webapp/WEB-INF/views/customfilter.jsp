<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>costom filter</title>
</head>
<body>
	 
	<div class="container">
		<h1>커스텀필터</h1>
		<ul class="list-group">
			<li v-for="hero in heroes" class="list-group-item">
				{{hero | snitch}}
			</li>
		</ul>
		<pre>{{$data}}</pre>
	</div>
	
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	Vue.filter('snitch',function(hero){
		return hero.secretId + 'is' + hero.firstname + ' ' + hero.lastname + 'in real life!'
	})
	
	new Vue({
		el : '.container',
		data:{
			heroes:[
				{firstname : 'Bruce', lastname : 'Wayne', secretId:'Batman'},
				{firstname : 'Clack', lastname : 'Kent', secretId:'Superman'},
				{firstname : 'Jay', lastname : 'Garric', secretId:'Flash'},
				{firstname : 'Peter', lastname : 'Parker', secretId:'Spider-Man'},
			]
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