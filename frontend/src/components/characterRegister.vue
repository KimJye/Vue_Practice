<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h2>character add</h2>
        <select v-model="webtoonId">
      <option v-for="v in name" v-bind:value="v.webtoon_vote_no">{{v.webtoon_name}}</option>
    </select>

      <input type="text" v-model="characterName">
        <button @click='addCharacter'>추가</button>
       <a href="api/vote">들어가기</a>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: 'test',
  data () {
    return {
      msg: 'vue',
        name: []
    };
  },
  created(){
     this.getWebtoonName();
  },
  methods : {
    //get code
    getWebtoonName(){
      return axios.get('api/webtoonList').then(response => (this.name = response.data));
    },
   
    //post code
    addCharacter(){
      console.log(this.webtoonId);
    console.log(this.characterName); 
   let form = new FormData() 
   form.append('webtoonId', this.webtoonId) 
   form.append('characterName',this.characterName) 
   axios.post('api/webtoonList', form) 
   .then( response => { console.log('response : ', JSON.stringify(response, null, 2)) })
   .catch( error => { console.log('failed', error) })
 }
}
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
</style>
