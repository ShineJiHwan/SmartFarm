<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SmartFarm</title>
<jsp:include page="../inc/header_link.jsp"></jsp:include>
</head>
<body>
	<div class="list-item-box" id="app">
		<template v-for="i in count">
			<item :key="i" :no="i"/>
		</template>
	</div>
</body>
<script type="text/javascript">
let app;
const item ={
	template:`
		<div class="list-item" @click="clickEvent(no)">
			<div class="list-item-head">
				<figure>
					<img src="/resources/img/temp.jpg">
				</figure>
			</div>
			<div class="list-item-body bold-text">
				<div class="list-item-name">
					<span>농지{{no}}번</span>
				</div>
			</div>
		</div>
	`,props:["no"]
	,data(){
		return {
			
		}
	}
	  ,methods:{
		  clickEvent:function(no){
			  alert(no+"번 농지 클릭");
			  location.href="/farm/monitoring";
		  }
	},created:function(){
		
	},updated:function(){
		
	}
}

function init(){
	app = new Vue({
		el:"#app",
		data:{
			count:2
		},components:{
			item
		}
	});
}
$(function(){
	init();
});
</script>
</html>