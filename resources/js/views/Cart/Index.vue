<template>
<div>
  <main class="overflow-hidden ">
    <!--Start Breadcrumb Style2-->
    <section class="breadcrumb-area" style="background-image: url('images/logo.png');">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="breadcrumb-content text-center wow fadeInUp animated">
              <h2>Корзина</h2>
              <div class="breadcrumb-menu">
                <ul>
                  <li><router-link to="/"><i class="flaticon-home pe-2"></i>На главную</router-link></li>
                  <li> <i class="flaticon-next"></i> </li>
                  <li class="active">Корзина</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End Breadcrumb Style2-->
    <!--Start cart area-->
    <section class="cart-area pt-120 pb-120">
      <div class="container">
        <div class="row wow fadeInUp animated" v-if="products.length > 0">
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
            <div class="cart-table-box">
              <div class="table-outer">
                <table class="cart-table">
                  <thead class="cart-header">
                  <tr>
                    <th class="">Название продукта</th>
                    <th class="price">Цена</th>
                    <th>Количество</th>
                    <th>Сумма</th>
                    <th class="hide-me"></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr v-for="product in products">
                    <td>
                      <div class="thumb-box"> <router-link :to="{name: 'products.show', params: {id: product.id}}" class="thumb">
                        <img :src="product.image_url" :alt="product.title">
                      </router-link> <router-link :to="{name: 'products.show', params: {id :product.id }}" class="title">
                        <h5> {{product.title}} </h5>
                      </router-link> </div>
                    </td>
                    <td v-if="this.$store.getters.currencyValue === 'rub'">{{product.price}}.руб</td>
                    <td v-if="this.$store.getters.currencyValue === 'usd'">${{parseFloat((product.price / 76).toFixed(2))}}</td>
                    <td v-if="this.$store.getters.currencyValue === 'kzt'">₸{{parseFloat((product.price * 5.81).toFixed(2))}}</td>
                    <td class="qty">
                      <div class="qtySelector text-center">
                        <span @click.prevent="minusQty(product)" class="decreaseQty"><i class="flaticon-minus"></i> </span>
                        <input type="number" min="1" :max="product.count" class="qtyValue" :value="product.qty" :data-id-count="product.id" disabled />
                        <span @click.prevent="plusQty(product)" class="increaseQty"> <i class="flaticon-plus"></i> </span> </div>
                    </td>
                    <td class="sub-total" v-if="this.$store.getters.currencyValue === 'rub'">{{product.price * product.qty}}.руб</td>
                    <td class="sub-total" v-if="this.$store.getters.currencyValue === 'usd'">${{parseFloat((product.price * product.qty / 76).toFixed(2))}}</td>
                    <td class="sub-total" v-if="this.$store.getters.currencyValue === 'kzt'">₸{{parseFloat((product.price * product.qty * 5.81).toFixed(2))}}</td>
                    <td>
                      <div @click.prevent="removeProduct(product.id)" class="remove"> <i class="flaticon-cross"></i> </div>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
          <div class="d-flex flex-column justify-content-center align-items-center wow fadeInUp animated" v-else>
              <img src="images/cart.png" alt="Корзина" width="300">
              <h2>Здесь будут ваши добавленные товары</h2>
          </div>
        <div class="row">
          <div class="col-xl-12">
            <div class="cart-button-box">
              <div class="apply-coupon wow fadeInUp animated">
                <div class="apply-coupon-input-box mt-30 "> <input type="text" name="coupon-code"
                                                                   value="" placeholder="Промокод"> </div>
                <div class="apply-coupon-button mt-30"> <button class="btn--primary style2"
                                                                type="submit">Применить</button> </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row pt-120">
          <div class="col-xl-6 col-lg-7 wow fadeInUp animated">
            <div class="cart-total-box">
              <div class="inner-title">
                <h3>Итог корзины</h3>
              </div>
            </div>
          </div>
        </div>
        <div class="row mt--30">
          <div class="col-xl-6 col-lg-5 wow fadeInUp animated">
            <div class="cart-check-out mt-30">
              <h3>Чек</h3>
              <ul class="cart-check-out-list">
                <li>
                  <div class="left">
                    <p>Промежуточный итог</p>
                  </div>
                  <div class="right">
                    <p v-if="this.$store.getters.currencyValue === 'rub'">{{totalPrice}}.руб</p>
                    <p v-if="this.$store.getters.currencyValue === 'usd'">${{((totalPrice) / 80).toFixed(2)}}</p>
                    <p v-if="this.$store.getters.currencyValue === 'kzt'">₸{{((totalPrice) * 5.81).toFixed(2)}}</p>
                  </div>
                </li>
                <li>
                  <div class="left">
                    <p>Скидка</p>
                  </div>
                  <div class="right">
                    <p v-if="this.$store.getters.currencyValue === 'rub'"><span>Размер:</span> 0.руб</p>
                    <p v-if="this.$store.getters.currencyValue === 'usd'"><span>Размер:</span>$0</p>
                    <p v-if="this.$store.getters.currencyValue === 'kzt'"><span>Размер:</span>₸0</p>
                  </div>
                </li>
                <li>
                  <div class="left">
                    <p>Итоговая цена:</p>
                  </div>
                  <div class="right">
                    <p  v-if="this.$store.getters.currencyValue === 'rub'">{{ totalPrice }}.руб</p>
                    <p  v-if="this.$store.getters.currencyValue === 'usd'">${{ ((totalPrice) / 80).toFixed(2)}}</p>
                    <p  v-if="this.$store.getters.currencyValue === 'kzt'">₸{{ ((totalPrice) * 5.81).toFixed(2)}}</p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-xl-6 col-lg-5 wow fadeInUp animated">
            <div class="cart-check-out mt-30">
              <h3>Заполните данные</h3>
              <ul class="cart-check-out-list">
                <li>
                  <div class="left form-group" v-if="!this.$store.state.user">
                      <label>Электронная почта</label>
                      <input class="form-control" type="text" v-model="email" placeholder="sobaka@gmail.com...">
                      <label>Номер телефона</label>
                      <input v-model="number_phone" type="tel" class="form-control" v-mask="'+7(###)###-##-##'"  maxlength="18">
                  </div>
                    <div v-else>
                        <label>Электронная почта</label>
                        <input class="form-control" type="text" :value="this.$store.state.user.email" disabled>
                        <label>Номер телефона</label>
                        <input class="form-control" type="text" :value="this.$store.state.user.number" disabled>
                    </div>
                </li>
                <li>
                  <div class="left">
                    <p>Сумма</p>
                  </div>
                  <div class="right">
                    <p v-if="this.$store.getters.currencyValue === 'rub'"><span>Размер:</span> {{totalPrice}}.руб</p>
                    <p v-if="this.$store.getters.currencyValue === 'usd'"><span>Размер:</span> ${{((totalPrice) / 80).toFixed(2)}}</p>
                    <p v-if="this.$store.getters.currencyValue === 'kzt'"><span>Размер:</span> ₸{{((totalPrice) * 5.81).toFixed(2)}}</p>
                  </div>
                </li>
                <li>
                    <div class="left"></div>
                    <div class="right">
                        <button @click.prevent="storeOrder" class="btn btn-success" id="buy">Оформить</button>
                    </div>
                </li>
                  <div v-if="isSend" class="d-flex justify-content-center">
                      <div class="spinner-border " role="status">
                          <span class="visually-hidden">Загрузка...</span>
                      </div>
                  </div>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End cart area-->
  </main>
</div>
</template>

<script>
import {mask} from 'vue-the-mask'

export default {
  name: "Cart",
    directives: {mask},
  mounted() {
    $(document).trigger('changed')
    this.getCartProducts()
    this.calculateTotal()
  },
  data (){
    return {
      products: [],
      totalPrice: 0,
        email: '',
        number_phone: '',
        isSend: false
    }
  },
    methods: {
    getCartProducts(){
        this.products = JSON.parse(localStorage.getItem('cart'));
      this.calculateTotal()
    },
    minusQty(product){
      if (product.qty == 0){
        return
      }
      product.qty--;
      this.updateCart()
      this.calculateTotal()
    },
    plusQty(product){
        let countProduct = document.querySelector(`[data-id-count='${product.id}']`).value
        console.log(countProduct);
        if (product.qty > product.count) {
            countProduct = product.count

          this.updateCart()
          this.calculateTotal()
            return alert('Столько товаров нет! Всего: '+product.count+"шт.")
      }
          if (parseInt(countProduct) === parseInt(product.count)) {
              countProduct = product.count
              this.updateCart()
              this.calculateTotal()
              return alert('Столько товаров нет! Всего: '+product.count+"шт.");
          }else{
              product.qty++;
              this.updateCart()
              this.calculateTotal()
          }
      this.updateCart()
      this.calculateTotal()
    },
    removeProduct(id){
        this.products = this.products.filter(product => {
          return product.id !== id
        })
      this.updateCart()
      this.calculateTotal()
      this.$store.commit('CART_ITEMS');
    },
    updateCart(){
      localStorage.setItem('cart', JSON.stringify(this.products))
    },
    calculateTotal(){
        this.totalPrice = this.products.reduce((sum, product) => sum + product.price * product.qty, 0)
    },
      storeOrder(){
          this.isSend = true;
            document.getElementById('buy').setAttribute("disabled", "");
          if(this.$store.state.user){
              this.email = this.$store.state.user.email
              this.number_phone = this.$store.state.user.number
          }
        this.axios.post('/api/orders', {
            'email': this.email,
            'number_phone': this.number_phone,
            'products': this.products,
            'total_price': this.totalPrice,
        })
            .then(res => {
                this.products = [];
                this.updateCart()
                this.calculateTotal()
                this.$store.commit('CART_ITEMS');
                document.getElementById('buy').removeAttribute("disabled");
                this.isSend = false;
                alert('Заказ отправлен вам на почту!');
            })
            .finally(v => {
                $(document).trigger('changed')
            })
      }
  }

}
</script>

<style scoped>
.form-group input{
    margin-bottom: 10px;
}
.form-group label{
    font-weight: 600;
    margin-bottom: 3px;
}
</style>
