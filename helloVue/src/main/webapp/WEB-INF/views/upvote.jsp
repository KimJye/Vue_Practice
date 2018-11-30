<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>클릭할 때마다 투표 수를 올린다.</title>
</head>
<body>
	<div class="container">
		<button v-on:click="upvote"> 
			투표! {{upvotes}}
		</button>
		<!-- v-on: 대신에 @ 기호 대체해도 된다. -->
	</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script>
	new Vue({
		el : '.container',
		data:{
			upvotes:0
		},
		
		//methods 객체 아래에 메서드 정의
		methods:{
			upvote:function(){
				//메서드 내의 this는 Vue인스턴스를 가리킨다.
				this.upvotes++;
			}
		}
	})
</script>
</html>