<template>
    <div>
    <table id="character_table">
       <h1> character~~</h1>
       <div class="timeout_wrapper">
         
       </div>
       <characterVoteLow v-on:show-log="printText"></characterVoteLow>
       
      <tr v-for=" (v,index) in name" v-bind:key="v.character_no">
        <td v-if="index<2" class="character_count">
          {{v.count}}
        </td>
        <td v-else colspan="2" class="character_count">
          {{v.count}}
        </td>
        <td>{{v.character_name}}</td>
        <td> <button @click='vote' name="characterId" id="characterId" v-bind:value="v.character_no">vote</button></td>
      </tr>
    </table>

            <form action="api/vote/post" method="post">
           <ul>
 <input type="hidden" name="webtoonId" v-bind:value="this.$route.params.webtoonId">
                 <li v-for=" v in name" v-bind:key="v.character_no">
            {{v.character_name}}
              <input type="radio" name="characterId" v-bind:value="v.character_no" v-model="characterId">
              <br/>
          </li>
        </ul>
        <input type="submit">vote</input>
        </form>
    </div>
</template>

<script>
import axios from "axios";

export default {
  name: "characterVote",

  data() {
    return {
      msg: "vue",
      name: [],
      characters: undefined,
      webtoon: null,
      total: null
    };
  },
  created() {
    this.getCharacName();
    this.getTotal();
    this.webtoon = this.$route.params.webtoonId;

  },
  mounted() {
    var sock = new SockJS("./stomp");
    var client = Stomp.over(sock);
    var sendInterval;
    client.debug = () => {}
    client.connect({}, () => {
      var subscribeURL = "/subscribe/" + this.webtoon + "/characters";
      client.subscribe(subscribeURL, response => {
        //this.name = response.body
        var jsonData = JSON.parse(response.body)
        
        $.each(jsonData,function(i, item){
          $(this).html(jsonData[index].count)
        })
        
      });
      sendInterval = setInterval(() => {
        client.send("/publish/" + this.webtoon + "/characters", {}, null);  
      }, 1000);
    });
    client.onclose = () => {
      clearInterval(sendInterval);
    };
  },

  methods: {
    //get code
    getCharacName() {
      return axios
        .get("api/vote/" + this.$route.params.webtoonId)
        .then(response => (this.name = response.data));
    },
    getTotal() {
      return axios
        .get("api/total/" + this.$route.params.webtoonId)
        .then(response => (this.total = response.data));
    },
    printText: function() {
      console.log("received an event");
    },
    //post code
    vote() {
      console.log(this.$route.params.webtoonId);
      console.log(characterId.value);
      let form = new FormData();
      form.append("characterId", characterId.value);
      axios
        .post("api/vote/" + this.$route.params.webtoonId, form)
        .then(response => {
          console.log("response : ", JSON.stringify(response, null, 2));
        })
        .catch(error => {
          console.log("failed", error);
        });
    }
  }
};
</script>