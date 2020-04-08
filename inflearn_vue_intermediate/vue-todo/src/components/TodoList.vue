<template>
   <div>
      <ul>
         <li v-for='(todoItem, index) in propsdata' v-bind:key='todoItem' class='shadow'>
           <i class='checkBtn fas fa-check' v-bind:class='{checkBtnCompleted: todoItem.completed}' 
            v-on:click='toggleComplete(todoItem)'>
            </i>
            <span v-bind:class='{textCompleted: todoItem.completed}'>{{todoItem.item}}</span>
            <span class='removeBtn' v-on:click='removeTodo(todoItem, index)'>
               <i class='fas fa-trash-alt'></i>
            </span>
         </li>
      </ul>
  </div>
</template>

<script>
export default {
   props: ['propsdata'],

   methods: {
         removeTodo: function(todoItem, index){
            localStorage.removeItem(todoItem.item)
            this.todoItems.splice(index, 1)
         },
         toggleComplete: function(todoItem){
            todoItem.completed = !todoItem.completed
            localStorage.removeItem(todoItem.item)
            localStorage.setItem(todoItem.item, JSON.stringify(todoItem))
         }
      },
}
</script>

<style>
ul {
   list-style-type: none;
   padding-left: 0px;
   margin-top: 0;
   text-align: left;
}

li {
   display: flex;
   min-height: 5rem;
   height: 5rem;
   line-height: 5rem;
   margin: 0.5rem 0;
   padding: 0 0.9rem;
   background: white;
   border-radius: 5px;
}

.checkBtn {
   line-height: 4.5rem;
   color: #62acde;
   margin-right: 0.5rem;
}

.checkBtnCompleted {
   color: #b3adad;
}

.textCompleted {
   text-decoration: line-through;
   color: #b3adad;
}

.removeBtn {
   margin-left: auto;
   color: #de4343;
}
</style>