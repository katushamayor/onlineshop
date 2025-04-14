<template>
<div>
  <main class="overflow-hidden">

    <!-- newsLetter_popup Start -->
    <button data-mfp-src="#newsLetter-popup" class="modal-btn d-none"></button>
    <div id="newsLetter-popup" class="mfp-hide p-4" role="dialog">
      <div class="row align-items-center justify-content-sm-between">
        <div class="col-lg-5 d-lg-block d-none">
          <div class="newsLetter-popup__thumb imgenews">
            <img src="assets/images/home-three/products-1.jpg" alt="newsletter">
          </div>
        </div>
        <div class="col-lg-7 col-md-8 col-sm-10">
          <div class="newsLetter-popup__content mb-4">
            <div class="text-center"> <router-link to="/" class="logo"> <img
                src="/images/Logo.png" alt="logo"> </router-link>
              <h2> Присоединяйтесь <span>к нам.</span> </h2>
              <p> Подпишитесь, чтобы получать новости от Capigame</p>
            </div>
            <form action="#0" class="newsLetter-popup__subscrib-form">
              <div class="input_box"> <input type="email" placeholder="Ваша почта..."
                                             name="email"> <button type="submit" class="subscribe_btn"> Подписаться </button> </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- newsLetter-one style-two Start -->
    <section class="newsLetter-one border-0 style-two pt-60 pb-60 overflow-hidden">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="newsLetter-one__content-box d-flex align-items-center justify-content-md-start justify-content-center wow fadeInUp animated"
                 data-wow-delay="0.1s">
              <div class="thumb"> <img src="src/assets/images/home-two/envalop.png" alt=""> </div>
              <h3 class="t36"> <span>Присоединяйтесь </span></h3>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="newsLetter-one__content-box d-flex align-items-center justify-content-md-start justify-content-center wow fadeInUp animated "
                 data-wow-delay="0.2s">
              <h6 class="text-md-start text-center"> Подпишитесь на нашу еженедельную рассылку новостей для получения всех
                  последних обновлений </h6>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="newsLetter-one__content-box three d-flex align-items-center justify-content-md-start justify-content-center wow fadeInUp animated"
                 data-wow-delay="0.3s">
              <form action="#0" class="form">
                <div class="newsLetter-one__subscribe-box"> <input type="email" placeholder="Email address" name="email">
                    <button type="submit" class="subscrib-btn"> Подпишись </button> </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- newsLetter-one style-two End -->
  </main>
</div>
</template>

<script>
export default {
  name: "Index",
  mounted(){
    $(document).trigger('changed')
  }
}
</script>

<style scoped>

</style>
