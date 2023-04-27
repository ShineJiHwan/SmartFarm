<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SmartFarm</title>
<jsp:include page="./inc/header_link.jsp"></jsp:include>
</head>
<body>
	<div class="list-item-box" id="app">
		<div class="list-item">
			<div class="list-item-head">
				<figure>
					<img src="/resources/img/temp.jpg">
				</figure>
			</div>
			<div class="list-item-body bold-text">
				<div class="list-item-name">
					<span>농지1번</span>
				</div>
			</div>
		</div>
		<div class="list-item">
			<div class="list-item-head">
				<figure>
					<img src="/resources/img/temp.jpg">
				</figure>
			</div>
			<div class="list-item-body bold-text">
				<div class="list-item-name">
					<span>농지2번</span>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
let app;
function init(){
	
}
$(function(){
	init();
});
</script>
</html>