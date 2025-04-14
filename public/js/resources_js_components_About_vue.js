"use strict";
(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_components_About_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=script&lang=js":
/*!***********************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=script&lang=js ***!
  \***********************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  name: "About",
  data: function data() {
    return {
      reviews: []
    };
  },
  mounted: function mounted() {
    this.getReviews();
  },
  methods: {
    getReviews: function getReviews() {
      var _this = this;
      this.axios.get('/api/listReviews').then(function (res) {
        _this.reviews = res.data;
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=template&id=fb05e49c&scoped=true":
/*!***************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=template&id=fb05e49c&scoped=true ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render)
/* harmony export */ });
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.esm-bundler.js");

var _withScopeId = function _withScopeId(n) {
  return (0,vue__WEBPACK_IMPORTED_MODULE_0__.pushScopeId)("data-v-fb05e49c"), n = n(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.popScopeId)(), n;
};
var _hoisted_1 = {
  "class": "overflow-hidden"
};
var _hoisted_2 = {
  "class": "breadcrumb-area",
  style: {
    "background-image": "url('images/logo.png')"
  }
};
var _hoisted_3 = {
  "class": "container"
};
var _hoisted_4 = {
  "class": "row"
};
var _hoisted_5 = {
  "class": "col-xl-12"
};
var _hoisted_6 = {
  "class": "breadcrumb-content text-center wow fadeInUp animated"
};
var _hoisted_7 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h2", null, "О нас", -1 /* HOISTED */);
});
var _hoisted_8 = {
  "class": "breadcrumb-menu"
};
var _hoisted_9 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
    "class": "flaticon-home pe-2"
  }, null, -1 /* HOISTED */);
});
var _hoisted_10 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)("Главная");
var _hoisted_11 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("li", null, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
    "class": "flaticon-next"
  })], -1 /* HOISTED */);
});
var _hoisted_12 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("li", {
    "class": "active"
  }, "О нас", -1 /* HOISTED */);
});
var _hoisted_13 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createStaticVNode)("<section class=\"about pt-120 pb-120\" data-v-fb05e49c><div class=\"container\" data-v-fb05e49c><div class=\"row g-0 about__background align-items-center justify-content-lg-between justify-content-center\" data-v-fb05e49c><!--Start About One Img--><div class=\"col-lg-5 col-10 wow fadeInLeft animated\" data-v-fb05e49c><div class=\"about__img\" data-v-fb05e49c><div class=\"img-box\" data-v-fb05e49c><img src=\"images/capi_love.png\" alt=\"\" data-v-fb05e49c></div><div class=\"about__img-inner\" data-v-fb05e49c><img src=\"assets/images/me/me.jpg\" alt=\"\" data-v-fb05e49c></div></div></div><!--End About One Img--><!--Start About One Content--><div class=\"col-lg-7 col-md-11\" data-v-fb05e49c><div class=\"about__content text-center\" data-v-fb05e49c><div class=\"shape1\" data-v-fb05e49c><img src=\"assets/images/shape/about-v1-shape1.png\" alt=\"\" data-v-fb05e49c></div><div class=\"shape2\" data-v-fb05e49c><img src=\"assets/images/shape/about-v1-shape2.png\" alt=\"\" data-v-fb05e49c></div><div class=\"title wow fadeInUp animated\" data-v-fb05e49c><h6 data-v-fb05e49c>О нашей компании</h6><h2 data-v-fb05e49c>Высочайшее качество<br data-v-fb05e49c>Продуктов</h2></div><div class=\"text wow fadeInUp animated\" data-v-fb05e49c><p data-v-fb05e49c>Наш интернет-магазин видеоигр предоставляет широкий ассортимент компьютерных и консольных игр для любителей мира гейминга. Мы работаем только с проверенными производителями и предлагаем игры различных жанров: от экшенов и тиреров до симуляторов и стратегий. У нас есть игры для игровых консолей всех популярных брендов - PlayStation, Xbox. Мы также предоставляем своим клиентам возможность купить игры на ПК и активировать их на популярных платформах Steam, Origin и Uplay. У нас вы найдете самые свежие новинки гейминга, а также любые редкие и старые игры для коллекционеров и энтузиастов. Заказы доставляются мгновенно в любой стране, также вы можете всегда написать нам на почту и мы будем готовы ответить на ваши вопросы и помочь выбрать подходящую игру. С нами покупка игр - это удовольствие!</p></div></div></div><!--End About One Content--></div></div></section>", 1);
var _hoisted_14 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createStaticVNode)("<section class=\"mission\" data-v-fb05e49c><div class=\"shape1\" data-v-fb05e49c><img src=\"assets/images/shape/mission-v1-shape1.png\" alt=\"\" data-v-fb05e49c></div><div class=\"shape2\" data-v-fb05e49c><img src=\"assets/images/shape/mission-v1-shape2.png\" alt=\"\" data-v-fb05e49c></div><div class=\"auto-container container mission__background pt-120 pb-120\" data-v-fb05e49c><div class=\"container\" data-v-fb05e49c><div class=\"row mt--30 align-items-center justify-content-center\" data-v-fb05e49c><!--Start Mission One Content--><div class=\"col-lg-6 col-md-10 mt-30\" data-v-fb05e49c><div class=\"mission__content text-lg-start text-center\" data-v-fb05e49c><h2 class=\"wow fadeInUp animated\" data-v-fb05e49c>Наша миссия</h2><p class=\"wow fadeInUp animated\" data-v-fb05e49c>Наша компания стремится стать самым узнаваемым и надежным интернет-магазином видеоигр, который будет являться первым выбором для геймеров всего мира. Мы продвигаем наш бизнес с целью стать топовым игровым ресурсом, который предоставляет только самые лучшие игры и осуществляет быструю и качественную доставку. Наш главный приоритет - это удовлетворение потребностей наших клиентов, предоставление им отличного сервиса и уверенность в том, что они всегда найдут здесь игры, которые им нужны. Мы стремимся к постоянному улучшению нашего сервиса, расширению ассортимента и созданию лучшего опыта для всех наших клиентов.</p><div class=\"btn-box wow fadeInUp animated\" data-v-fb05e49c></div></div></div><!--End Mission One Content--><!--Start Mission One Img--><div class=\"col-lg-6 mt-30\" data-v-fb05e49c><div class=\"mission__thumb wow fadeInRight animated\" data-v-fb05e49c><img src=\"images/auf.jpg\" alt=\"\" data-v-fb05e49c><div class=\"content-box\" data-v-fb05e49c><div class=\"icon\" data-v-fb05e49c><i class=\"flaticon-quote\" data-v-fb05e49c></i></div><h3 data-v-fb05e49c>Добиться успеха легче, чем его заслужить.</h3><div class=\"author-box\" data-v-fb05e49c><h5 data-v-fb05e49c>Альбер Камю</h5></div></div></div></div><!--End Mission One Img--></div></div></div></section>", 1);
var _hoisted_15 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createStaticVNode)("<section class=\"team pt-120 pb-120\" data-v-fb05e49c><div class=\"container\" data-v-fb05e49c><div class=\"row justify-content-center\" data-v-fb05e49c><div class=\"col-xl-6 col-lg-9\" data-v-fb05e49c><div class=\"section-head text-center wow fadeInUp animated\" data-v-fb05e49c><h2 class=\"title\" data-v-fb05e49c>Мы гордимся тем, что у нас есть команда высококвалифицированных специалистов</h2></div></div></div><div class=\"row justify-content-center\" data-v-fb05e49c><!--Start Team One Single--><div class=\"col-xl-4 col-lg-4 col-md-6 col-10 wow fadeInUp animated\" data-v-fb05e49c><div class=\"team__single mt-30\" data-v-fb05e49c><div class=\"team__single-img\" data-v-fb05e49c><img src=\"assets/images/me/me.jpg\" alt=\"моё фото\" data-v-fb05e49c><div class=\"overlay-text\" data-v-fb05e49c><ul data-v-fb05e49c><li data-v-fb05e49c><h6 data-v-fb05e49c><a href=\"https://vk.com/rabid_duck_1\" target=\"_blank\" data-v-fb05e49c>Вконтакте</a></h6></li><li data-v-fb05e49c><h6 data-v-fb05e49c><a href=\"https://www.twitch.tv/rab1d_ru\" target=\"_blank\" data-v-fb05e49c>Twitch</a></h6></li><li data-v-fb05e49c><h6 data-v-fb05e49c><a href=\"https://t.me/Rab1Dok\" target=\"_blank\" data-v-fb05e49c>Телеграм</a></h6></li></ul></div></div><div class=\"team-content text-center\" data-v-fb05e49c><h2 data-v-fb05e49c><a href=\"#0\" data-v-fb05e49c>Сагитов Максим</a> <span data-v-fb05e49c>Основатель</span></h2></div></div></div><!--End Team One Single--></div></div></section>", 1);
var _hoisted_16 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createStaticVNode)("<div class=\"video-three\" data-v-fb05e49c><div class=\"video-three__bg jarallax\" data-jarallax data-speed=\"0.3\" data-imgPosition=\"50% 50%\" style=\"background-image:url(&#39;images/office.jpg&#39;);\" data-v-fb05e49c></div><div class=\"container\" data-v-fb05e49c><div class=\"row\" data-v-fb05e49c><div class=\"col-xl-12\" data-v-fb05e49c><div class=\"video-three__inner\" data-v-fb05e49c><div class=\"icon wow zoomIn animated\" data-wow-delay=\"300ms\" data-wow-duration=\"1500ms\" data-v-fb05e49c><a class=\"video-popup\" title=\"Video Gallery\" href=\"https://www.twitch.tv/rab1d_ru\" data-v-fb05e49c><i class=\"flaticon-play\" data-v-fb05e49c></i></a> <span class=\"border-animation border-1\" data-v-fb05e49c></span> <span class=\"border-animation border-2\" data-v-fb05e49c></span> <span class=\"border-animation border-3\" data-v-fb05e49c></span></div></div></div></div></div></div>", 1);
var _hoisted_17 = {
  "class": "testimonial-two pt-120 pb-120"
};
var _hoisted_18 = {
  "class": "container"
};
var _hoisted_19 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
    "class": "section-header text-center wow fadeInUp animated"
  }, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", null, "Рекомендации"), /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h2", null, "Довольные клиенты")], -1 /* HOISTED */);
});
var _hoisted_20 = {
  "class": "row"
};
var _hoisted_21 = {
  "class": "col-xl-12 wow fadeInUp animated"
};
var _hoisted_22 = {
  key: 0,
  "class": "testimonial-two__slider"
};
var _hoisted_23 = {
  "class": "testimonial-two__single"
};
var _hoisted_24 = {
  "class": "testimonial-two__single-inner"
};
var _hoisted_25 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
    "class": "testimonial-two__single-img"
  }, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("img", {
    src: "images/user.jpg",
    alt: ""
  })], -1 /* HOISTED */);
});
var _hoisted_26 = {
  "class": "testimonial-two__single-content"
};
var _hoisted_27 = {
  "class": "text"
};
var _hoisted_28 = {
  "class": "client-info"
};
var _hoisted_29 = {
  href: "#"
};
var _hoisted_30 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)();
var _hoisted_31 = /*#__PURE__*/_withScopeId(function () {
  return /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("span", null, "Пользователь", -1 /* HOISTED */);
});

function render(_ctx, _cache, $props, $setup, $data, $options) {
  var _component_router_link = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("router-link");
  return (0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("main", _hoisted_1, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Breadcrumb Style2"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", _hoisted_2, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_3, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_4, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_5, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_6, [_hoisted_7, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_8, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("ul", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("li", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_router_link, {
    to: "/"
  }, {
    "default": (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [_hoisted_9, _hoisted_10];
    }),
    _: 1 /* STABLE */
  })]), _hoisted_11, _hoisted_12])])])])])])]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("End Breadcrumb Style2"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start About One"), _hoisted_13, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("End About One"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Mission One"), _hoisted_14, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("End Mission One"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Team One"), _hoisted_15, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("End Team One"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Video Three"), _hoisted_16, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("End Video Three"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Testimonial Two"), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", _hoisted_17, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_18, [_hoisted_19, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_20, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_21, [$data.reviews ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_22, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Testimonial Two Single"), ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)(vue__WEBPACK_IMPORTED_MODULE_0__.Fragment, null, (0,vue__WEBPACK_IMPORTED_MODULE_0__.renderList)($data.reviews, function (rev) {
    return (0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_23, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_24, [_hoisted_25, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_26, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_27, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", null, "“" + (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)(rev.description) + "”", 1 /* TEXT */)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_28, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("a", _hoisted_29, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h6", null, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)(rev.name), 1 /* TEXT */)]), _hoisted_30, _hoisted_31])])])]);
  }), 256 /* UNKEYED_FRAGMENT */)), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("End Testimonial Two Single")])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("Start Testimonial Two")]);
}

/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!./node_modules/vue-loader/dist/stylePostLoader.js!./node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!./node_modules/vue-loader/dist/stylePostLoader.js!./node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ ((module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0__);
// Imports

var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0___default()(function(i){return i[1]});
// Module
___CSS_LOADER_EXPORT___.push([module.id, "\n.img-box[data-v-fb05e49c]{\n    width: 400px;\n}\n.testimonial-two__single[data-v-fb05e49c]{\n    border-top: 1px solid #b3b3b3;\n    margin-top: 20px;\n}\n", ""]);
// Exports
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!./node_modules/vue-loader/dist/stylePostLoader.js!./node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!./node_modules/vue-loader/dist/stylePostLoader.js!./node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_clonedRuleSet_9_use_1_node_modules_vue_loader_dist_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_clonedRuleSet_9_use_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_style_index_0_id_fb05e49c_scoped_true_lang_css__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !!../../../node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!../../../node_modules/vue-loader/dist/stylePostLoader.js!../../../node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css */ "./node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!./node_modules/vue-loader/dist/stylePostLoader.js!./node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css");

            

var options = {};

options.insert = "head";
options.singleton = false;

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_clonedRuleSet_9_use_1_node_modules_vue_loader_dist_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_clonedRuleSet_9_use_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_style_index_0_id_fb05e49c_scoped_true_lang_css__WEBPACK_IMPORTED_MODULE_1__["default"], options);



/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_css_loader_dist_cjs_js_clonedRuleSet_9_use_1_node_modules_vue_loader_dist_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_clonedRuleSet_9_use_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_style_index_0_id_fb05e49c_scoped_true_lang_css__WEBPACK_IMPORTED_MODULE_1__["default"].locals || {});

/***/ }),

/***/ "./resources/js/components/About.vue":
/*!*******************************************!*\
  !*** ./resources/js/components/About.vue ***!
  \*******************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _About_vue_vue_type_template_id_fb05e49c_scoped_true__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./About.vue?vue&type=template&id=fb05e49c&scoped=true */ "./resources/js/components/About.vue?vue&type=template&id=fb05e49c&scoped=true");
/* harmony import */ var _About_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./About.vue?vue&type=script&lang=js */ "./resources/js/components/About.vue?vue&type=script&lang=js");
/* harmony import */ var _About_vue_vue_type_style_index_0_id_fb05e49c_scoped_true_lang_css__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css */ "./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css");
/* harmony import */ var C_OpenServer_domains_market_node_modules_vue_loader_dist_exportHelper_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./node_modules/vue-loader/dist/exportHelper.js */ "./node_modules/vue-loader/dist/exportHelper.js");




;


const __exports__ = /*#__PURE__*/(0,C_OpenServer_domains_market_node_modules_vue_loader_dist_exportHelper_js__WEBPACK_IMPORTED_MODULE_3__["default"])(_About_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"], [['render',_About_vue_vue_type_template_id_fb05e49c_scoped_true__WEBPACK_IMPORTED_MODULE_0__.render],['__scopeId',"data-v-fb05e49c"],['__file',"resources/js/components/About.vue"]])
/* hot reload */
if (false) {}


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (__exports__);

/***/ }),

/***/ "./resources/js/components/About.vue?vue&type=script&lang=js":
/*!*******************************************************************!*\
  !*** ./resources/js/components/About.vue?vue&type=script&lang=js ***!
  \*******************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__["default"])
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./About.vue?vue&type=script&lang=js */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=script&lang=js");
 

/***/ }),

/***/ "./resources/js/components/About.vue?vue&type=template&id=fb05e49c&scoped=true":
/*!*************************************************************************************!*\
  !*** ./resources/js/components/About.vue?vue&type=template&id=fb05e49c&scoped=true ***!
  \*************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_template_id_fb05e49c_scoped_true__WEBPACK_IMPORTED_MODULE_0__.render)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_template_id_fb05e49c_scoped_true__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./About.vue?vue&type=template&id=fb05e49c&scoped=true */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=template&id=fb05e49c&scoped=true");


/***/ }),

/***/ "./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css":
/*!***************************************************************************************************!*\
  !*** ./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css ***!
  \***************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_clonedRuleSet_9_use_1_node_modules_vue_loader_dist_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_clonedRuleSet_9_use_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_About_vue_vue_type_style_index_0_id_fb05e49c_scoped_true_lang_css__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader/dist/cjs.js!../../../node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!../../../node_modules/vue-loader/dist/stylePostLoader.js!../../../node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js??clonedRuleSet-9.use[1]!./node_modules/vue-loader/dist/stylePostLoader.js!./node_modules/postcss-loader/dist/cjs.js??clonedRuleSet-9.use[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/About.vue?vue&type=style&index=0&id=fb05e49c&scoped=true&lang=css");


/***/ })

}]);