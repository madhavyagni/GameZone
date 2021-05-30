require('./bootstrap');

import Vue from 'vue'
import store from '~/store'
import router from '~/router'
import i18n from '~/plugins/i18n'
import App from '~/components/App'

import VueAxios from 'vue-axios';
import axios from 'axios';

import('../css/app.css')
Vue.use(VueAxios, axios);

import '~/plugins'
import '~/components'

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  i18n,
  store,
  router,
  ...App
})

