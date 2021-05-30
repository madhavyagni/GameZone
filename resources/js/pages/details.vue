<template>
<div>
    <div class="alertm"></div>
    <div class="d-bg">
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-sm-12 col-md-6 p-5 gal-hide">
                    <div class="one-img">
                        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper-container mySwiper21">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div thumbsSlider="" class="swiper-container mySwiper1">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="two-img">
                        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper-container mySwiper22">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div thumbsSlider="" class="swiper-container mySwiper2">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="three-img">
                        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper-container mySwiper23">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name2">
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div thumbsSlider="" class="swiper-container mySwiper3">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name2">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="four-img">
                        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper-container mySwiper24">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name2">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name3">
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div thumbsSlider="" class="swiper-container mySwiper4">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name2">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name3">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="five-img">
                        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper-container mySwiper25">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name2">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name3">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name4">
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div thumbsSlider="" class="swiper-container mySwiper5">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name1">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name2">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name3">
                                </div>
                                <div class="swiper-slide">
                                    <img :src="'/images/' + product.image_name4">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 p-5 text-white">
                    <h2>{{product.name}}</h2>
                    <p class="text-muted">Graphics Cards</p>
                    <h3 style="color:#b50005">Rs. {{product.sale_price_new}} <span class="actual-price mx-4 text-muted">Rs {{product.price_new}}</span></h3>
                    <p>YOU SAVE <b>{{product.price - product.sale_price}}/-</b></p>
                    <p>Inclusive of all taxes</p>
                    <div class="btns d-flex align-items-center">
                        <add-to-d-cart :product=product />
                        <add-to-wishlist style="width:60px" :product=product />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h3 class="headmrd display-5 text-white">Details</h3>
        <div v-html="product.details" class="ul-s ul-mr text-white">
            {{product.details}}
        </div>
        <table v-html="product.specification" class="table text-white cat-card t-pad p-4">
            <tbody class="py-5">
                {{product.specification}}
            </tbody>
        </table>
        <h3 class="headmrd display-4 text-white">Similar products</h3>
        <div class="swiper-container mySwiper-b mb-5">
            <div class="swiper-wrapper">
                <div id="s-slide" class="swiper-slide">
                    <router-link :to="{name:'detail', params: {id:product1.id}}" class="detail">
                        <div class="box1">
                            <img :src="'/images/' + product1.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <div class="d-flex flex-column align-items-start">
                                    <h5><b>{{product1.name}}</b></h5>
                                    <h5 class="text-danger"> <b>Rs {{product1.sale_price}}</b> </h5>
                                    <span v-html="product1.description">{{product1.description}}</span>
                                </div>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product1 />
                                    <add-to-wishlist :product=product1 />
                                </div>
                            </div>
                        </div>
                    </router-link>
                </div>

                <div id="s-slide" class="swiper-slide">
                    <router-link :to="{name:'detail', params: {id:product2.id}}" class="detail">
                        <div class="box1">
                            <img :src="'/images/' + product2.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <div class="d-flex flex-column align-items-start">
                                    <h5><b>{{product2.name}}</b></h5>
                                    <h5 class="text-danger"> <b>Rs {{product2.sale_price}}</b> </h5>
                                    <span v-html="product2.description">{{product2.description}}</span>
                                </div>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product2 />
                                    <add-to-wishlist :product=product2 />
                                </div>
                            </div>
                        </div>
                    </router-link>
                </div>

                <div id="s-slide" class="swiper-slide">
                    <router-link :to="{name:'detail', params: {id:product3.id}}" class="detail">
                        <div class="box1">
                            <img :src="'/images/' + product3.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <div class="d-flex flex-column align-items-start">
                                    <h5><b>{{product3.name}}</b></h5>
                                    <h5 class="text-danger"> <b>Rs {{product3.sale_price}}</b> </h5>
                                    <span v-html="product3.description">{{product3.description}}</span>
                                </div>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product3 />
                                    <add-to-wishlist :product=product3 />
                                </div>
                            </div>
                        </div>
                    </router-link>
                </div>

                <div id="s-slide" class="swiper-slide">
                    <router-link :to="{name:'detail', params: {id:product4.id}}" class="detail">
                        <div class="box1">
                            <img :src="'/images/' + product4.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <div class="d-flex flex-column align-items-start">
                                    <h5><b>{{product4.name}}</b></h5>
                                    <h5 class="text-danger"> <b>Rs {{product4.sale_price}}</b> </h5>
                                    <span v-html="product4.description">{{product4.description}}</span>
                                </div>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product4 />
                                    <add-to-wishlist :product=product4 />
                                </div>
                            </div>
                        </div>
                    </router-link>
                </div>

                <div id="s-slide" class="swiper-slide">
                    <router-link :to="{name:'detail', params: {id:product5.id}}" class="detail">
                        <div class="box1">
                            <img :src="'/images/' + product5.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <div class="d-flex flex-column align-items-start">
                                    <h5><b>{{product5.name}}</b></h5>
                                    <h5 class="text-danger"> <b>Rs {{product5.sale_price}}</b> </h5>
                                    <span v-html="product5.description">{{product5.description}}</span>
                                </div>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product5 />
                                    <add-to-wishlist :product=product5 />
                                </div>
                            </div>
                        </div>
                    </router-link>
                </div>
            </div>
            <div class="swiper-button-next pad-nxt2"></div>
            <div class="swiper-button-prev pad-pre2"></div>
        </div>
        <div class="swiper-container mySwiper-mob">
            <div class="swiper-wrapper">
                <div class="swiper-slide d-flex align-items-center justify-content-center">
                    <router-link :to="{name:'detail', params: {id:product1.id}}" class="detail">
                        <div class="box1 wd-mob">
                            <img :src="'/images/' + product1.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{product1.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{product1.sale_price}}</b> </h5>
                                <span v-html="product1.description">{{product1.description}}</span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product1 />
                                    <add-to-wishlist :product=product1 />
                                </div>
                            </div>

                        </div>
                    </router-link>
                </div>
                <div class="swiper-slide d-flex align-items-center justify-content-center">
                    <router-link :to="{name:'detail', params: {id:product2.id}}" class="detail">
                        <div class="box1 wd-mob">
                            <img :src="'/images/' + product2.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{product2.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{product2.sale_price}}</b> </h5>
                                <span v-html="product2.description">{{product2.description}}</span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product2 />
                                    <add-to-wishlist :product=product2 />
                                </div>
                            </div>

                        </div>
                    </router-link>
                </div>
                <div class="swiper-slide d-flex align-items-center justify-content-center">
                    <router-link :to="{name:'detail', params: {id:product3.id}}" class="detail">
                        <div class="box1 wd-mob">
                            <img :src="'/images/' + product3.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{product3.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{product3.sale_price}}</b> </h5>
                                <span v-html="product3.description">{{product3.description}}</span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product3 />
                                    <add-to-wishlist :product=product3 />
                                </div>
                            </div>

                        </div>
                    </router-link>
                </div>
                <div class="swiper-slide d-flex align-items-center justify-content-center">
                    <router-link :to="{name:'detail', params: {id:product4.id}}" class="detail">
                        <div class="box1 wd-mob">
                            <img :src="'/images/' + product4.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{product4.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{product4.sale_price}}</b> </h5>
                                <span v-html="product4.description">{{product4.description}}</span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product4 />
                                    <add-to-wishlist :product=product4 />
                                </div>
                            </div>

                        </div>
                    </router-link>
                </div>
                <div class="swiper-slide d-flex align-items-center justify-content-center">
                    <router-link :to="{name:'detail', params: {id:product5.id}}" class="detail">
                        <div class="box1 wd-mob">
                            <img :src="'/images/' + product5.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{product5.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{product5.sale_price}}</b> </h5>
                                <span v-html="product5.description">{{product5.description}}</span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product5 />
                                    <add-to-wishlist :product=product5 />
                                </div>
                            </div>

                        </div>
                    </router-link>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <Footer />
    </div>
    <div class="container d-none">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-sm-12 col-md-6"><img :src="'/images/' + product.image_name" alt=""></div>
            <div class="col-sm-12 col-md-6">
                <h2>{{product.name}}</h2>
                <p v-html="product.description">{{product.description}}</p>
                <p><b>category: {{product.name}}</b></p>
                <h5>Price:</h5>
                <h3 class="mb-5">{{product.price}} ₹</h3>
                <add-to-d-cart :product=product />
                <button type="button" class="btn btn-success my-3">Buy now</button>
                <add-to-wishlist :product=product />
            </div>
        </div>
    </div>
</div>
</template>

<script>
import AddToDCart from '../components/AddToDCart.vue';
export default {
    components: {
        AddToDCart,
    },
    name: 'detail',
    created() {
        this.loadData()
    },
    mounted: function () {
        console.log(this.img)

        function swiper1() {
            var swiper = new Swiper(".mySwiper1", {
                spaceBetween: 10,
                slidesPerView: 4,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });
            var swiper2 = new Swiper(".mySwiper21", {
                spaceBetween: 10,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: swiper,
                },
            });
        }
        swiper1()

        function swiper2() {
            var swiper = new Swiper(".mySwiper2", {
                spaceBetween: 10,
                slidesPerView: 4,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });
            var swiper2 = new Swiper(".mySwiper22", {
                spaceBetween: 10,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: swiper,
                },
            });
        }
        swiper2()

        function swiper3() {
            var swiper = new Swiper(".mySwiper3", {
                spaceBetween: 10,
                slidesPerView: 4,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });
            var swiper2 = new Swiper(".mySwiper23", {
                spaceBetween: 10,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: swiper,
                },
            });
        }
        swiper3()

        function swiper4() {
            var swiper = new Swiper(".mySwiper4", {
                spaceBetween: 10,
                slidesPerView: 4,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });
            var swiper2 = new Swiper(".mySwiper24", {
                spaceBetween: 10,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: swiper,
                },
            });
        }
        swiper4()

        function swiper5() {
            var swiper = new Swiper(".mySwiper5", {
                spaceBetween: 10,
                slidesPerView: 4,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });
            var swiper2 = new Swiper(".mySwiper25", {
                spaceBetween: 10,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: swiper,
                },
            });
        }
        swiper5()

        var swiperb = new Swiper(".mySwiper-b", {
            slidesPerView: 3,
            spaceBetween: 30,
            slidesPerGroup: 3,
            loop: false,
            loopFillGroupWithBlank: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
        var swiperMob = new Swiper(".mySwiper-mob", {
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
        $(document).ready(function () {
            $(".gal-hide").hide()
            setTimeout(function () {
                $('.gal-hide').show()
            }, 400);
        })
        this.$root.$on('alert', (alert) => {
            this.alert = alert
            $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${this.alert}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
        })
    },
    methods: {
        loadData() {
            let url = `/api/view/${this.$route.params.id}`
            this.axios.get(url).then(response => {
                this.product = response.data
                if (this.product.image_name !== null) {
                    this.img.push(this.product.image_name)
                }
                if (this.product.image_name1 !== null) {
                    this.img.push(this.product.image_name1)
                }
                if (this.product.image_name2 !== null) {
                    this.img.push(this.product.image_name2)
                }
                if (this.product.image_name3 !== null) {
                    this.img.push(this.product.image_name3)
                }
                if (this.product.image_name4 !== null) {
                    this.img.push(this.product.image_name4)
                }
                console.log(this.img)
                if (this.img.length == 1) {
                    $('.one-img').show()
                    $('.two-img').hide()
                    $('.three-img').hide()
                    $('.four-img').hide()
                    $('.five-img').hide()
                }
                if (this.img.length == 2) {
                    $('.one-img').hide()
                    $('.two-img').show()
                    $('.three-img').hide()
                    $('.four-img').hide()
                    $('.five-img').hide()
                }
                if (this.img.length == 3) {
                    $('.one-img').hide()
                    $('.two-img').hide()
                    $('.three-img').show()
                    $('.four-img').hide()
                    $('.five-img').hide()
                }
                if (this.img.length == 4) {
                    $('.one-img').hide()
                    $('.two-img').hide()
                    $('.three-img').hide()
                    $('.four-img').show()
                    $('.five-img').hide()
                }
                if (this.img.length == 5) {
                    $('.one-img').hide()
                    $('.two-img').hide()
                    $('.three-img').hide()
                    $('.four-img').hide()
                    $('.five-img').show()
                }
                let x = this.product.sale_price;
                x = x.toString();
                let lastThree = x.substring(x.length - 3);
                let otherNumbers = x.substring(0, x.length - 3);
                if (otherNumbers != '')
                    lastThree = ',' + lastThree;
                let res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + '.00';
                this.product.sale_price_new = res

                let y = this.product.price;
                y = y.toString();
                let lastThree2 = y.substring(y.length - 3);
                let otherNumbers2 = y.substring(0, y.length - 3);
                if (otherNumbers2 != '')
                    lastThree2 = ',' + lastThree2;
                let resOfy = otherNumbers2.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree2 + '.00';
                this.product.price_new = resOfy

                let url2 = this.url + '/api/similar'
                this.axios.post(url2, {
                    'cat': this.product.cat
                }).then(response => {
                    this.bproducts = response.data
                    this.bproducts.forEach(element => {
                        let x = element.sale_price;
                        x = x.toString();
                        let lastThree = x.substring(x.length - 3);
                        let otherNumbers = x.substring(0, x.length - 3);
                        if (otherNumbers != '')
                            lastThree = ',' + lastThree;
                        let res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + '.00';
                        element.sale_price = res
                    });
                    console.log(this.bproducts)
                    this.product1 = this.bproducts[0]
                    this.product2 = this.bproducts[1]
                    this.product3 = this.bproducts[2]
                    this.product4 = this.bproducts[3]
                    this.product5 = this.bproducts[4]
                })
            });
        }
    },
    data() {
        return {
            product: {},
            products: [],
            bproducts: [],
            product1: '',
            product2: '',
            product3: '',
            product4: '',
            product5: '',
            img: [],
            alert: '',
            url: document.head.querySelector('meta[name="url"]').content,
        }
    },
    metaInfo() {
        return {
            title: this.$t(this.product.name)
        }
    },
}
</script>

<style scoped>
.d-bg {
    background-image: linear-gradient(#0d0d0d, #343434, #0d0d0d);
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}

.swiper-container {
    width: 100%;
    height: 100%;
}

.swiper-slide {
    text-align: center;
    font-size: 18px;
    background: #fff;

    /* Center slide text vertically */
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
}

.swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.swiper-container {
    width: 100%;
    height: 300px;
    margin-left: auto;
    margin-right: auto;
}

.swiper-slide {
    background-size: cover;
    background-position: center;
}

.mySwiper21,
.mySwiper22,
.mySwiper23,
.mySwiper24,
.mySwiper25 {
    height: 80%;
    width: 100%;
}

.mySwiper1,
.mySwiper2,
.mySwiper3,
.mySwiper4,
.mySwiper5 {
    height: 20%;
    box-sizing: border-box;
    padding: 10px 0;
}

.mySwiper1 .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
}

.mySwiper2 .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
}

.mySwiper3 .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
}

.mySwiper4 .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
}

.mySwiper5 .swiper-slide {
    width: 25%;
    height: 100%;
    opacity: 0.4;
}

.mySwiper1 .swiper-slide-thumb-active {
    opacity: 1;
}

.mySwiper2 .swiper-slide-thumb-active {
    opacity: 1;
}

.mySwiper3 .swiper-slide-thumb-active {
    opacity: 1;
}

.mySwiper4 .swiper-slide-thumb-active {
    opacity: 1;
}

.mySwiper5 .swiper-slide-thumb-active {
    opacity: 1;
}

.swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.t-pad {
    margin-bottom: 150px !important;
    width: 95%;
    margin: 0 auto;
}

.cat-card {
    background: #252525;
    border: none;
    border-radius: 20px;
    box-shadow: 0 0 35px rgb(175, 175, 175, 0.5) inset;
}

.table {
    position: relative;
}

.table::before {
    content: 'Specification';
    display: flex;
    font-weight: bold;
    justify-content: center;
    align-items: center;
    position: absolute;
    height: 3.125rem;
    width: 250px;
    background: #fff;
    color: #0d0d0d;
    top: -50px;
    left: 15px;
    border-top-left-radius: 25px;
    border-top-right-radius: 25px;
}

.td-b {
    border-right: 1px solid #fff;
}

.td-border {
    border: none;
    border-right: 1px solid #fff;
}

.swiper-container {
    width: 100%;
    height: 100%;
}

.swiper-slide {
    font-size: 18px;
    background: none;
}

.swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.box1 {
    background: #ffff;
    border-radius: 25px;
    box-shadow: 0 0 25px rgb(175, 175, 175);
    margin: 23px;
    font-size: 14px;
}

.box1 img {
    border-top-left-radius: 25px;
    border-top-right-radius: 25px;
}

.headmr {
    margin: 60px 0 60px 0;
}

.content2 h5 {
    font-size: 16px;
}

.ul {
    list-style: none;
    margin-left: -25px;
}

.detail {
    text-decoration: none;
    color: rgb(37, 37, 37);
}

.detail:hover {
    text-decoration: none;
}

.ul li::before {
    content: "\2022";
    color: red;
    font-weight: bold;
    display: inline-block;
    width: 1em;
    margin-left: -1em;
}

.ul-mr {
    margin: 1.25rem 1.25rem 8.125rem 1.25rem;
}

.headmrd {
    margin: 3.75rem 2.5rem 1.875rem 2.5rem;
}

.actual-price {
    position: relative;
}

.actual-price::after {
    content: '';
    position: absolute;
    width: 10rem;
    left: 0;
    top: 50%;
    height: 2px;
    background: #777;
}
</style>
