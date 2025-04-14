<template>
    <section class="login-page pt-120 pb-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8 col-md-9 wow fadeInUp animated">
                    <div class="login-register-form"
                         style="background-image: url('assets/images/inner-pages/login-bg.png');">
                        <div class="top-title text-center ">
                            <h2>Регистрация</h2>
                            <p>Уже есть аккаунт? <router-link to="/login">Войти в</router-link></p>
                        </div>
                        <form class="common-form">
                            <div class="form-group">
                                <label>Введите ваше имя</label>
                                <input v-model="name" type="text" class="form-control"  placeholder="Виктор"> </div>
                            <div class="form-group">
                                <label>Придумайте логин</label>
                                <input v-model="login" type="text" class="form-control" placeholder="Username123">
                            </div>
                            <div class="form-group">
                                <label>Ваша почта</label>
                                <input v-model="email" type="email" class="form-control"  placeholder="dropZew@gmail.com"> </div>
                            <div class="form-group">
                                <label>Ваш телефон</label>
                                <input v-model="number_phone" type="tel" class="form-control" v-mask="'+7(###)###-##-##'"  maxlength="18"> </div>
                            <div class="form-group eye">
                                <label>Придумайте пароль</label>
                                <div class="form-group pass">
                                    <input v-model="password" type="password" id="password-field" class="form-control" placeholder="Password" data-pass>
                                    <i class="fas fa-eye" id="eye" @click="OpenHideEye"></i>
                                </div>
                                <label>Подтвердите пароль</label>
                                <div class="form-group pass">
                                    <input v-model="password_confirm" type="password" class="form-control phone" placeholder="Password" data-pass>
                                    <i class="fas fa-eye" id="eye" @click="OpenHideEye"></i>
                                </div>
                            </div>
                            <div class="checkk ">
                                <div class="form-check p-0 m-0">
                                    <input type="checkbox" id="remember"> <label
                                    class="p-0" for="remember"> Примите условия и Политику конфиденциальности </label>
                                </div>
                            </div> <button @click.prevent="register" class="btn--primary style2">Зарегистрироваться </button>
                            <b v-if="error" class="text-danger">{{error}}</b>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import {mask} from 'vue-the-mask'

export default {
    name: "Register",
    directives: {mask},
    data() {
        return {
            name: '',
            login: '',
            email: '',
            number_phone: '',
            password: '',
            password_confirm: '',
            error: null
        }
    },
    watch: {
      '$store.getters.statusUser': function (status){
          if (status) this.$router.push({name: 'Auth.MyAccount'})
      }
    },
    methods: {
        register(){
            if (this.login && this.password && this.password_confirm && this.email){
                this.axios.post('/api/auth/register', {
                    'login': this.login,
                    'password': this.password,
                    'password_confirmation': this.password_confirm,
                    'name': this.name,
                    'email': this.email,
                    'number': this.number_phone,
                })
                    .then(res => {
                        localStorage.setItem('access_token', res.data.access_token);
                        this.$router.push({name: 'Auth.MyAccount'})
                    })
                    .catch(err => {
                        this.error = err.response.data.message
                    })
            }else{
                alert('Заполните поля!')
            }

        }
    }
}
</script>

<style scoped>

</style>
