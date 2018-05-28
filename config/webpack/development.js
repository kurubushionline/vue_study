process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

// viewのDOMをVueオブジェクト化すると失敗する対応, vue/esmって何?
module.exports = Object.assign({}, environment.toWebpackConfig(), {
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    }
  }
})
