<template>
    <main class="overflow-hidden ">
        <!--Start Breadcrumb Style2-->
        <section class="breadcrumb-area" style="background-image: url('assets/images/logo/logo.png');">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-content text-center wow fadeInUp animated">
                            <h2>Мой аккаунт </h2>
                            <div class="breadcrumb-menu">
                                <ul>
                                    <li><router-link to="/"><i class="flaticon-home pe-2"></i>Главная</router-link></li>
                                    <li> <i class="flaticon-next"></i> </li>
                                    <li class="active">Мой аккаунт</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Breadcrumb Style2-->
        <!--Start My Account Page-->
        <section class="my-account-page pt-120 pb-120" v-if="this.$store.getters.statusUser">
            <div class="container">
                <div class="row wow fadeInUp animated">
                    <!--Start My Account Page Menu-->
                    <div class="col-xl-3 col-lg-4">
                        <div class="d-flex align-items-start">
                            <div class="nav my-account-page__menu flex-column nav-pills me-3" id="v-pills-tab"
                                 role="tablist" aria-orientation="vertical">
                                <button class="nav-link active" id="v-pills-dashboard-tab" data-bs-toggle="pill" data-bs-target="#v-pills-dashboard"
                                        type="button" role="tab" aria-controls="v-pills-dashboard" aria-selected="true">
                                    <span> Рабочая область</span>
                                </button>
                                <button @click.prevent="getOrders(user.id)" class="nav-link" id="v-pills-orders-tab" data-bs-toggle="pill" data-bs-target="#v-pills-orders" type="button" role="tab"
                                        aria-controls="v-pills-orders" aria-selected="false">
                                    <span> Заказы</span> </button>
                                 <button class="nav-link" id="v-pills-account-tab" data-bs-toggle="pill" data-bs-target="#v-pills-account" type="button" role="tab"
                                         aria-controls="v-pills-account" aria-selected="false">
                                    <span> Детали аккаунта</span>
                                </button>
                                <button @click="goAdmin" v-if="this.$store.state.user?.is_admin === 1" class="nav-link" id="v-pills-account-tab" data-bs-toggle="pill" data-bs-target="#v-pills-account" type="button" role="tab"
                                         aria-controls="v-pills-account" aria-selected="false">
                                    <span> Админка</span>
                                </button>
                                <button @click.prevent="logout" class="nav-link">
                                    <span> Выйти </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">

                        <div class="tab-content " id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-dashboard" role="tabpanel"
                                 aria-labelledby="v-pills-dashboard-tab">
                                <div class="tabs-content__single" >
                                    <h4 v-if="user && isLoadingUser"><span>Привет {{user.login}}</span></h4>
                                    <h5>На панели мониторинга вашей учетной записи вы можете просматривать свои <span>последние заказы</span>,
                                        а также <span>узнать</span> свои данные учетной записи или отредактировать их</h5>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="v-pills-orders" role="tabpanel"
                                 aria-labelledby="v-pills-orders-tab">
                                <div class="tabs-content__single">
                                    <h4><span>Привет {{user.login}}</span></h4>
                                    <h5 v-if="orders.length === 0">Здесь будут ваши <span>Заказы</span></h5>
                                    <h5 v-else>Ваши <span>заказы:</span></h5>
                                    <table class="table table-dark table-striped" v-if="orders.length !== 0">
                                        <thead>
                                            <tr>
                                                <th scope="col">Заказ</th>
                                                <th scope="col">Итог</th>
                                                <th scope="col">Название</th>
                                                <th scope="col">Изображение</th>
                                                <th scope="col">Количество</th>
                                                <th scope="col">Цена</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="(order, index) in orders" :key="index" class="product-table">
                                            <td>№{{order.id}}</td>
                                            <td v-if="this.$store.getters.currencyValue === 'rub'">{{ order.total_price }}.руб</td>
                                            <td v-if="this.$store.getters.currencyValue === 'usd'">${{ (order.total_price / 76).toFixed(2) }}</td>
                                            <td v-if="this.$store.getters.currencyValue === 'kzt'">₸{{ (order.total_price * 5.81).toFixed(2) }}</td>
                                            <td colspan="4">
                                                <table class="table table-dark table-striped">
                                                    <tbody>
                                                    <tr v-for="(product, index) in order.products" :key="index">
                                                        <td>{{product.title}}</td>
                                                        <td><img :src="product.image_url" :alt="product.title"></td>
                                                        <td class="text-center">{{product.qty}}</td>
                                                        <td class="text-center" v-if="this.$store.getters.currencyValue === 'rub'">{{ product.price }}.руб</td>
                                                        <td class="text-center" v-if="this.$store.getters.currencyValue === 'usd'">${{ (product.price / 76).toFixed(2) }}</td>
                                                        <td class="text-center" v-if="this.$store.getters.currencyValue === 'kzt'">₸{{ (product.price * 5.81).toFixed(2) }}</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="v-pills-account" role="tabpanel"
                                 aria-labelledby="v-pills-account-tab">



                                <div class="tabs-content__single">
                                    <h4><span>Привет {{user.login}}</span></h4>
                                    <h4>Ваши данные:</h4>
                                    <h5>Логин: <span>{{user.login}}</span></h5>
                                    <h5>Ваше имя: <span>{{user.name}}</span></h5>
                                    <h5>Ваша почта: <span>{{user.email}}</span></h5>
                                    <h5>Ваш телефон: <span>{{user.number}}</span></h5>
                                    <button @click.prevent="penBtn" type="button" class="btn btn-primary edit-btn" data-bs-toggle="modal" data-bs-target="#exampleModal"
                                            data-bs-whatever="@mdo">Редактировать<i class="fas fa-pen-square"></i></button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End My Account Page-->
    </main>
    <modal-window v-show="openModal" :backdrop="'static'" ref="modal">
    </modal-window>
</template>

<script>
import {mapState} from "vuex";
import ModalWindow from "../../components/ModalWindow";
import router from "../../router";
import {useRouter} from "vue-router/dist/vue-router";

export default {
    name: "My-Account",
    components: {ModalWindow},
    data() {
        return {
            orders: [],
            openModal: false
        }
    },
    computed: {
        ...mapState(['user', 'isLoadingUser']),
    },
    mounted() {
        if (!this.$store.getters.statusUser) this.$router.push({name: 'main'})
    },
    methods: {
        logout(){
            document.cookie = 'user=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;'
            this.$store.commit('LOGOUT');
            router.push({name: 'Auth.Login'})
        },
        goAdmin(){
            let webApiUrl = '/admin';
            let tokenStr = localStorage.getItem('access_token');
            document.cookie = "user="+tokenStr;
            this.axios.get(webApiUrl, {
                headers: {"Authorization" : `Bearer ${tokenStr}`}
            })
                .then(res => {
                    window.open(
                        '/admin?token=' + tokenStr,
                        '_blank'
                    );
                })
        },
        getOrders(id){
            this.axios.get(`/api/orders/${id}`)
                .then(res => {
                    this.orders = res.data;
                })
        },
        penBtn(){
            this.openModal = true;
        }
    }
}
</script>

<style scoped>
table td{
    width: 100px !important;
}
.fas{
    margin-left: 5px;
}
.edit-btn{
    margin-top: 20px;
}
</style>
