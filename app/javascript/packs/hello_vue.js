import Vue from 'vue'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const hoge = new Vue({
    el: '#todo',
    data: {
      items: []
    },
    methods: {
      add: function (event) {
        this.items.push({})
        event.preventDefault()
      }
    }
  })
})
