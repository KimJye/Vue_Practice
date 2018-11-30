<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>시장 투표</title>
</head>
<body>
	<div class="container">
		<h1>People of Vue</h1>

		<ul class="list-group">
			<li v-for="candidate in candidates" class="list-group-item">
				{{candidate.name}} {{candidate.votes}}
				<button class="btn btn-default" v-on:click="candidate.votes++">Vote</button>
			</li>
		</ul>
		
		<input @keyup.delete="clear" class="form-control" placeholder="press 'delete' to reset">
		
		<h1>Our mayor is {{mayor.name}}!</h1>
		<pre>
			{{$data}}
		</pre>
		<pre>
			{{mayor}}
		</pre>
	</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el : '.container',
		data : {
			candidates : [ {
				name : "KimJye",
				votes : 0
			}, {
				name : "YeJill",
				votes : 0
			}, {
				name : "HeJill",
				votes : 0
			}, {
				name : "HeYeon",
				votes : 0
			}, 
			],
		},
			computed : {
				mayor : function() {
					var sorted = this.candidates.sort(function(a,b){
						return b.votes-a.votes;
					});//투표 많은 순서대로 정렬
					return sorted[0];//가장 많이 투표받은 사람.
				}
			},
			
			methods: {
				clear:function(){
					this.candidates = this.candidates.map(function(candidate){
						candidate.votes=0;
						return candidate;
					})
				}
			}
	})
</script>
</html>