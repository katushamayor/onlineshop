<template>
<div>
  <main>
    <!--Start Shop Details Breadcrumb-->
    <div class="shop-details-breadcrumb wow fadeInUp animated overflow-hidden ">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="shop-details-inner">
              <ul class="shop-details-menu">
                <li><router-link to="/products">Домой</router-link></li>
                <li class="active" v-if="product">Страница товара: {{product.title}}</li>
                <li class="active" v-else>Страница товара</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--End Shop Details Breadcrumb-->
    <!--Start Shop Details Top-->
    <section class="shop-details-top two ">
      <div class="container"  v-if="product">
        <div class="row mt--30">
          <div class="col-xl-6 col-lg-6 mt-30 wow fadeInUp animated">
            <div class="single-product-box one">
              <div class="big-product single-product-one slider-for">
                <div v-for="image in product.product_images">
                  <div class="single-item"> <img :src="image.url" alt="">
                      <div class="products-grid-one__badge-box d-flex flex-row flex-wrap platforms" v-if="product.platforms">
                          <span class="bg_base badge new"  v-for="platform in product.platforms">{{platform.title}}</span>
                      </div>
                      <a href="#0" @click.prevent="addToFav"
                                                                                class="love"> <i class="flaticon-like"></i> </a>
                  </div>
                </div>
              </div>
              <div class="navholder" >
                <div class="product-slicknav single-product-one-nav slider-nav">
                  <div v-for="image in product.product_images"> <span class="single-item">
                    <img :src="image.url" alt=""> </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 mt-30 wow fadeInUp animated">
            <div class="shop-details-top-right ">
              <div class="shop-details-top-right-content-box">
                <div class="shop-details-top-review-box">
                  <div class="shop-details-top-review">
                    <ul>
                        <i class="fas fa-star" :class="{'active-star': totalRate >= 1}"></i>
                        <i class="fas fa-star" :class="{'active-star': totalRate >= 2}"></i>
                        <i class="fas fa-star" :class="{'active-star': totalRate >= 3}"></i>
                        <i class="fas fa-star" :class="{'active-star': totalRate >= 4}"></i>
                        <i class="fas fa-star" :class="{'active-star': totalRate >= 5}"></i>
                    </ul>
                    <p>({{reviews.length}} отзывов)</p>
                  </div>
                </div>
                <div class="shop-details-top-title">
                  <h3>{{ product.title }}</h3>
                </div>
                <ul class="shop-details-top-info">
                  <li><span>SKU:</span> C{{sku}}</li>
                  <li><span>Продавец:</span> Capigame</li>
                </ul>
                <div class="shop-details-top-price-box">
                  <h3 v-if="this.$store.getters.currencyValue === 'rub'">{{ product.price }}.руб <del v-if="product.old_price">{{ product.old_price }}.руб</del></h3>
                  <h3 v-if="this.$store.getters.currencyValue === 'usd'">${{ parseFloat((product.price / 80).toFixed(2)) }} <del v-if="product.old_price">${{ parseFloat((product.old_price / 80).toFixed(2)) }}</del></h3>
                  <h3 v-if="this.$store.getters.currencyValue === 'kzt'">₸{{ parseFloat((product.price * 5.81).toFixed(2)) }} <del v-if="product.old_price">₸{{ parseFloat((product.old_price * 5.81).toFixed(2)) }}</del></h3>
                  <p>(+15% НДС включает)</p>
                </div>
                <p class="shop-details-top-product-sale"><span>1</span> Продуктов продано за 12 ч
                </p>
                <div class="timer-box">
                  <h4>Действующее предложение</h4>
                  <div class="countdown-timer">
                    <div class="default-coundown">
                      <div class="box">
                        <div class="countdown time-countdown-two"
                             data-countdown-time="2022/03/12"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="product-quantity">
                  <h4>Количество</h4>
                  <div class="product-quantity-box d-flex align-items-center flex-wrap">
                    <div class="qty mr-2">
                      <div class="qtySelector text-center d-flex justify-content-around w-100 p-0">
                          <span @click.prevent="qtyMinus"><i class="flaticon-minus"></i> </span>
                          <input v-model="qtyBuyValue" type="number" min="1" :max="product.count" class="qtyValue" maxlength="3" />
                          <span @click.prevent="qtuPlus(product)">
                              <i  class="flaticon-plus"></i> </span>
                      </div>
                    </div>
                    <div class="product-quantity-check"> <i class="flaticon-select"></i>
                      <p v-if="product.is_published === 1">В наличии</p>
                      <p v-else>Нет в наличии</p>
                    </div>
                  </div>
                </div>
                <div class="shop-details-top-order-now"> <i class="flaticon-point"></i>
                  <p>Закажите сейчас, осталось ровно {{product.count}} штук!</p>
                </div>
                <div class="shop-details-top-cart-box-btn">
                    <button @click.prevent="AddToCart(product)" class="btn--primary style2 " type="submit">Добавить в корзину</button> </div>
                <div class="shop-details-top-social-box">
                  <p>Поделиться:</p>
                  <ul class="ps-1 social_link d-flex align-items-center">
                    <li><a href="https://vk.com/rabid_duck_1" class="active" target="_blank"><i
                        class="fab fa-vk"></i></a> </li>
                    <li> <a href="https://www.twitch.tv/rab1d_ru" target="_blank"><i
                        class="fab fa-twitch"></i></a> </li>
                    <li> <a href="https://t.me/Rab1Dok" target="_blank"><i
                        class="fab fa-telegram"></i></a> </li>
                  </ul>
                </div>
                <div class="checked-box">
                  <form>
                    <div class="form-group"> <input type="checkbox" id="html"> <label for="html">Я согласен со всеми правилами и условиями магазина</label> </div>
                  </form>
                </div>
                  <ul class="shop-details-top-category-tags">
                  <li>Категория: <span>{{ product.category.title }}</span></li>
                  <li>Теги: <span v-for="tag in product.tags">{{tag.title + ', '}} </span></li>
                </ul>
                <ul class="shop-details-top-feature">
                  <li>
                    <div class="icon"> <i class="flaticon-portfolio"></i> </div>
                    <div class="text">
                      <p>Лицензионные ключи от официальных издателей</p>
                    </div>
                  </li>
                  <li>
                    <div class="icon"> <i class="flaticon-truck"></i> </div>
                    <div class="text">
                      <p>Гарантированная техподдержка вашей покупки</p>
                    </div>
                  </li>
                  <li>
                    <div class="icon"> <i class="flaticon-security"></i> </div>
                    <div class="text">
                      <p>Регулярные акции, скидки и бонусы</p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>

    </section>
    <!--End Shop Details Top-->
    <!-- productdrescription-tabStart -->
    <section class="product pt-60 pb-60 wow fadeInUp overflow-hidden ">
      <div class="container">
        <div class="row wow fadeInUp animated">
          <div class="col-12">
            <ul class="nav product-details-nav nav-one nav-pills justify-content-center" id="pills-tab-two"
                role="tablist">
              <li class="nav-item" role="presentation"> <button class="nav-link active"
                                                                id="pills-description-tab" data-bs-toggle="pill" data-bs-target="#pills-description"
                                                                type="button" role="tab" aria-controls="pills-description" aria-selected="true">
                Описание </button> </li>
              <li class="nav-item" role="presentation"> <button class="nav-link" id="pills-additional-tab"
                                                                data-bs-toggle="pill" data-bs-target="#pills-additional" type="button" role="tab"
                                                                aria-controls="pills-additional" aria-selected="false"> Сюжет </button> </li>
              <li class="nav-item" role="presentation"> <button @click.prevent="getReviews" class="nav-link" id="pills-review-tab"
                                                                data-bs-toggle="pill" data-bs-target="#pills-review" type="button" role="tab"
                                                                aria-controls="pills-review" aria-selected="false"> Отзывы </button> </li>
            </ul>
          </div>
        </div>
        <div class="row wow fadeInUp animated" v-if="product">
          <div class="tab-content" id="pills-tabContent-two">
            <div class="tab-pane fade show active" id="pills-description" role="tabpanel"
                 aria-labelledby="pills-description-tab">
              <div class="product-drescription" >
                <h4> Детали продукта:</h4>
                  <p v-html="product.description"></p>
                <div class="row align-items-center">
                  <div class="col-lg-4 mt-30 ">
                    <div class="thumb"> <img
                        :src="product.image_url"
                        alt=""> </div>
                  </div>
                  <div class="col-lg-8 mt-30">
                    <h4>Specification:</h4>
                    <ul class="drescription-list">
                      <li> 1. Adipiscing hac cubilia, fermentum ipsum auctor parturient tempus
                        lobortis fermentum. </li>
                      <li> 2. Euismod disagree soler imperdiet vehicula pede eros ipsum cras mi
                        feugiat. </li>
                      <li> 3. Rhoncus consequat phasellus donec suspendisse scelerisque facilisis
                        gravida porttitor turpis. </li>
                      <li> 4. Consequat phasellus donec suspendisse scelerisque facilisis gravida
                        porttitor turpis. </li>
                      <li> 5. Consequat phasellus donec suspendisse scelerisque facilisis gravida
                        porttitor </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="pills-additional" role="tabpanel"
                 aria-labelledby="pills-additional-tab">
              <div class="product-drescription" >
                  <div v-html="product.content" >
                  </div>
              </div>
            </div>
            <div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
              <div class="product-drescription">
                <div class="review-single pt-0 hed">
                    <span>Рейтинг({{(totalRate).toFixed(2)}})</span>
                  <div class="ratting">
                      <i class="fas fa-star" :class="{'active-star': totalRate >= 1}"></i>
                      <i class="fas fa-star" :class="{'active-star': totalRate >= 2}"></i>
                      <i class="fas fa-star" :class="{'active-star': totalRate >= 3}"></i>
                      <i class="fas fa-star" :class="{'active-star': totalRate >= 4}"></i>
                      <i class="fas fa-star" :class="{'active-star': totalRate >= 5}"></i>
                      <span class="ps-2">Основано на {{reviews.length}} отзывов</span> </div>
                </div>
                <div class="review-single" v-for="review in reviews">
                  <div class="left">
                    <div class="ratting">
                        <i class="flaticon-star-1" :class="{'active-star': getActiveStars(review.score) >= 1}"></i>
                        <i class="flaticon-star-1" :class="{'active-star': getActiveStars(review.score) >= 2}"></i>
                        <i class="flaticon-star-1" :class="{'active-star': getActiveStars(review.score) >= 3}"></i>
                        <i class="flaticon-star-1" :class="{'active-star': getActiveStars(review.score) >= 4}"></i>
                        <i class="flaticon-star-1" :class="{'active-star': getActiveStars(review.score) >= 5}"></i>
                    </div>
                      <span>Пользователь: {{review.name}} (дата: {{ formatDate(review.created_at) }})</span>
                      <h6>{{review.title}}</h6>
                      <p> {{review.description}} </p>
                  </div>
                </div>
                <div class="review-from-box mt-30" >
                  <h6 v-if="this.$store.getters.statusUser">Напишите свой отзыв</h6>
                    <h6 v-else>Авторизируйтесь, чтобы оставить свой отзыв!</h6>
                  <form class="review-from" v-if="this.$store.getters.statusUser">
                    <div class="row">
                      <div class="col-lg-12">
                        <div class="ratting-box">
                          <p> Рейтинг </p>
                          <div class="ratting">
                              <i @click.prevent="setRating(1)" class="flaticon-star-1" :class="{'active-star': review.rating >= 1}"></i>
                              <i @click.prevent="setRating(2)" class="flaticon-star-1" :class="{'active-star': review.rating >= 2}"></i>
                              <i @click.prevent="setRating(3)" class="flaticon-star-1" :class="{'active-star': review.rating >= 3}"></i>
                              <i @click.prevent="setRating(4)" class="flaticon-star-1" :class="{'active-star': review.rating >= 4}"></i>
                              <i @click.prevent="setRating(5)" class="flaticon-star-1" :class="{'active-star': review.rating >= 5}"></i>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group"> <label for="name">Имя</label>
                            <input v-model="review.name" type="text" id="name" class="form-control"
                                   placeholder="Евгений">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group"> <label for="email"> Электронная почта </label>
                            <input v-model="review.email" type="text" id="email" class="form-control"
                                   placeholder="qwerty@gmail.com">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group"> <label for="title"> Общее впечатление</label>
                            <input v-model="review.title" type="text" id="title" class="form-control" placeholder="Товар понравился!">
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group m-0"> <label for="description">Описание (максимум 1500 символов)
                        </label>
                            <textarea v-model="review.description" placeholder="Напишите подробнее..."></textarea>
                        </div>
                      </div>
                    </div>
                      <button @click.prevent="sendReview" type="submit" id="review-btn" class="btn--primary style2 ">Отправить отзыв</button>
                  </form>
                </div>
                  <transition name="gratitude" v-show="show_gratitude">
                      <div class="window-gratitude"><b>Спасибо за ваш отзыв :)</b></div>
                  </transition>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section> <!-- productdrescription-tab End -->
    <!-- recent-products Start -->
      <section>
          <h3 class="text-center">Другие продукты</h3>
          <div v-if="!isLoading" class="d-flex justify-content-center">
              <div class="spinner-border " role="status">
                  <span class="visually-hidden">Загрузка...</span>
              </div>
          </div>
          <div id="carouselExampleCaptions" class="carousel slide w-50 m-auto" data-bs-ride="carousel">
              <div class="carousel-indicators">
                  <button type="button" v-for="(product, index) in anotherProducts" :key="index"
                          :data-bs-target="'#carouselExampleCaptions'" :data-bs-slide-to="index" :class="[currentIndex === index ? 'active' : '']"
                          aria-current="true" :aria-label="'Slide'+ (index + 1)"></button>
              </div>
              <div class="carousel-inner" v-if="anotherProducts">
                  <div  v-for="(product, key) in anotherProducts" class="carousel-item" v-bind:class="key === 0 ? 'active' : ''">
                      <img :src="product.image_url" class="'d-block w-100" :alt="product.title">
                      <div class="carousel-caption d-none d-md-block">
                          <a :href="`/products/${product.id}`"><h5 class="text-white">{{product.title}}</h5></a>
                          <p v-if="this.$store.getters.currencyValue === 'rub'">{{ product.price }}.руб</p>
                          <p v-if="this.$store.getters.currencyValue === 'usd'">${{ parseFloat((product.price / 80).toFixed(2)) }}</p>
                          <p v-if="this.$store.getters.currencyValue === 'kzt'">₸{{ parseFloat((product.price * 5.81).toFixed(2)) }}</p>
                      </div>
                  </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"  data-bs-slide="prev">
                  <span class="carousel-control-prev-icon text-black" aria-hidden="true"></span>
                  <span class="visually-hidden">Предыдущий</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"  data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Следующий</span>
              </button>
          </div>

      </section>
      <transition name="fade">
          <div class="alert alert-warning notification" role="alert" v-show="visibleNot">
              <div class="cart-notif" v-show="visibleCart">
                  Товар <router-link to="/cart" class="alert-link text-info">{{notTitle}}</router-link> добавлен в корзину.
              </div>
              <div class="fav-botif" v-show="visibleFav">
                  Товар <router-link to="/favourites" class="alert-link text-info">{{notTitle}}</router-link> добавлен в избранное.
              </div>
          </div>
      </transition>
  </main>
</div>
</template>

<script>
export default {
  name: "Show",
  mounted() {
    $(document).trigger('changed')
    this.getProduct()
  },
  data(){
    return {
      product: null,
        isProductsLoaded: false,
        anotherProducts: [],
        currentIndex: 0,
        isLoading: false,
        review: [
            {rating: 0, score: '', name: '', email: '', title: '', description: ''}
        ],
        reviews: [],
        totalRate: 0,
        errors: [
            {rating: '', score: '', name: '', email: '', title: '', description: ''}
        ],
        show_gratitude: false,
        notTitle: '',
        visibleNot: false,
        visibleFav: false,
        visibleCart: false,
        qty_buy: 1,
        sku: 0
    }
  },
    created() {
        window.addEventListener('scroll', this.scrollMethod)
        this.sku = Math.floor(Math.random() * (11111 - 999999) + 999999)
    },
    computed: {
        qtyBuyValue(){
            return typeof this.qty_buy === 'number' && this.qty_buy >= 1 ? this.qty_buy : 1;
        }
    },
    methods: {
    getProduct(){
      this.axios.get(`/api/products/${this.$route.params.id}`)
          .then(res => {
            this.product = res.data.data;
              this.axios.get('/api/listReviews/'+res.data.data.id)
                  .then(res => {
                      this.reviews = res.data
                      if (this.reviews) this.totalRate = this.reviews.reduce((score, review) => score + review.score / this.reviews.length, 0);
                  })
          })
          .finally(v => {
            $(document).trigger('changed')
          })
    },
        qtuPlus(product){
            if (this.qty_buy > product.count || this.qty_buy === product.count){
                alert('Столько товаров нет! Всего: '+product.count+"шт.")
                this.qty_buy = product.count
                return;
            } else {
                if (parseInt(this.qty_buy) === parseInt(product.count)){
                    console.log('dadada')
                    return;
                }
                else{
                    this.qty_buy++
                }
            }
        },
        qtyMinus(){
            if(typeof this.qty_buy === 'number' && this.qty_buy >= 1){
                this.qty_buy--;
            }
        },
    AddToCart(product){
        let qty = parseInt($('.qtyValue').val(), 10);
        if (qty > product.count) {
            $('.qtyValue').val(product.count)
            return alert('Такого количества товаров нет! Всего товаров: ' + product.count)
        }
        let cart = this.$store.state.cart;
        this.visibleNot = true;
        this.visibleCart = true;
        this.notTitle = product.title;

        let newProduct = [
            {
                "id": product.id,
                "image_url": product.image_url,
                "title": product.title,
                "price": product.price,
                "qty": qty,
                'count': product.count
            }
        ];

        if (!cart) {
            this.$store.commit('ADD_TO_CART', newProduct);
        } else {
            // обновление корзины в хранилище из состояния хранилища
            this.$store.commit('ADD_TO_CART', newProduct);
        }
        setTimeout(() => {
            this.visibleNot = false;
            this.visibleCart = false;
        }, 3000)
    },
        addToFav(){
            let fav = this.$store.state.favourites;
            this.visibleNot = true;
            this.visibleFav = true;
            this.notTitle = this.product.title;

            let newProduct = [
                {
                    "id": this.product.id,
                    "image_url": this.product.image_url,
                    "title": this.product.title,
                    "price": this.product.price,
                    "qty": 1,
                    "is_published": this.product.is_published,
                }
            ];

            if (!fav) {
                this.$store.commit('ADD_TO_FAVOURITES', newProduct);
            } else {
                // обновление корзины в хранилище из состояния хранилища
                this.$store.commit('ADD_TO_FAVOURITES', newProduct);
            }
            setTimeout(() => {
                this.visibleNot = false;
                this.visibleFav = false;
            }, 3000)
        },
    getProductsAnother(page = 1){
        this.axios.post('/api/products', {
            'filterList': this.filterList,
            'categories': this.categories,
            'prices': this.prices,
            'tags': this.tags,
            'page': page
        })
            .then(res => {
                this.isLoading = false;
                this.anotherProducts = res.data.data;
            })
            .then(v => {
                this.isLoading = true;
            })
            .finally(v => {
                $(document).trigger('changed')
            })
    },
    scrollMethod(){
        if (window.scrollY > 1000 && !this.isProductsLoaded){
            this.getProductsAnother();
            this.isProductsLoaded = true;
        }
    },
    sendReview(){
        document.getElementById('review-btn').setAttribute('disabled', "");
        if (this.review.rating && this.review.name && this.review.email && this.review.title && this.review.description){
            this.axios.post('/api/review', {
                'product_id': this.product.id,
                'score': this.review.rating,
                'name': this.review.name,
                'email': this.review.email,
                'title': this.review.title,
                'description': this.review.description
            })
                .then(res => {
                    this.review.rating = 0
                    this.review.name = ''
                    this.review.email = ''
                    this.review.title = ''
                    this.review.description = ''
                    this.show_gratitude = true

                    setTimeout(() => {
                        this.show_gratitude = false
                    }, 3000)
                })

        }else{
            alert('Заполните все поля!')
        }
        document.getElementById('review-btn').removeAttribute('disabled');

    },
    setRating(num){
        this.review.rating = num;
    },
    getReviews(){
        this.axios.get('/api/listReviews/'+this.product.id)
            .then(res => {
                this.reviews = res.data
                if (this.reviews) this.totalRate = this.reviews.reduce((score, review) => score + review.score / this.reviews.length, 0);
        })
    },
    formatDate(dateTimeString){
        const date = new Date(dateTimeString);
        const options = {
            year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric'
        };
        return date.toLocaleString('ru-RU', options);
    },
    getActiveStars(score) {
        return Math.floor(score);
    },
  }
}
</script>

<style scoped>
.thumb{
    min-width: 100%;
    min-height: 100%;
}
.carousel-control-next, .carousel-control-prev {
    background-color: #464646;
    width: 4%;
}
.carousel-item img{
    max-height: 400px;
}
.active-star:before{
    color: #f69c63;
}
.ratting i{
    color: black;
}
.product-drescription .review-single .ratting i{
    margin-bottom: 3px;
}
.window-gratitude{
    position: fixed;
    top: 500px;
    left: 500px;
    background-color: linen;
    width: 400px;
    height: 70px;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1111;
}
.gratitude-enter-active, .gratitude-leave-active{
    transition: all .3s ease;
}
.gratitude-enter, .gratitude-leave-to{
    opacity: 0;
    transform: translateY(100%);
}
.gratitude-enter-to, .gratitude-leave{
    opacity: 1;
    transform: translateY(0);
}
.notification{
    position: fixed;
    bottom: 0;
    right: 0;
    z-index: 11;
}
.fade-enter-active, .fade-leave-active {
    transition: all .3s ease;
}
.fade-enter, .fade-leave-to {
    opacity: 0;
    transform: translateY(100%);
}
.fade-enter-to, .fade-leave {
    opacity: 1;
    transform: translateY(0);
}
.carousel-caption{
    background-color: black;
    opacity: 0.8;
    border-radius: 20px;
}
</style>
