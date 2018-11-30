<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <title>유틸리티 라이브러리로 정렬</title>
</head>
<body>
  <div class="container">
    <h1>유틸리티 라이브러리 사용(Lodash)</h1>
    <ul class="list-group">
      <li v-for="(story, index) in orderedStories" :key="index" class="list-group-item">
      {{ story.writer }} said "{{ story.plot }}"
      and upvoted {{ story.upvotes }} times.
    </li>
  </ul>
  <!-- Without using the computed property. -->
  <ul class="list-group">
    <li v-for="(story, index) in _.orderBy(stories, ['upvotes'], [order])" :key="index" class="list-group-item">
      {{ story.writer }} said "{{ story.plot }}"
      and upvoted {{ story.upvotes }} times.
    </li>
  </ul>
  <button class="btn btn-default" v-on:click="reverseOrder">Reverse Order</button>

  <pre>
    {{ $data }}
  </pre>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.10/lodash.min.js"></script>
<script type="text/javascript">
  new Vue({
    el: '.container',
    data: {
      stories: [
      {
        plot: "I crashed my car today!",
        writer: "Alex",
        upvotes: 28
      },
      {
        plot: "Yesterday, someone stole my bag!",
        writer: "John",
        upvotes: 8
      },
      {
        plot: "Someone ate my chocolate...",
        writer: "John",
        upvotes: 51
      },
      {
        plot: "I ate someone's chocolate!",
        writer: "Alex",
        upvotes: 74
      },
      ],
      order : 'desc'
    },
    methods: {
      reverseOrder: function () {
        this.order = (this.order === 'desc') ? 'asc' : 'desc'
      }
    },
    computed: {
      orderedStories: function () {
        var order = this.order
        return _.orderBy(this.stories, 'upvotes', [order])
      }
    }
  })
</script>
</html>