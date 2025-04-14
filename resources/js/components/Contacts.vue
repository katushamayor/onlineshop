<template>
    <main class="overflow-hidden ">
        <!--Start Breadcrumb Style2-->
        <section class="breadcrumb-area" style="background-image: url('images/logo.png');">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-content text-center wow fadeInUp animated">
                            <h2>Наши контакты</h2>
                            <div class="breadcrumb-menu">
                                <ul>
                                    <li><router-link to="/"><i class="flaticon-home pe-2"></i>Главная</router-link></li>
                                    <li> <i class="flaticon-next"></i> </li>
                                    <li class="active">Контакты</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Breadcrumb Style2-->
        <!--Start Contact Page Info-->
        <section class="contact-page-info pt-120 pb-60">
            <div class="container">
                <div class="row mt--30">
                    <div class="col-xl-4 col-lg-6 wow fadeInUp animated">
                        <div class="contact-page-info__single mt-30">
                            <div class="thumb"> <img src="images/logo.png" alt=""> </div>
                            <div class="contact-box">
                                <h4>Адрес</h4>
                                <p class="text1">г.Челябинск, ул.Сони Кривой 24, Capigame,офис 666</p>
                                <p class="text2">Ирвайн, 1 Бруклин<br> Нью-Йорк 11201</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 wow fadeInUp animated">
                        <div class="contact-page-info__single mt-30">
                            <div class="thumb"> <img src="assets/images/inner-pages/contact.png" alt=""> </div>
                            <div class="contact-box">
                                <h4>Контакты</h4>
                                <ul>
                                    <li>
                                        <p>Телефон: <a href="tel:79996669999">+7(999)666-99-99</a></p>
                                    </li>
                                    <li>
                                        <p>E-mail: <a href="mailto:onetaphack@gmail.com">onetaphack@gmail.com</a></p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 wow fadeInUp animated">
                        <div class="contact-page-info__single mt-30 ">
                            <div class="thumb"> <img src="assets/images/inner-pages/clockt.png" alt=""> </div>
                            <div class="contact-box">
                                <h4>Часы работы</h4>
                                <p class="text1">Круглосуточно 24/7</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Contact Page Info-->
        <!-- Contact box Start -->
        <section class="contact-box pt-60 pb-120">
            <div class="container">
                <div class="row g-0 background align-items-center wow fadeInUp animated">
                    <div class="col-lg-7">
                        <div class="contact-form">
                            <h3>Отправьте ваше сообщение</h3>
                            <form action="#" class="common-form">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group"> <label for="name"> Ваше имя</label> <input v-model="name" type="text"
                                                                                                             id="name" class="form-control" placeholder="Евгений"> </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group"> <label for="number"> Мобильный телефон </label>
                                            <input v-model="number_phone" type="tel" class="form-control" placeholder="+7(999)999-99-99" v-mask="'+7(###)###-##-##'" maxlength="18"> </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group"> <label for="email"> Электронная почта </label> <input v-model="email"
                                            type="text" id="email" class="form-control"
                                            placeholder="support@gmail.com"> </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <p>Вопрос </p>
                                            <div class="sellect-box">
                                                <select v-model="title">
                                                <option value="Вопрос по заказу" selected>Вопрос по заказу </option>
                                                <option value="Предложения по улучшению">Предложения по улучшению </option>
                                                <option value="Другое">Другое</option>
                                            </select> </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group m-0"> <label for="email"> Напишите сообщение </label>
                                            <textarea v-model="content" placeholder="Здравствуйте, у меня возник вопрос..."></textarea> </div>
                                    </div>
                                </div> <button @click.prevent="sendMessage" type="submit" class="btn--primary style2 ">Отправить </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section> <!-- Contact box End -->
    </main>
</template>

<script>
import {mask} from 'vue-the-mask'

export default {
    name: "Contacts",
    directives: {mask},
    data() {
        return {
            name: '',
            email: '',
            content: '',
            title: 'Вопрос по заказу',
            number_phone: ''
        }
    },
    methods: {
        sendMessage(){
            if (this.email === ''){ alert('Почта обязательна для заполнения!'); return};
            if (this.content === ''){ alert('Заполните поле сообщения!!'); return};

            this.axios.post('/api/about', {
                'name': this.name,
                'email': this.email,
                'content': this.content,
                'title': this.title,
                'number_phone': this.number_phone
            }).then(res => {
                    this.name = '',
                    this.email = '',
                    this.content = '',
                    this.number_phone = ''
                alert('Письмо успешно отправлено! Мы с вами свяжемся в ближайшее время.')
            })
        }

    }
}
</script>

<style scoped>

</style>
