<template>
<div>
  <main class="overflow-hidden ">
    <!--Start Breadcrumb Style2-->
    <div class="breadcrumb-area" style="background-image: url('assets/images/logo/logo.png');">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="breadcrumb-content pb-60 text-center wow fadeInUp animated">
              <h2>Страница магазина</h2>
              <div class="breadcrumb-menu">
                <ul>
                  <li><router-link to="/main"><i class="flaticon-home pe-2"></i>Главная</router-link></li>
                  <li> <i class="flaticon-next"></i> </li>
                  <li class="active">Страница магазина</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--End Breadcrumb Style2-->
    <!--Start Product Categories One-->
    <section class="product-categories-one pb-60">
      <div class="container">
        <div class="row wow fadeInUp animated">
          <div class="col-xl-12">
            <div class="product-categories-one__inner">
              <ul>

                <li> <router-link to="/myAccount" class="img-box">
                  <div class="inner"> <img src="assets/images/logo/logo.png" alt="" /> </div>
                </router-link>
                  <div class="title"> <router-link to="/myAccount">
                    <h6>Аккаунт</h6>
                  </router-link> </div>
                </li>
                <li> <router-link to="/about" class="img-box">
                  <div class="inner"> <img src="assets/images/logo/logo.png" alt="" /> </div>
                </router-link>
                  <div class="title"> <router-link to="/about">
                    <h6>О нас</h6>
                  </router-link> </div>
                </li>
                <li> <router-link to="/contacts" class="img-box">
                  <div class="inner"> <img src="assets/images/logo/logo.png" alt="" /> </div>
                </router-link>
                  <div class="title"> <router-link to="/contacts">
                    <h6>Контакты</h6>
                  </router-link> </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End Product Categories One-->
    <!--Start product-grid-->
    <div class="product-grid pt-60 pb-120">
      <div class="container">
        <div class="row gx-4">
          <div class="col-xl-3 col-lg-4 filtres">
            <div class="shop-grid-sidebar"> <button class="remove-sidebar d-lg-none d-block"> <i
                class="flaticon-cross"> </i> </button>
              <div class="sidebar-holder">
                <search-modal :search="searchTitle" @search-products="searchProduct"></search-modal>
                <div class="single-sidebar-box mt-30 wow fadeInUp animated ">
                  <h4>Выберите категории</h4>
                  <div class="checkbox-item">
                    <form>
                      <div v-for="category in filterList.categories" class="form-group"> <input :value="category.id" v-model="categories" type="checkbox" :id="category.id"> <label
                          :for="category.id">{{ category.title }}</label> </div>
                    </form>
                  </div>
                </div>

                <div class="single-sidebar-box mt-30 wow fadeInUp animated">
                  <h4>Фильтр по цене</h4>
                  <div class="slider-box">
                    <div id="price-range" class="slider"></div>
                    <div class="output-price"> <label for="priceRange">Цена:</label> <input
                        type="text" id="priceRange" readonly> </div>
                    <button  class="filterbtn" type="submit"
                    @click.prevent="filterProductBtn"> Фильтр </button>
                  </div>
                </div>
                <div class="single-sidebar-box mt-30 wow fadeInUp animated pb-0 border-bottom-0 ">
                  <h4>Теги </h4>
                  <ul class="popular-tag">
                    <li v-for="tag in filterList.tags"><a :href="`#${tag.id}`" @click.prevent="addTags(tag.id)">{{tag.title}}</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-9 col-lg-8">
            <div class="row">
              <div class="col-xl-12">
                <div
                    class="shop-grid-page-top-info p-0 justify-content-md-between justify-content-center">
                  <div class="left-box wow fadeInUp animated">
                    <p>Показано {{pagination.from}}–{{ pagination.to }} из {{ pagination.total }} результатов </p>
                  </div>
                  <div
                      class="right-box justify-content-md-between justify-content-center wow fadeInUp animated">
                    <div class="short-by">
                      <div class="select-box sort-select">
                        <select class="wide" id="sorting" v-model="selectedSort" @change="sortedList">
                          <option v-for="sort in sortArray" :value="sort.key" :selected="sort.key === 'all' ? true : false">{{sort.name}} </option>
                        </select>
                      </div>
                      <div> </div>

                    </div>

                    <div class="product-view-style d-flex justify-content-md-between justify-content-center">
                      <ul class="nav nav-pills" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <button class="nav-link active" id="pills-grid-tab"
                                  data-bs-toggle="pill" data-bs-target="#pills-grid" type="button"
                                  role="tab"  aria-selected="true">
                            <i class="flaticon-grid"></i>
                          </button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link"  id="pills-list-tab" data-bs-toggle="pill"
                                  data-bs-target="#pills-list" type="button" role="tab"
                                  aria-selected="false">
                            <i class="flaticon-list"></i>
                          </button>
                        </li>
                      </ul>
                      <button class="slidebarfilter d-lg-none d-flex"><i  class="flaticon-edit"></i></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                <div class="tab-content" id="pills-tabContent">
                  <div class="tab-pane fade show active" id="pills-grid" role="tabpanel"
                       aria-labelledby="pills-grid-tab">
                    <div class="row" v-if="products">
                        <div v-if="!isLoadedProduct" class="d-flex justify-content-center">
                            <div class="spinner-border " role="status">
                                <span class="visually-hidden">Загрузка...</span>
                            </div>
                        </div>
                      <div class="col-xl-4 col-lg-6 col-6 " v-for="product in products">
                        <div class="products-three-single w-100  mt-30">
                          <div class="products-three-single-img">
                              <a :href="`/products/${product.id}`" class="d-block">
                                  <img :src="product.image_url ?? 'storage/'+product.preview_image" class="first-img" alt="" />
                                      <img src="assets/images/logo/logo.png" alt="" class="hover-img" />
                          </a>
                            <div class="products-grid-one__badge-box d-flex flex-row flex-wrap platforms" v-if="product.platforms">
                                <span class="bg_base badge new"  v-for="platform in product.platforms">{{platform.title}}</span>
                            </div>
                              <div class="products-grid-one__badge-box d-flex flex-row platforms" v-if="!product.platforms">
                                  <span class="bg_base badge new">New</span>
                              </div>
                              <a v-if="product.is_published" @click.prevent="addToCart(product, true)"  class="addcart btn--primary style2">
                              Добавить в корзину </a>
                              <a v-else class="addcart btn--primary style2">
                                  Товара пока нет :( </a>
                            <div class="products-grid__usefull-links">
                              <ul>
                                <li><a @click.prevent="addToFav(product)"> <i class="flaticon-heart">
                                </i> <span>
                                                                            Избранное</span> </a> </li>

                                <li><a class="popup_link" :href="`#popup${product.id}`" @click="getProduct(product.id)"> <i
                                    class="flaticon-visibility"></i>
                                  <span> Открыть</span>
                                </a> </li>
                              </ul>
                            </div>
                          </div>
                            <div :id="`popup${product.id}`" class="product-gird__quick-view-popup mfp-hide">
                              <div v-if="popupProduct" class="container">
                                <div class="row justify-content-between">
                                  <div class="col-lg-6">
                                    <div class="quick-view__left-content">
                                        <div class="single-product-box one">
                                            <div class="big-product single-product-one slider-for">
                                                <div v-for="image in product.product_images">
                                                    <div class="single-item">
                                                        <img :src="image.url" :alt="product.title" class="single-img-popup">
                                                        <div class="products-grid-one__badge-box d-flex flex-row flex-wrap platforms" v-if="product.platforms">
                                                            <span class="bg_base badge new"  v-for="platform in product.platforms">{{platform.title}}</span>
                                                        </div>
                                                        <a href="#0" @click.prevent="addToFav" class="love"> <i class="flaticon-like"></i> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="navholder" >
                                                <div class="product-slicknav single-product-one-nav slider-nav">
                                                    <div v-for="image in product.product_images">
                                                        <span class="single-item"><img :src="image.url" alt=""></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="col-lg-6">
                                    <div class="popup-right-content">
                                      <h3>{{popupProduct.title}}</h3>
                                      <i>{{popupProduct.category.title}}</i>
                                      <div class="ratting">
                                          <i class="fas fa-star" :class="{'active-star': totalRate >= 1}"></i>
                                          <i class="fas fa-star" :class="{'active-star': totalRate >= 2}"></i>
                                          <i class="fas fa-star" :class="{'active-star': totalRate >= 3}"></i>
                                          <i class="fas fa-star" :class="{'active-star': totalRate >= 4}"></i>
                                          <i class="fas fa-star" :class="{'active-star': totalRate >= 5}"></i>
                                        <span>{{parseFloat((totalRate).toFixed(2))}}</span> </div>
                                      <p class="text"> {{popupProduct.description}}
                                      </p>
                                      <div class="price">
                                        <h2 v-if="this.$store.getters.currencyValue === 'rub'"> {{ popupProduct.price }}.руб
                                          <del v-if="popupProduct.old_price > 0"> {{popupProduct.old_price}}.руб</del>
                                        </h2>
                                          <h2 v-if="this.$store.getters.currencyValue === 'usd'"> ${{ (popupProduct.price / 76).toFixed(2) }}
                                          <del v-if="popupProduct.old_price > 0"> ${{(popupProduct.old_price / 76).toFixed(2)}}</del>
                                        </h2>
                                          <h2 v-if="this.$store.getters.currencyValue === 'kzt'"> ₸{{ (popupProduct.price * 5.81).toFixed(2)}}
                                          <del v-if="popupProduct.old_price > 0"> ₸{{(popupProduct.old_price * 5.81).toFixed(2)}}</del>
                                        </h2>
                                        <h6 v-if="popupProduct.is_published == 1" style="color: green;"> В наличии</h6>
                                        <h6 v-else style="color: red;"> Нет в наличии</h6>
                                      </div>
                                      <div class="add-product">
                                        <h6>Количество:</h6>
                                        <div class="button-group">
                                            <div class="qtySelector text-center d-flex justify-content-around">
                                                <span @click.prevent="qtyMinus"><i class="flaticon-minus"></i> </span>
                                                <input v-model="qtyBuyValue" type="number" min="1" :max="product.count" class="qtyValue p-0 text-center" />
                                                <span @click.prevent="qtuPlus(product)"><i  class="flaticon-plus"></i> </span>
                                            </div>
                                          <button @click.prevent="addToCart(product)"
                                                  :class="{'btn style2 disabled-btn': !popupProduct.is_published, 'btn--primary': popupProduct.is_published}"
                                                  :disabled="!popupProduct.is_published"> Добавить в корзину </button>
                                        </div>
                                      </div>
                                      <div class="payment-method"> <a href="#0"> <img
                                          src="src/assets/images/payment_method/method_1.png"
                                          alt=""> </a>
                                        <a href="#0"> <img
                                            src="src/assets/images/payment_method/method_2.png"
                                            alt=""> </a> <a href="#0"> <img
                                            src="src/assets/images/payment_method/method_3.png"
                                            alt=""> </a>
                                        <a href="#0"> <img
                                            src="src/assets/images/payment_method/method_4.png"
                                            alt=""> </a> </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          <div class="products-three-single-content text-center" >
                            <span v-if="product.category">{{ product.category.title }}</span>
                            <h5><router-link :to="{name: 'products.show', params: {id: product.id}}"> {{ product.title }}</router-link>
                            </h5>
                         <p v-if="this.$store.getters.currencyValue === 'rub'"><del v-if="product.old_price">{{product.old_price}}.руб</del>{{ product.price }}.руб</p>
                          <p v-if="this.$store.getters.currencyValue === 'usd'"><del v-if="product.old_price">${{(product.old_price / 76).toFixed(2)}}</del>${{ (product.price / 76).toFixed(2) }}</p>
                          <p v-if="this.$store.getters.currencyValue === 'kzt'"><del v-if="product.old_price">₸{{(product.old_price * 5.81).toFixed(2)}}</del>₸{{ (product.price * 5.81).toFixed(2)}}</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12 d-flex justify-content-center wow fadeInUp animated">
                <ul class="pagination text-center" >
                  <li class="next" v-if="pagination.current_page !== 1">
                    <a @click.prevent="getProducts(pagination.current_page - 1)" href="#0"><i class="flaticon-left-arrows" aria-hidden="true"></i>
                    </a></li>
                  <li v-for="paginate in pagination.links">
                    <template v-if="Number(paginate.label) && (pagination.current_page - paginate.label < 2 && pagination.current_page - paginate.label > -2)
                    || Number(paginate.label) === 1 || Number(paginate.label) === pagination.last_page
">
                    <a @click.prevent="getProducts(paginate.label)" href="#0" :class="paginate.active ? 'active' : ''">{{paginate.label}}</a>
                    </template>
                    <template v-if="Number(paginate.label) && pagination.current_page - paginate.label === 2 && pagination.current_page !== 3
                              || Number(paginate.label) && pagination.current_page !== pagination.last_page -2 && (pagination.current_page - paginate.label === -2)
">
                      <a>...</a>
                    </template>
                  </li>
                  <li class="next"  v-if="pagination.current_page !== pagination.last_page" >
                    <a @click.prevent="getProducts(pagination.current_page + 1)" href="#0"><i class="flaticon-next-1" aria-hidden="true"></i> </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <transition name="fade">
          <div class="alert alert-warning notification" role="alert" v-show="this.$store.state.visibleNot">
              <div class="cart-notif" v-show="this.$store.state.visibleCart">
                  Товар <router-link to="/cart" class="alert-link text-info">{{notTitle}}</router-link> добавлен в корзину.
              </div>
              <div class="fav-botif" v-show="this.$store.state.visibleFav">
                  Товар <router-link to="/favourites" class="alert-link text-info">{{notTitle}}</router-link> добавлен в избранное.
              </div>
          </div>
      </transition>
    <!--End product-grid-->
  </main>
</div>
</template>

<script>

import SearchModal from "../../components/SearchModal";
export default {
  name: "Index",
    components: {SearchModal},
    beforeCreate() {
        if (!localStorage.getItem('cart')){
            localStorage.setItem('cart', '[]')
        }
    },
    mounted() {
    $(document).trigger('changed')
        this.getFilterList()
    this.getProducts()
  },
    computed: {
        qtyBuyValue(){
            return typeof this.qty_buy === 'number' && this.qty_buy >= 1 ? this.qty_buy : 1;
        }
    },
  data(){
    return {
      products: [],
      popupProduct: null,
      filterList: [],
      categories: [],
      prices: [],
      tags: [],
      sortArray: [
        {key: 'all','name' : 'Все'},
        {key: 'priceCreasing','name' : 'Цена по возрастанию'},
        {key: 'priceDecreasing','name' : 'Цена по убыванию'},
        {key: 'dateNew','name' : 'Дата к новым'}
      ],
      selectedSort: "all",
      pagination: [],
      totalPrice: 0,
        isLoadedProduct: false,
        searchTitle: '',
        notTitle: '',
        qty_buy: 1,
        reviews: [],
        totalRate: 0,
    }
  },
  methods: {
      next(id, url){
          document.querySelector('.gondor').setAttribute('id', 'tabb'+id);
          document.querySelector('.gondor').setAttribute('aria-labelledby', 'ui-id-'+id);
          document.querySelector('.popup-product-single-image img').setAttribute('src', url);
          let popupLiList = document.querySelectorAll('.popup-li li');
          popupLiList.forEach(function(element) {
              element.style.display = 'block';
          });
      },
    addToCart(product, isSingle){
        let qty = isSingle ? 1 : this.qty_buy;

        if (qty > product.count) {
            return alert('Такого количества товаров нет! Всего товаров: ' + product.count)
        }

        let cart = this.$store.state.cart;
        this.qty_buy = 1;
        this.notTitle = product.title;

        let newProduct = [
            {
                "id": product.id,
                "image_url": product.image_url,
                "title": product.title,
                "price": product.price,
                "count": product.count,
                "qty": qty
            }
        ];

        if (!cart) {
            this.$store.commit('ADD_TO_CART', newProduct);
        } else {
            this.$store.commit('ADD_TO_CART', newProduct);
        }



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
      addToFav(product){
          let fav = this.$store.state.favourites;
          this.notTitle = product.title;

          let newProduct = [
              {
                  "id": product.id,
                  "image_url": product.image_url,
                  "title": product.title,
                  "price": product.price,
                  "qty": 1,
                  "is_published": product.is_published,
              }
          ];

          if (!fav) {
              this.$store.commit('ADD_TO_FAVOURITES', newProduct);
          } else {
              // обновление корзины в хранилище из состояния хранилища
              this.$store.commit('ADD_TO_FAVOURITES', newProduct);
          }
      },
    addTags(id){
      if (!this.tags.includes(id)){
        this.tags.push(id)
      }else{
        this.tags = this.tags.filter(elem => {
          return elem !== id
        })
      }
    },
    filterProductBtn(){
      let prices = $('#priceRange').val();
      this.prices = prices.replace(/[\s+]|[₽]/g, '').split('-');
      this.getProducts()
    },
    sortedList(){
      switch (this.selectedSort){
        case 'all':
            this.products.sort((a,b) => a.id - b.id)
          return;
        case 'priceCreasing':
          this.products.sort((a,b) => a.price - b.price);
              break;
        case 'priceDecreasing':
            this.products.sort((a,b) => b.price - a.price)
          break;
        case 'dateNew':
          this.products.sort((a,b) => new Date(b.date_added) - new Date(a.date_added))
          break;
      }

    },
    getProducts(page = 1){
      this.axios.post('/api/products', {
        'filterList': this.filterList,
        'categories': this.categories,
        'prices': this.prices,
        'tags': this.tags,
        'page': page
      })
          .then(res => {
              this.products = res.data.data;
              this.pagination = res.data.meta;
          })
          .finally(v => {
        $(document).trigger('changed')
              this.isLoadedProduct = true;
      })
    },
    getProduct(id){
      this.axios.get(`/api/products/${id}`)
          .then(res => {
              this.popupProduct = res.data.data;

              this.axios.get('/api/listReviews/'+id)
                  .then(res => {
                      this.reviews = res.data
                      if (this.reviews) this.totalRate = this.reviews.reduce((score, review) => score + review.score / this.reviews.length, 0);
                  })
          })
          .finally(v => {
            $(document).trigger('changed')
          })
    },
    getFilterList(){
      this.axios.get('/api/products/filters')
          .then(res => {
            this.filterList = res.data;
             if ($("#price-range").length) {
               $("#price-range").slider({
                 range: true,
                 min: this.filterList.price.min,
                 max: this.filterList.price.max,
                 values: [this.filterList.price.min, this.filterList.price.max],
                 slide: function (event, ui) {
                   $("#priceRange").val("₽" + ui.values[0] + " - ₽" + ui.values[1]);
                 }
               });
               $("#priceRange").val("₽" + $("#price-range").slider("values", 0) + " - ₽" + $("#price-range").slider("values", 1));
             }
          })
          .finally(v => {
            $(document).trigger('changed');
          })
    },
      searchProduct(someData){
          if (someData){
              this.axios.post('/api/search', {
                  'title': someData.title
              })
                  .then(res => {
                      this.products = res.data;
                  })
          }
      },
  },
}
</script>
<style scoped>
.product-gird__quick-view-popup{
    z-index: 22;
}
.filtres{
    z-index: 11;
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

.list-popup{
    width: 330px;
}
.list-popup li, .list-popup a{
    height: 70px !important;
}
.list-popup img{
    height: 100%;
    width: 100%;
}
.prev, .next{
    z-index: 111;
}
.popup-product-main-image-box{
    width: 445px;
}
.active-star:before{
    color: #f69c63;
}
.ratting i{
    color: black;
}
.single-img-popup{
    height: 500px;
}
</style>
