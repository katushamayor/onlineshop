<template>
    <form class="footer-default__subscrib-form m-0 p-0 wow fadeInUp animated">
        <div class="footer-input-box p-0 ">
            <input v-model="title" type="search" placeholder="Поиск..." name="search" @input="getPoruducts" >
            <button @click.prevent="searchProducts" type="submit" class="subscribe_btn"> <i class="flaticon-magnifying-glass"></i></button>
        </div>
    </form>
    <div class="row" v-show="visible">
        <ul class="dropdown-menu dropdown-menu-left d-flex flex-column" aria-labelledby="navbarDropdownMenuLink">
            <li><hr class="dropdown-divider" /></li>
            <li class="d-flex justify-content-center align-items-center" v-for="product in products">
                <a class="dropdown-item" :href="`/products/${product.id}`"><img :src="`storage/${product.preview_image}`">{{product.title}}</a>
                <span class="text-info" v-if="this.$store.getters.currencyValue === 'rub'">{{product.price}}.руб</span>
                <span class="text-info" v-if="this.$store.getters.currencyValue === 'usd'">${{(product.price / 76).toFixed(2)}}</span>
                <span class="text-info" v-if="this.$store.getters.currencyValue === 'kzt'">₸{{(product.price * 5.81).toFixed(2)}}</span>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    name: "SearchModal",
    emits: ['searchProducts'],
    props: ['search'],
    data() {
        return {
            title: '',
            visible: false,
            products: []
        }
    },
    methods: {
        getPoruducts(){
            if (this.title){
                this.axios.post('/api/search', {
                    'title': this.title
                })
                    .then(res => {
                        this.visible = true;
                        this.products = res.data;
                    })
            }
            else{
                this.visible = false;
            }
        },
        searchProducts(){
            if (this.title){
            this.$emit('searchProducts', {
                title: this.title
                })
                this.visible = false;
            }
        }
    }
}
</script>

<style scoped>
.dropdown-menu{
    padding: 3px;
    min-width: 25rem;
    flex-display: column;
}
.row{
    background-color: #e3e3e3;
    width: 300px;
    min-height: 50px;
    height: auto;
    margin: 0;
}
.dropdown-item img{
    max-height: 50px;
    margin-right: 10px;
}
</style>
