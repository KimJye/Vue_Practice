<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>계산기(메서드, 계산된 프로퍼티)</title>
</head>
<body>
	<div class="container">
		<h1>Type 2 numbers and choose operation</h1>
		
		<form class="form-inline">
			<!-- 입력을 숫자로 파싱하기 위해 특별한 한정자인 'number'를 사용 -->
			<input v-model.number="a" class="form-control">
		
			<select v-model="operator" class="form-contrl">
				<option>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
	
			<input v-model.number="b" class="form-control">
			<!-- <button type="submit" @click="calculate" class="btn btn-primary">계산</button>  -->
		</form>	
		
		<h2>결과: {{a}} {{operator}} {{b}} = {{c}}</h2>
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
			a:1,
			b:2,
			operator:"+",
		},
		computed:{
			c:function(){
				switch(this.operator){
				case "+":
					return this.a+this.b
				case "-":
					return this.a-this.b;
					//this.c=this.a-this.b
					//break;
				case "*":
					return this.a*this.b;
				case "/":
					return this.a/this.b;
				}
			}
		},
		/*
		methods:{
			calculate:function(event){
				event.preventDefault();//백그라운드에서 폼을 제출하여 페이지가 다시 로드된다. 따라서 백그랑룬드에서 폼을 제출하는 것을 막으려면 onsubmit 이벤트의 기본 동작을 취소해야 한다.
									    //하지만 button type="submit" 이 아니라 button type="button"으로 해도 된다.
				switch(this.operator){
				case "+":
					this.c=this.a+this.b
					break;
				case "-":
					this.c=this.a-this.b
					break;
				case "*":
					this.c=this.a * this.b
					break;
				case "/":
					this.c = this.a / this.b
					break;
				}
			}
		},
		*/	
	});
</script>
</html>