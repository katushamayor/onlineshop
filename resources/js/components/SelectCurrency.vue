<template>
  <select v-model="value" @change="selectedValue">
    <option value="rub">RUB</option>
    <option value="usd">USD</option>
    <option value="kzt">KZT</option>
  </select>
</template>

<script>
export default {
  name: "SelectCurrency",
    data() {
      return {
          value: localStorage.getItem('cur_value') || 'rub'
      }
    },
    mounted() {
      if (localStorage.getItem('cur_value') !== this.value){
          localStorage.setItem('cur_value', this.value)
      }
    },
    watch: {
        '$store.getters.currencyValue': function(curValue){
            this.value = curValue;
        }
    },
    methods: {
      selectedValue(){
          if (this.value !== this.$store.getters.currencyValue){
            this.$store.commit("ADD_CURRENCY_VALUE", this.value)
              this.value = this.$store.getters.currencyValue;
          }
      }
    }
}
</script>

<style scoped>
</style>
