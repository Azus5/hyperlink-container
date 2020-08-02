<template>
  <div>
    <h1>Welcome to the homepage</h1>
    <button @click="handleLogOut">LogOut</button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Home",
  methods: {
    handleLogOut() {
      axios.get("http://localhost:3000/users/sign_out").then(() => {
        top.location.href = "http://localhost:3000/sign_in";
      });
    },
  },
};
</script>

<style scoped>
</style>