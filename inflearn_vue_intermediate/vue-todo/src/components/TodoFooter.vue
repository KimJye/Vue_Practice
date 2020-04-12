<template>
   <div class='clearAllContainer'>
      <span class='clearAllBtn' v-on:click='clearTodo'>Clear All</span>
  </div>
</template>

<script>

import { mapMutations } from 'vuex';

export default {
   methods: {
      ...mapMutations({
         clearTodo: 'clearAllItems'
      })
   },
}
</script>

<style scoped>
.clearAllContainer {
   width: 8.5rem;
   height: 5rem;
   line-height: 5rem;
   background-color: white;
   border-radius: 0.5rem;
   margin: 0 auto;
}

.clearAllBtn {
   color: #e20303;
   display: block;
}
</style>