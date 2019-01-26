<template>
	<div class="characters_wrapper">
		<h1>{{introduce}}</h1>
		<div class="register_form_wrap">
	    
			<form action="./register/character" method="post" enctype="multipart/form-data">
				<select v-model="webtoonId">
     			 <option v-for="v in name" v-bind:value="v.webtoon_vote_no">{{v.webtoon_name}}
			<input type="hidden" name="webtoonId" v-bind:value="v.webtoon_vote_no"/>
			</option>
			</select> 
			<!--<input type="hidden" name="webtoon_id" v-bind:value="this.$route.params.webtoon"/>-->

	    	<table class="form_table">
    			<tr>
				    <td style="width: 100px;">
				    	이름
			    	</td>
			    	<td>
				    	<input type="text" name="character_name" placeholder="이름을 입력하세요.(최대길이 20)" style="width: 99%;" maxlength="20" />
			    	</td>
				</tr>
				<tr>
			    	<td style="width: 100px;">
				    	이미지
			    	</td>
			    	<td>
			    		<input type="file" name="character_image" accept="image/*">
		    		</td>
	    		</tr>
	    	</table>
				    	<div class="button_group">
	    						<input class="button" type="submit" value="후보 등록"/>

    			
	    	</div>
			    </form>
	    
    </div>
	</div>
</template>

<script>
export default{
	name: 'RegisterMember',
	data(){
		return {
			introduce: 'Register Member'
		}
	},
	created(){
		 this.getWebtoonName();

	},
  methods : {
    //get code
    getWebtoonName(){
      return axios.get('register/character').then(response => (this.name = response.data));
    }
	}
}
</script>

<style>
.members_wrapper{
	text-align:center;
}
</style>