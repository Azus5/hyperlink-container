// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import Vue from "vue/dist/vue.esm";
import axios from "axios";
import TurbolinksAdapter from "vue-turbolinks";
import { InertiaApp } from "@inertiajs/inertia-vue";
import { library } from "@fortawesome/fontawesome-svg-core";
import { faUserSecret } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import "../../assets/stylesheets/global.css";
import "@fortawesome/fontawesome-free/js/all.js";
Vue.use(TurbolinksAdapter);
Vue.use(InertiaApp);

library.add(faUserSecret);
Vue.component("font-awesome-icon", FontAwesomeIcon);

Vue.config.productionTip = false;

document.addEventListener("turbolinks:load", () => {
  const app_innertia = document.getElementById("app");
  window.axios = axios;
  if (app_innertia) {
    const app = new Vue({
      render: (h) =>
        h(InertiaApp, {
          props: {
            initialPage: JSON.parse(app_innertia.dataset.page),
            resolveComponent: (name) => require(`pages/${name}`).default,
          },
        }),
    }).$mount(app_innertia);
  }
});
