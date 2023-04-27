/**
 * 
 */
const nav_item ={
	template:`
		<div class="nav-item bold-text" @click="move(str)">
			<span>{{str}}</span>
		</div>
	`,props:["str"]
	,data(){
		return {
			
		}
	}
	  ,methods:{
		 move:function(str){
			location.href="/farm/"+str.toLowerCase();
		 }
	}
}