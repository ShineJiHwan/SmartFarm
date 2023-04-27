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
				<label>농지1번 - Setting</label>
			</div>
			<div class="context-body">
				<template v-for="i in 5">
					<setting_item :key="i" />
				</template>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
let app;
const setting_item ={
	template:`
		<div class="bold-text setting-item">
			<div class="flex">
				<select class="custom-select se-setting-select">
					<option value="0">선택</option>
					<option value="1">Senser1</option>
					<option value="2">Senser2</option>
				</select>
				<input type="number" class="form-control se-setting-value">
				<select class="custom-select se-setting-select">
					<option value="0">선택</option>
					<option value="1">이상</option>
					<option value="2">이하</option>
				</select>
				<select class="custom-select se-setting-select">
					<option value="0">선택</option>
					<option value="1">Control1</option>
					<option value="2">Control2</option>
				</select>
				<select class="custom-select se-setting-select">
					<option value="0">선택</option>
					<option value="open">Open</option>
					<option value="close">Close</option>
				</select>
			</div>
		</div>
	`,props:[]
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
			setting_item
		}
	});
}
$(function(){
	init();
});
</script>
</html>