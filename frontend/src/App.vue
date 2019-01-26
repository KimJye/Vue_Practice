<template>
  <div id="app">
    <img src="./assets/logo.png">
      <router-link to="/">home</router-link> 
   <router-link to="/api/webtoonList">웹툰리스트</router-link>
   <router-link to="/api/vote">vote</router-link>
   <router-link to="/api/graph">Graph</router-link>
      <router-link to="/register/character">file</router-link>

    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
