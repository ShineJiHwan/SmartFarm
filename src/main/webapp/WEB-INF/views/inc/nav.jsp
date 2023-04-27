<%@ page contentType="text/html;charset=UTF-8"%>
<div class="nav-wrapper pt-3 pb-2" id="nav-wrapper">
	<template v-for="(item,i) in temp_nav">		
		<nav_item :key="i" :str="item" />
	</template>
</div>
<script type="text/javascript"  src="/resources/js/nav_item.js"></script>
<script type="text/javascript">
	let nav;
	let slider;
	let isDown = false;
	let startX;
	let scrollLeft;
	$(function(){
		nav = new Vue({
			el:"#nav-wrapper",
			data:{
				temp_nav : ["Monitoring","Controlling","Setting","임시공간하나(테스트용)"]
			},components:{
				nav_item
			}
		});
		slider = document.getElementById("nav-wrapper");
		slider.addEventListener('mousedown', e => {
		    isDown = true;
		    startX = e.pageX;
		    scrollLeft = slider.scrollLeft;
		  });

		  slider.addEventListener('mouseleave', () => {
		    isDown = false;
		  });

		  slider.addEventListener('mouseup', () => {
		    isDown = false;
		  });

		  slider.addEventListener('mousemove', e => {
		    if (!isDown) return; 
		    e.preventDefault();
		    const walk = e.pageX - startX;
		    slider.scrollLeft = scrollLeft - walk;
		  });
	});
</script>
