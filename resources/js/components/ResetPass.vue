<template>
    <section class="login-page pt-120 pb-120 wow fadeInUp animated">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8 col-md-9">
                    <div class="login-register-form"
                         style="background-image: url('assets/images/inner-pages/login-bg.png');">
                        <div class="top-title text-center ">
                            <h2>Сброс пароля</h2>
                        </div>
                        <form class="common-form">
                            <div class="form-group">
                                <label>Введите новый пароль</label>
                                <div class="pass">
                                    <input v-model="password" type="password" class="form-control" data-pass>
                                    <i class="fas fa-eye" id="eye" @click.prevent="OpenHideEye"></i>
                                </div>
                            </div>
                            <button class="style2"
                                    @click.prevent="sendEmail"
                                    :class="{'btn--primary': password, 'disabled-btn': !password}" :disabled="!password">Отправить </button>
                            <b v-if="error" class="text-danger">{{error}}</b>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import router from "../router";

export default {
    name: "ResetPass",
    data (){
        return {
            password: '',
            error: null
        }
    },
    mounted() {
        if (!this.$route.params.token) router.push({name: '/'})
    },
    methods: {
        sendEmail(){
            this.axios.post('/api/resetPass',{
                'email': this.$route.params.email,
                'token': this.$route.params.token,
                'password': this.password
            })
                .then(res => {
                    if (res.status === 200){
                        router.push({name: 'Auth.Login'})
                    }else{
                        alert(res.data.message);
                    }
                })
                .catch(err => {
                    this.password = '';
                })
        }
    }
}
</script>

<style>

</style>
