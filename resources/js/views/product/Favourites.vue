<template>
    <main class="overflow-hidden">
        <!--Start Breadcrumb Style2-->
        <section class="breadcrumb-area" style="background-image: url('images/logo.png');">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-content text-center wow fadeInUp animated">
                            <h2>Избранное</h2>
                            <div class="breadcrumb-menu">
                                <ul>
                                    <li><router-link to="/"><i class="flaticon-home pe-2"></i>Главная</router-link></li>
                                    <li> <i class="flaticon-next"></i> </li>
                                    <li class="active">Избранное</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Breadcrumb Style2-->
        <!--Start Wishlist-->
        <section class="wishlist pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 wow fadeInUp animated">
                        <div class="wishlist-table-box">
                            <div class="wishlist-table-outer">
                                <table class="wishlist-table">
                                    <thead class="wishlist-header">
                                    <tr>
                                        <th>Картинка</th>
                                        <th>Название</th>
                                        <th>Цена</th>
                                        <th>Статус</th>
                                        <th>Количество</th>
                                        <th>Удалить</th>
                                    </tr>
                                    </thead>
                                    <tbody v-if="products">
                                    <tr v-for="product in products">
                                        <td>
                                            <div class="wishlist-thumb">
                                                <img :src="product.image_url" :alt="product.title">
                                            </div>
                                        </td>
                                        <td>
                                            <h5>{{ product.title }} </h5>
                                        </td>
                                        <td>
                                            <p class="price" v-if="this.$store.getters.currencyValue === 'rub'">{{ product.price }}.руб</p>
                                            <p class="price" v-if="this.$store.getters.currencyValue === 'usd'">${{ (product.price / 76).toFixed(2)}}</p>
                                            <p class="price" v-if="this.$store.getters.currencyValue === 'kzt'">₸{{ (product.price * 5.81).toFixed(2)}}</p>
                                        </td>
                                        <td>
                                            <p class="instock">{{ product.is_published ? 'В наличии' : "Нет в наличии" }}</p>
                                        </td>
                                        <td class="add-to-cart-btn p-0">
                                            <a v-if="product.is_published" @click.prevent="addToCart(product, true)"  class="addcart btn--primary style2">
                                                Добавить в корзину </a>
                                            <a v-else class="bg-gradient-gray btn--primary disabled-btn">
                                                Товара пока нет :( </a>
                                        </td>
                                        <td class="text-center">
                                            <div class="remove" @click.prevent="removeProduct(product.id)"> <i class="flaticon-cross"></i> </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Wishlist-->
    </main>
</template>

<script>
export default {
    name: "Favorites",
    data() {
        return {
            products: []
        }
    },
    mounted() {
        this.udpdateProducts()
    },
    methods: {
        udpdateProducts(){
            const items = JSON.parse(localStorage.getItem('favour'));
            this.products = items;
        },
        addToCart(product){
            let cart = this.$store.state.cart;
            let newProduct = [
                {
                    "id": product.id,
                    "image_url": product.image_url,
                    "title": product.title,
                    "price": product.price,
                    "qty": product.qty
                }
            ];

            if (!cart) {
                this.$store.commit('ADD_TO_CART', newProduct);
            } else {
                // обновление корзины в хранилище из состояния хранилища
                this.$store.commit('ADD_TO_CART', newProduct);
            }
        },
        removeProduct(id){
            this.products = this.products.filter(product => {
                return product.id !== id
            })
            this.updateCart()
            this.calculateTotal()
            this.$store.dispatch('initializeFav')
        },
        updateCart(){
            localStorage.setItem('favour', JSON.stringify(this.products))
        },
        calculateTotal(){
            this.totalPrice = this.products.reduce((sum, product) => sum + product.price * product.qty, 0)
        }

    }
}
</script>

<style scoped>

</style>
