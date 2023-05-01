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
	<jsp:include page="../inc/farm-header.jsp" />
	<jsp:include page="../inc/nav.jsp" />
	<div id="app">
		<div class="container mt-3">
			<div class="bold-text context-header">
				<label>농지1번 - Monitoring</label>
			</div>
			<div class="context-body">
				<template v-for="senser in senserList">
					<monitoring_item :key="senser.se_Sequence" :senser="senser" />
				</template>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
let app;
const monitoring_item ={
	template:`
		<div class="bold-text monitoring-item">
			<span class="se-name">{{senser.se_Name}}</span>
			<span class="se-value">{{senser.se_Value}}</span>
		</div>
	`,props:["senser"]
	,data(){
		return {
			
		}
	}
}
function getSenser(){
	$.ajax({
		url:"/rest/sensers",
		type:"get",
		success:function(result){
			console.log("result : ",result);
			app.senserList = result;
			setTimeout(() => {
				//getSenser();
			}, 2000);
		}
	});
}
function init(){
	app = new Vue({
		el:"#app",
		data:{
			senserList : []
		},components:{
			monitoring_item
		}
	});
	getSenser();
}
$(function(){
	init();
});
</script>
</html>