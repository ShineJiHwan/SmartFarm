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
				<label>농지1번 - Controlling</label>
			</div>
			<div class="context-body">
				<template v-for="control in controlList">
					<controlling_item :key="control.con_Sequence" :control="control" />
				</template>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
let app;
const controlling_item ={
	template:`
		<div class="bold-text controlling-item">
			<span class="se-name">{{control.con_Name}}</span>
			<span class="se-value" @click="open(control)">Open</span>
			<span class="se-value" @click="close(control)">Close</span>
		</div>
	`,props:["control"]
	,data(){
		return {
			
		}
	},methods:{
		open:function(control){
			alert(control.con_Name+" Open 하기");
		},
		close:function(control){
			alert(control.con_Name+" close 하기");
		}
	}
}
function init(){
	app = new Vue({
		el:"#app",
		data:{
			controlList : []
		},components:{
			controlling_item
		}
	});
	
	$.ajax({
		url:"/rest/controls",
		type:"get",
		success:function(result){
			console.log("result : ",result);
			app.controlList = result;
		}
	});
}
$(function(){
	init();
});
</script>
</html>