<template>
  <div class="container">
    <div class="side-bar">
      <font-awesome-icon icon="plus" :size="svgSize" id="plus" />
      <font-awesome-icon icon="sign-out-alt" :size="svgSize" id="out" />
    </div>
    <div class="content"></div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Home",
  data() {
    return {
      svgSize: "2x",
    };
  },
  methods: {
    handleLogOut() {
      axios.get("http://localhost:3000/users/sign_out").then(() => {
        top.location.href = "http://localhost:3000/sign_in";
      });
    },
  },
};
</script>

<style>
body {
  background-color: #3d3d3d;
}

.container {
  display: grid;
  grid-template-columns: 5% 95%;
  height: 100vh;
}

.side-bar {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  padding: 15px 0;
  margin-right: 10px;
}

.side-bar svg {
  color: white;
  transition: all 0.5s;
  -webkit-transition: all 0.5s ease-out;
  -moz-transition: all 0.5s ease-out;
  -o-transition: all 0.5s ease-out;
  -ms-transition: all 0.5s ease-out;
}

.side-bar #plus:hover {
  color: rgb(0, 255, 0);
  scale: 1.5;
}

.side-bar #out:hover {
  color: rgb(221, 52, 52);
  scale: 1.3;
}

.content,
.side-bar {
  background-color: #565656;
}
</style>
