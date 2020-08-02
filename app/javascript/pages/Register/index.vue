<template>
  <div class="container">
    <div class="background-container"></div>
    <h1 class="site-name">HYPERLINK-CONTAINER</h1>
    <div class="form-login">
      <h2>Create an account</h2>
      <form @submit.prevent="handleSubmit">
        <div class="input">
          <img src="username.svg" alt="userIcon" class="input-icon" />
          <input type="text" name="user-email" placeholder="Username" v-model="username" required />
        </div>
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
        <div class="input">
          <img src="password.svg" alt="passwordIcon" class="input-icon" />
          <input
            type="password"
            name="user-password-confirmation"
            placeholder="Password Confirmation"
            v-model="password_confirmation"
            required
          />
        </div>
        <button type="submit">Signup</button>
      </form>
      <inertia-link href="http://localhost:3000/sign_in">I already have an account</inertia-link>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Register",
  data() {
    return {
      username: "",
      email: "",
      password: "",
      password_confirmation: "",
    };
  },
  methods: {
    handleSubmit() {
      if (this.password !== this.password_confirmation) {
        alert("Password and password confirmation must be the same");
      } else {
        let data = {
          user: {
            name: this.username,
            email: this.email,
            password: this.password,
            password_confirmation: this.password_confirmation,
          },
        };
        axios.post("http://localhost:8081/users", data).then((response) => {
          if (response.created) {
            alert("Sorry, it was not possible to create your account");
          }
        });
      }
    },
  },
};
</script>

<style scoped>
@import "../../styles/credencials.css";
</style>