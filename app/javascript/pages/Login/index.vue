<template>
  <div class="container">
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
      <a href="http://localhost:8081/users/sign_up">I don't have an account</a>
    </div>
  </div>
</template>

<script>
import axios from "axios";
// import EmailSVG from "../../../../public/email.svg";

// console.log(EmailSVG);

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
        .then((resp) => {
          alert("logged");
        });
    },
  },
};
</script>

<style>
body {
  background: #000 url("../../../assets/images/BackgroundLessBright.jpg")
    no-repeat;
  background-size: cover;
  width: 100%;
  height: 100vh;
}

.container h1.site-name {
  color: white;
  position: absolute;
  top: 3%;
  left: 2%;
}

.container div.form-login {
  position: absolute;
  display: flex;
  flex-direction: column;
  align-items: center;
  right: 10%;
  top: 10%;
  background-color: rgba(0, 0, 0, 0.3);
  border-radius: 10px;
  padding: 55px 30px;

  max-width: 400px;
  width: 100%;
}

div.form-login form {
  display: flex;
  width: 100%;
  flex-direction: column;
}

div.form-login form .input input {
  width: 100%;
  padding-left: 45px;
}

div.form-login form *:not(div) {
  border: none;
  border-radius: 7px;
  margin-top: 20px;
  padding: 7px;
}

div.form-login form button {
  color: white;
  background-color: #0f55bd;
  transition: all 0.6s;
}

div.form-login a {
  color: white;
  transition: all 0.6s;
  margin-top: 10px;
  text-decoration: none;
}
div.form-login h2 {
  color: white;
  margin-bottom: 5px;
}

.logo {
  width: 28px;
  height: 28px;
  margin-right: 10px;
}

div.form-login form .input {
  position: relative;
  display: flex;
  flex-direction: row;
  align-items: center;
}

div.form-login form .input img {
  position: absolute;
  width: 40px;
  border-right: 1px solid rgba(0, 0, 0, 0.5);
  border-radius: 0px;
}

/* Animations, Events */

div.form-login button:hover {
  background-color: #1468e7;
}

div.form-login a:hover {
  color: red;
}
</style>
