<template>
    <section class="login-page pt-120 pb-120 wow fadeInUp animated">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8 col-md-9">
                    <div class="login-register-form"
                         style="background-image: url('assets/images/inner-pages/login-bg.png');">
                        <div class="top-title text-center ">
                            <h2>Вход</h2>
                            <p>У вас ещё нет учётной записи? <router-link to="/register">Зарегистрироваться</router-link></p>
                        </div>
                        <form class="common-form">
                            <div class="form-group">
                                <label>Ваш логин</label>
                                <input v-model="loginUser" type="text" class="form-control" placeholder="Логин при регистрации..."> </div>
                            <div class="form-group eye">
                                <label>Ваш пароль</label>
                                <div class="form-group pass">
                                    <input v-model="password" type="password" id="password-field" class="form-control" data-pass>
                                    <i class="fas fa-eye" id="eye" @click="OpenHideEye"></i>
                                </div>


                            </div>
                            <div class="checkk ">
                                <div class="form-check p-0 m-0">
                                    <input type="checkbox" id="remember" v-model="checked">
                                    <label class="p-0" for="remember"> Запомнить меня</label> </div>
                                <router-link to="/reset" class="forgot"> Забыли пароль?</router-link>
                            </div> <button @click.prevent="login()" class="btn--primary style2">Войти </button>
                            <b v-if="error" class="text-danger">{{error}}</b>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "Login",
    data() {
        return {
            loginUser: '',
            password: '',
            checked: false,
            error: null
        }
    },
    watch: {
        '$store.getters.statusUser': function (statusUser){
            if (statusUser) this.$router.push({name: 'Auth.MyAccount'});
        }
    },
    methods: {
        login(){
            if (this.login !== '' && this.password !== ''){
                this.axios.post('/api/auth/login', {
                    'login': this.loginUser,
                    'password': this.password
                })
                    .then(res => {
                            this.$store.commit('ADD_AUTH', {token: res.data.access_token, remember: this.checked})
                            this.$store.commit('SET_IS_LOGED_IN', true)
                            this.$router.push({name: 'Auth.MyAccount'})
                    })
                    .catch(err => {
                        this.error = err.response.data.error
                    })
            }else{
                alert('Не все данные заполнены!')
            }
        }
    }
}
</script>

<style scoped>

</style>
