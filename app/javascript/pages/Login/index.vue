<template>
  <div class="container">
    <div class="background-container"></div>
    <h1 class="site-name">HYPERLINK-CONTAINER</h1>
    <div class="form-login">
      <h2>Sign in to proceed</h2>
      <form @submit.prevent="handleLogin">
        <div class="input">
          <img src="email.svg" alt="emailIcon" class="input-icon" />
          <input type="email" name="user-email" placeholder="E-mail" v-model="email" required />
        </div>
        <div class="input">
          <img src="password.svg" alt="passwordIcon" class="input-icon" />
          <input
            type="password"
            name="user-password"
            placeholder="Password"
            v-model="password"
            required
          />
        </div>
        <button type="submit">Login</button>
      </form>
      <inertia-link href="http://localhost:3000/sign_up">I don't have an account</inertia-link>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "login",
  data() {
    return {
      email: "",
      password: "",
    };
  },
  methods: {
    handleLogin() {
      let login_data = {
        user: {
          email: this.email,
          password: this.password,
        },
      };

      axios
        .post("http://localhost:3000/users/sign_in", login_data)
        .then((response) => {
          if (response.data.logged) {
            top.location.href = "http://localhost:3000/";
          } else {
            alert("It was not possible to log you in");
          }
        });
    },
  },
};
</script>

<style>
@import url("../../styles/credencials.css");
</style>
