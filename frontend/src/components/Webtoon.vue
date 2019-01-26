<template>
  <div class="webtoon">
    <h1>{{ msg }}</h1>

    <table>
      <tr v-for="w in webtoons.webtoonList">
        <td>{{w.webtoon_name}}</td>
        <td>
          <a :href="'/api/vote/'+w.webtoon_no">
            <img :src="getImageResource(w.webtoon_name)" width="150" height="150">
          </a>
        </td>
      </tr>
      <tr v-for="we in webtoons.webtoonListEnd">
        <td>{{we.webtoon_name}}</td>
        <td>
          <img
            :src="getImageResource(we.webtoon_name)"
            v-on:click="showAlert()"
            width="150"
            height="150"
          >
        </td>
      </tr>
    </table>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Webtoon",
  data() {
    return {
      webtoons: {
        webtoonList: [],
        webtoonListEnd: [],
        mytoken: ""
      },
      msg: "webtoon 목록 보여주기"
    };
  },

  mounted() {
    this.getWebtoon();
    if (localStorage.name) {
      this.mytoken = localStorage.name;
    }
  },
  watch: {
    mytoken(mytoken) {
      localStorage.name = mytoken;
    }
  },
  methods: {
    getWebtoon() {
      const url = "/api/getWebtoon";
      axios.get(url).then(response => (this.webtoons = response.data));
      return;
    },
    getImageResource(value) {
      return `/webtoonImage/${value}.png`;
    },
    showAlert() {
      alert("투표 안됨");
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
div {
  text-align: center;
}
table {
  width: 400px;
  border-collapse: collapse;
  margin: auto;
}
td {
  border: 1px solid gray;
}
button {
  margin: 10px;
}
</style>
