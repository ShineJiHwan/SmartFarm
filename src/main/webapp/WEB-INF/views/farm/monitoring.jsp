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
	<jsp:include page="../inc/nav.jsp"></jsp:include>
	<div id="app">
		<div class="container mt-3">
			<div class="bold-text context-header">
				<label>농지1번 - Monitoring</label>
			</div>
			<div class="context-body">
				<template v-for="i in 5">
					<monitoring_item :key="i" :idx="i" />
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
			<span class="se-name">Senser{{idx}}</span>
			<span class="se-value">20</span>
		</div>
	`,props:["idx"]
	,data(){
		return {
			
		}
	}
}
function init(){
	app = new Vue({
		el:"#app",
		data:{
			
		},components:{
			monitoring_item
		}
	});
}
$(function(){
	init();
});
</script>
</html>