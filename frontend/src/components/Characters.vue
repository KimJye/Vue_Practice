<template>
    <div class="characters_wrapper">
        <div v-for='character in characters' :key='character.character_no'>
            {{ character.character_name }} + '/' + {{ character.count }}
        </div>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    name: 'Characters',
    data() {
        return {
            characters: undefined,
            webtoon: null
        }
    },
    created () {
        this.webtoon = this.$route.params.webtoon;
    },
    mounted () {
        var sock = new SocJS("./stomp");
        var client = Stomp.over(sock);
        var sendInterval;
    
        client.connect({}, () =>{
            var subscribeURL = '/subscribe/' + this.webtoon + '/characters'
            client.subscribe(subscribeURL,(response) => {
                //console.log(response.body)
                this.characters = response.body
            })
            sendInterval = setInterval(() => {
                client.send('/publish/' + this.webtoon + '/characters',{},null);
            },1000)
            
        })
        client.onclose = ()=>{
            clearInterval(sendInterval)
        }
    },
    methods: {
        getCharacters : function(){
            axios.get('./api/' + this.$route.params.webtoon + '/characters')
            .then(response => (this.characters = response.data))
        }
        
    }
}
</script>

<style>

</style>
