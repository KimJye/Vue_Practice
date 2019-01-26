import Vue from 'vue'
import Router from 'vue-router'
import Webtoon from '@/components/Webtoon'
import RegisterMember from '@/components/RegisterMember'
import Characters from '@/components/Characters'
import Graph from '@/components/Graph'
import characterRegister from '@/components/characterRegister'
import characterVote from '@/components/characterVote'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Webtoon',
      component: Webtoon
    },
    {
      path: '/:webtoon/characters',
      name: 'Characters',
      component: Characters
    },
    {
      path: '/register/character',
      name: 'RegisterMember',
      component: RegisterMember
    },
    {
      path: '/api/vote/:webtoonId',
      name: 'characterVote',
      component: characterVote
    },
    {
      path: '/api/graph/:webtoonId',
      name: 'Graph',
      component: Graph
    },
    {
      path: '/api/vote/:webtoonId',
      name: 'characterVote',
      component: characterVote
    },
    {
      path: '/api/webtoonList',
      name: 'characterRegister',
      component: characterRegister
    },
    {
      path: '/api/vote/:webtoonId',
      name: 'characterVote',
      component: characterVote
    }
  ]
})
