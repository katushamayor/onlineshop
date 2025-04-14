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
                                <label>Введите вашу почту(на неё будет выслана ссылка для сброса пароля)</label>
                                <input v-model="email" type="text" class="form-control" placeholder="Почта при регистрации...">
                            </div>
                            <button class="style2"
                                    @click.prevent="sendEmail"
                                    :class="{'btn--primary': email, 'disabled-btn': !email}" :disabled="!email">Отправить </button>
                            <b v-if="error" class="text-danger">{{error}}</b>
                        </form>
                        <div v-if="isLoaded" class="d-flex justify-content-center">
                            <div class="spinner-border " role="status">
                                <span class="visually-hidden">Загрузка...</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "WriteEmail",
    data (){
        return {
            email: '',
            isLoaded: false,
            error: null
        }
    },
    methods: {
        sendEmail(){
            this.isLoaded = true
            if (this.email){
                this.axios.post('/api/sendResetPass', {
                    'email': this.email
                })
                    .then(res => {
                        if (res.status !== 403){
                            this.email = ''
                            this.isLoaded = false
                            alert('Сообщение о сбросе пароля выслано вам на почту!')
                        }
                    }).catch(err => {
                    alert(err.response.data.message);
                    this.isLoaded = false
                })
            }
        }
    }
}
</script>

<style scoped>
.disabled-btn{
    background-color: darkgray;
    color: white;
}
disabled-btn:hover{
    background-color: gray !important;
}
</style>
