<template>
<div>
  <!-- header-default start -->
  <header class="header-style-3">
    <!-- Start Desktop Menu -->
    <div class="menubox">
      <div class="container-fluid">
        <div class="row d-lg-none d-block">
          <div class="mobile-menu ">
            <div class="mobile-menu__menu-top border-bottom-0">
              <div class="container">
                <div class="row">
                  <div class="menu-info d-flex justify-content-between align-items-center">
                    <div class="menubar"> <span></span> <span></span> <span></span> </div> <router-link
                      to="/" class="logo"> <img src="../../public/assets/images/logo/logo.png"
                                                           alt=""> </router-link>
                    <div class="cart-holder">
                      <a href="#0" class="cart cart-icon position-relative">
                        <i class="flaticon-shopping-cart"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="menu-closer"></div>
            <div class="mobile-menu__sidebar-menu">
              <div class="menu-closer two"> <span> Close Menu</span> <span class="cross"><i
                  class="flaticon-cross"></i></span> </div>
              <div class="search-box-holder">
                <form action="#0">
                  <div class="form-group search-box menu"> <input type="text" class="form-control"
                                                                  placeholder="Search for products"> <span class="search-icon"> <i
                      class="flaticon-magnifying-glass"></i> </span> </div>
                </form>
              </div>
              <ul class="page-dropdown-menu">
                <li class="dropdown-list"> <router-link to="/"> <span>Главная </span> </router-link></li>
                <li class="dropdown-list"> <router-link to="/about"> <span>О нас </span> </router-link></li>
                <li><router-link to="/contacts">Контакты </router-link></li>
                <li><router-link to="/login" v-if="!isSignIn" >Войти в </router-link></li>
                <li><router-link to="/register" v-if="!isSignIn">Регистрация </router-link></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="d-lg-block d-none">
          <div class="row g-0 position-relative">
            <div class="col-lg-3 d-flex align-items-center justify-content-center border-rit ">
              <div class="logo"> <router-link to="/"> <img src="../../public/assets/images/logo/logo.png" alt="" style="height: 90px"> </router-link>
              </div>
            </div>
            <div class="col-lg-9 g-0 p-0">
                <div class="row g-0 holder">
                    <div class="col-12">
                        <div class="some-info">
                            <p class="d-flex align-items-center"> <span class="icon"> <i
                                class="flaticon-power"></i> </span> Welcome to Capigame ru</p>
                            <div class="right d-flex align-items-center ">
                                <div class="language currency">
                                    <select-currency></select-currency>
                                </div>
                                <div class="language two"> <select>
                                    <option>Россия </option>
                                    <option value="1" disabled title="Скоро...(soon...)">English</option>
                                </select> </div>
                                <div v-if="!isSignIn" class="d-flex">
                                    <router-link to="/login" class="auth"> Войти</router-link> /
                                    <router-link to="/register" class="auth"> Зарегистрироваться </router-link>
                                </div>
                                <div v-if="isSignIn && this.$store.state.user.login" class="login-user">
                                    <router-link to="/myAccount" class="text-warning">{{this.$store.state.user.login}}</router-link>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              <div class="border-one"> </div>
                <div class="row g-0 holder">
                    <div class="col-12">
                        <div class="mega-menu-default mega-menu d-lg-block d-none">
                            <div class=" d-flex align-items-center justify-content-between ">
                                <nav>
                                    <ul
                                        class="page-dropdown-menu d-flex align-items-center justify-content-center">
                                        <li class="dropdown-list"> <router-link to="/"><span>Главная</span></router-link></li>
                                    </ul>
                                </nav>


                                <div class="right d-flex align-items-center justify-content-end">
                                    <ul class="main-menu__widge-box d-flex align-items-center ">
                                        <li v-if="isSignIn" class="d-lg-block d-none"><router-link to="/myAccount"><i
                                            class="flaticon-user"></i> </router-link></li>
                                        <li class="d-lg-block d-none"><router-link to="/favourites"
                                                                         class="number"><i class="flaticon-heart"></i> <span
                                            class="count">{{$store.state.countFav}}</span> </router-link> </li>
                                        <li class="cartm"> <a href="#0" class="number cart-icon"> <i
                                            class="flaticon-shopping-cart"></i>
                                            <span class="count">({{$store.state.count}})</span>

                                        </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <a href="#" class="offer-link"> Offer </a>
          </div>
        </div>
      </div>
    </div>

    <div class="side-cart-closer"></div>
    <div class="side-cart d-flex flex-column justify-content-between">
      <div class="top">
        <div class="content d-flex justify-content-between align-items-center">
          <h6 class="text-uppercase">Ваша корзина ({{$store.state.count}})</h6> <span class="cart-close text-uppercase">X</span>
        </div>
        <div v-if="$store.state.cart" class="cart_items" >
          <div v-for="product in $store.state.cart" class="items d-flex justify-content-between align-items-center" >
            <div class="left d-flex align-items-center">
              <a :href="`/products/${product.id}`" class="thumb d-flex justify-content-between align-items-center">
                <img :src="product.image_url" alt=""> </a>
              <div class="text"> <a :href="`/products/${product.id}`">
                <h6>{{product.title}}</h6>
              </a>
                <p v-if="this.$store.getters.currencyValue === 'rub'">{{product.qty}} X <span>{{product.price * product.qty}}.руб</span> </p>
                <p v-if="this.$store.getters.currencyValue === 'usd'">{{product.qty}} X <span>${{((product.price * product.qty) / 80).toFixed(2)}}</span> </p>
                <p v-if="this.$store.getters.currencyValue === 'kzt'">{{product.qty}} X <span>₸{{((product.price * product.qty) * 5.81).toFixed(2)}}</span> </p>
              </div>
            </div>
            <div class="right">
              <div @click.prevent="removeProduct(product.id)" class="item-remove"> <i class="flaticon-cross"></i> </div>
            </div>
          </div>
        </div>
      </div>
      <div class="bottom">
        <div class="total-ammount d-flex justify-content-between align-items-center">
          <h6 class="text-uppercase">Итого:</h6>
          <h6 class="ammount text-uppercase" v-if="this.$store.getters.currencyValue === 'rub'">{{this.$store.state.totalPrice}}.руб</h6>
          <h6 class="ammount text-uppercase" v-if="this.$store.getters.currencyValue === 'usd'">${{((this.$store.state.totalPrice / 80).toFixed(2))}}</h6>
          <h6 class="ammount text-uppercase" v-if="this.$store.getters.currencyValue === 'kzt'">₸{{((this.$store.state.totalPrice) * 5.81).toFixed(2)}}</h6>
        </div>
        <div class="button-box d-flex justify-content-between">
          <router-link to="/cart" class="btn_black w-100"> Страница корзины</router-link></div>
      </div>
    </div>
    <div class="sidebar-content-closer"></div>
    <div class="sidebar-content">
      <div class="sidebar-widget-container">
        <div class="widget-heading d-flex justify-content-end align-content-center"> <span
            class="close-side-widget">X</span> </div>
        <div class="sidebar-textwidget">
          <div class="sidebar-info-contents">
            <div class="content-inner">
              <div class="logo"> <router-link to="/"><img src="assets/images/logo/logo-2.png" alt=""></router-link>
              </div>
              <div class="content-box">
                <h4>О нас</h4>
                <div class="inner-text">
                  <p>Наш интернет-магазин видеоигр предоставляет широкий ассортимент компьютерных и консольных игр для любителей мира гейминга. Мы работаем только с проверенными производителями и предлагаем игры различных жанров: от экшенов и тиреров до симуляторов и стратегий.</p>
                </div>
              </div>
              <div class="thm-medio-boxx1">
                <ul class="social-box">
                  <li class="twitter"> <a href="https://vk.com/rabid_duck_1" target="_blank"><i
                      class="fab fa-vk"></i></a> </li>
                  <li class="instagram"> <a href="https://t.me/Rab1Dok" target="_blank"><i
                      class="fab fa-telegram"></i></a> </li>
                  <li class="youtube"> <a href="https://www.twitch.tv/rab1d_ru" target="_blank"><i
                      class="fab fa-twitch"></i></a> </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>

  <router-view></router-view>

  <!--  Footer Three start -->
  <footer class="footer-default footer-3 ">
    <div class="footer-default__shap_1 position-absolute "> <img src="../../public/assets/images/shape/footer-shape-1.png"
                                                                 alt=""> </div>
    <!--Start Footer-->
    <div class="footer-default__main-footer position-relative">
      <div class="container">
        <div class="row">
          <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 mt-30 wow fadeInUp animated">
            <div class="footer-default__single-box">
              <div class="company-info">
                <div class="footer-title">
                  <h4> Офис</h4>
                </div>
                <div class="text1">
                  <p>г.Челябинск, ул.Сони Кривой 24, Capigame,офис 666</p>
                </div>
                  <div class="text3 text-decoration-underline">
                      <p>Российская Федерация</p>
                  </div>
                <div class="text2">
                  <p>Ирвайн, 1 <br> Бруклин, Нью-Йорк 11201</p>
                </div>
                  <div class="text3 text-decoration-underline">
                      <p>США</p>
                  </div>
              </div>
            </div>
          </div>
          <div class="col-xl-2 col-lg-6 col-md-6 col-sm-12 mt-30 wow fadeInUp animated">
            <div class="footer-default__single-box">
              <div class="footer-title">
                <h4> Полезные ссылки </h4>
              </div>
              <ul class="footer-links">
                  <li><router-link to="/myAccount" v-if="this.$store.getters.statusUser">Аккаунт</router-link></li>
                <li><router-link to="/register" v-if="!this.$store.getters.statusUser">Войти/Зарегистрироваться</router-link></li>
                <li><router-link to="/cart">Страницы корзины</router-link></li>
                <li><router-link to="/products">Продукты</router-link></li>
                <li><router-link to="/favourites">Мои избранные</router-link></li>
              </ul>
            </div>
          </div>
          <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 mt-30 wow fadeInUp animated">
            <div class="footer-default__single-box">
              <div class="footer-title">
                <h4> Информация </h4>
              </div>
              <ul class="footer-links">
                <li><router-link to="/about">О нас</router-link></li>
                <li><router-link to="/contacts">Контакты</router-link></li>
              </ul>
            </div>
          </div>
          <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 mt-30 wow fadeInUp animated">
            <div class="footer-default__single-box">
              <div class="footer-title">
                <h4> Новости </h4>
              </div>
              <div class="footer-newsletter">
                <p class="text">Введите свой адрес электронной почты, чтобы получать последние обновления о наших продуктах и рекламных акциях. </p>
                <form action="#0" class="footer-default__subscrib-form">
                  <div class="footer-input-box">
                      <input v-model="subEmail" type="email" placeholder="Ваша почта..." name="email">
                      <button @click.prevent="subBtn" type="submit" class="subscribe_btn"> Подписаться</button>
                  </div>
                </form>
                <div class="newsletter-bottom d-flex align-items-center">
                  <div class="footer-title-box">
                    <p>Подпишитесь на нас:</p>
                  </div>
                  <div class="footer__medio-boxx  medio-boxx  d-flex align-items-center">
                    <ul>
                      <li><a href="https://vk.com/rabid_duck_1" target="_blank" class="active"><i
                          class="fab fa-vk"></i></a></li>
                      <li><a href="https://www.twitch.tv/rab1d_ru" target="_blank"><i
                          class="fab fa-twitch"></i></a></li>
                      <li><a href="https://t.me/Rab1Dok"><i class="fab fa-telegram"
                                                                  target="_blank"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- footer-bottom Footer-->
    <div class="footer_bottom position-relative">
      <div class="container">
        <div class="footer_bottom_content">
          <div class="copyright wow fadeInUp animated">
            <p>© 2023 <router-link to="/">CAPIGAME ru.</router-link> Все права защищены.</p>
          </div>
          <div class="footer-payment wow fadeInUp animated">
            <a href="#0"> <img src="../../public/assets/images/home-four/method-1.jpg" alt="payment"> </a>
            <a href="#0"> <img src="../../public/assets/images/home-four/method-2.jpg" alt="payment"> </a>
            <a href="#0"> <img src="../../public/assets/images/home-four/method-3.jpg" alt="payment"> </a>
            <a href="#0"> <img src="../../public/assets/images/home-four/method-4.jpg" alt="payment"> </a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</div>
</template>

<script>
import selectCurrency from "./components/SelectCurrency.vue";

export default {
  name: 'App',
  components: {
    selectCurrency,
  },
  data() {
    return {
      products: [],
      totalPrice: 0,
        subEmail: '',
        isSignIn: false
    }
  },
    mounted() {
    $(document).trigger('changed')
    this.getCartProducts()
  },
    watch: {
      '$store.getters.statusUser': function (value) {
            this.isSignIn = value
          this.$store.dispatch('getUserInfo')
      }
    },
    methods: {
    getCartProducts(){
      if (localStorage.getItem('cart') || []){
        this.products = JSON.parse(localStorage.getItem('cart'));
        this.$store.commit('CART_ITEMS');
          if (this.products !== null){
            this.calculateCartPrice()
        }
      }
    },
    removeProduct(id) {
        this.$store.commit('REMOVE_PRODUCT', id);
        this.updateCart();
        this.calculateCartPrice()
    },
    updateCart(){
        let computedCart = JSON.parse(localStorage.getItem('cart'));
        let qtyCart = computedCart.reduce((qty, product) => qty + product.qty, 0);
        this.$store.commit('COUNT', qtyCart);
    },
    calculateCartPrice(){
        let computedCart = JSON.parse(localStorage.getItem('cart'));
        this.totalPrice = computedCart.reduce((sum, product) => sum + product.price * product.qty, 0)
        this.$store.commit('TOTAL_PRICE');
    },
        subBtn(){
            this.subEmail = '';
            alert('Вы подписались на рассылку новостей!');
        }
  }
}
</script>

<style scoped>
.auth:hover{
    color: #f69c63;
}
.login-user{
    margin-bottom: -15px;
}
</style>
