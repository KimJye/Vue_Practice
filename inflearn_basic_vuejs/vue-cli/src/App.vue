<template>
  <div>
    <app-header v-bind=""></app-header>
  </div>
</template>

<script>

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