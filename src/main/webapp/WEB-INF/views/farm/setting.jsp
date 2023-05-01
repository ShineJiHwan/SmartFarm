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
				<label>농지1번 - Setting</label>
				<button type="button" class="btn btn-success float-right setting-save" @click="save()">저장하기</button>
			</div>
			<div class="context-body">
				<template v-for="setting in settingList">
					<setting_item :key="setting.set_Sequence" :setting="setting" :targets="targetList"/>
				</template>
			</div>
			<button type="button" class="btn btn-success float-right mt-3 setting-save" @click="save()">저장하기</button>
		</div>
	</div>
</body>

<script type="text/javascript">
let app;
const setting_item ={
	template:`
		<div class="bold-text setting-item">
			<div class="flex">
				<select class="custom-select se-setting-select" @change="setSetting($event,'senser')">
					<option value="">선택</option>
					<template v-for="senser in targets.senserList">
						<option v-if="senser.se_Sequence == setting.set_SE_Sequence" :value="senser.se_Sequence" selected>{{senser.se_Name}}</option>
						<option v-else :value="senser.se_Sequence">{{senser.se_Name}}</option>
					</template>
				</select>
				<input type="number" class="form-control se-setting-value" :value="setting.set_SE_Value" @input="setSetting($event,'senValue')">
				<select class="custom-select se-setting-select" @change="setSetting($event,'range')">
						<option value="">선택</option>
						<template v-for="range in targets.rangeList" >
							<option v-if="range == setting.set_SE_Range" :value="range" selected>{{range}}</option>
							<option v-else :value="range">{{range}}</option>
						</template>
				</select>
				<select class="custom-select se-setting-select" @change="setSetting($event,'control')">
					<option value="">선택</option>
					<template v-for="control in targets.controlList">
						<option v-if="control.con_Sequence == setting.set_CON_Sequence" :value="control.con_Sequence" selected>{{control.con_Name}}</option>
						<option v-else :value="control.con_Sequence">{{control.con_Name}}</option>
					</template>
				</select>
				<select class="custom-select se-setting-select" @change="setSetting($event,'conValue')">
					<option value="">선택</option>
					<template v-for="conValue in targets.conValueList">
						<option v-if="conValue == setting.set_CON_Value" :value="conValue" selected>{{conValue}}</option>
						<option v-else :value="conValue">{{conValue}}</option>
					</template>
				</select>
			</div>
		</div>
	`,props:["setting","targets"]
	,data(){
		return {
			
		}
	},methods:{
		setSetting:function(event,target){
			switch (target) {
				case 'senser':	this.setting.set_SE_Sequence = event.srcElement.value; break;
				case 'range':	this.setting.set_SE_Range = event.srcElement.value; break;
				case 'control': this.setting.set_CON_Sequence = event.srcElement.value; break;
				case 'conValue':	this.setting.set_CON_Value = event.srcElement.value; break;
				case 'senValue': this.setting.set_SE_Value=event.target.value;break;
			}
		}
	}
}
let state = {
	list:{
		senserList:[],
		controlList:[],
		rangeList:['>=','>','<=','<'],
		conValueList:['가동','중지'],
	},
}
function init(){
	app = new Vue({
		el:"#app",
		data:{
			settingList : [],
			targetList : state.list
		},components:{
			setting_item
		},methods:{
			save:function(){
				$.ajax({
					url:"/rest/settings",
					type:"POST",
					contentType: "application/json; charset=utf-8",
					data:JSON.stringify(app.settingList),
					seccess:function(result){
						alert("저장완료");
					},error:function(xhr,status,error){
						console.log(xhr);
					}
				});
			}
		}
	});
	$.ajax({
		url:"/rest/settings",
		type:"get",
		success:function(result){
			console.log("result : ",result);
			app.settingList = result;
		}
	});
	
	$.ajax({
		url:"/rest/sensers",
		type:"get",
		success:function(result){
			state.list.senserList = result;
		}
	});
	
	$.ajax({
		url:"/rest/controls",
		type:"get",
		success:function(result){
			state.list.controlList = result;
		}
	});
}
$(function(){
	init();
});
</script>
</html>