<template>
  <div>
    <app-header v-bind:propsdata="str"></app-header>
  </div>
</template>

<script>
import AppHeader from './components/AppHeader.vue';

export default {
  data:function(){
    return{
      str:'h1'
    }
  },
  components:{
    'app-header' : AppHeader
  }
}
</script>

<style>

</style>