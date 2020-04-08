<template>
  <form v-on:submit.prevent="submitForm">
    <div>
      <label for="username">id: </label>
      <input id="username" type="text" v-model="username">
    </div>
    <div>
      <label for="password">pw: </label>
      <input id="password" type="password" v-model="password">
    </div>
    <button type="submit">
      login
    </button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data: function(){
    return {
      username: '',
      password: '',
    }
  },
  methods: {
    submitForm: function(){
      // event.preventDefault(); // vanila js 방식이다. vue에서는 .prevent하면 됨!!
      console.log(this.username, this.password);
      
      const url = 'https://jsonplaceholder.typicode.com/users';

      const data = {
        username : this.username,
        password : this.password
      }

      axios.post(url, data)
      .then(res=>{
        console.log(res);
      })
      .catch(err => {
        console.log(err);
      });
    }  
  }
}
</script>

<style>

</style>