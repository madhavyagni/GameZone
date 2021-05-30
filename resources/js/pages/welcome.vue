<template>
<div>
    <div class="alertm"></div>
    <div class="bg d-flex justify-content-center align-items-center">
        <div class="container">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="img-wrap d-flex justify-content-center align-items-center">
                            <div class="content text-light" data-aos="zoom-in">
                                <h1>Now get MSI combo
                                    at amazing Price</h1>
                                <p>Get MSI Optix Monitor, MSI Codex R 10SI-003US PC
                                    Msi mechanical Keyboard, mouse, Msi headesets and
                                    MSI force GC30 joystik.</p>
                                <router-link :to="{name:'detail', params: {id:31}}" type="button" class="btn btny btn-dark"><span class="text-white">Buy now</span></router-link>
                            </div>
                            <img src="/images/msicombo.png" class="d-block main-img w-50" alt="..." data-aos="zoom-in">
                        </div>

                    </div>
                    <div class="carousel-item">
                        <div class="img-wrap d-flex justify-content-center align-items-center">
                            <div class="content text-light">
                                <h1>Now All new Playstation 5
                                    is here</h1>
                                <p>Get playstation at exact price at Game zone
                                    buy now before stock gets over</p>
                                <router-link :to="{name:'detail', params: {id:17}}" type="button" class="btn btny btn-dark"><span class="text-white">Buy now</span></router-link>
                            </div>
                            <img src="/images/ps5banner.png" class="d-block main-img w-50" alt="...">
                        </div>

                    </div>

                </div>
                <a class="carousel-control-prev pad-pre" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="circle circle-p"><span class="carousel-control-prev-icon" aria-hidden="true"></span></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next pad-nxt" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="circle"><span class="carousel-control-next-icon" aria-hidden="true"></span></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>

    <div class="container">
        <h3 class="text-center headmr display-4 text-white">Best Selling</h3>
        <div class="swiper-container mySwiper-home mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide" data-aos="fade-up">
                    <router-link :to="{name:'detail', params: {id:product1.id}}" class="detail">
                        <div class="box1 bs-wd">
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
                <div class="swiper-slide" data-aos="fade-up">
                    <router-link :to="{name:'detail', params: {id:product2.id}}" class="detail">
                        <div class="box1 bs-wd">
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
                <div class="swiper-slide" data-aos="fade-up">
                    <router-link :to="{name:'detail', params: {id:product3.id}}" class="detail">
                        <div class="box1 bs-wd">
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
                <div class="swiper-slide" data-aos="fade-up">
                    <router-link :to="{name:'detail', params: {id:product4.id}}" class="detail">
                        <div class="box1 bs-wd">
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
                <div class="swiper-slide" data-aos="fade-up">
                    <router-link :to="{name:'detail', params: {id:product5.id}}" class="detail">
                        <div class="box1 bs-wd">
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
            <div class="swiper-button-next pad-nxt2"></div>
            <div class="swiper-button-prev pad-pre2"></div>
        </div>
        <div class="swiper-container mySwiper-mob">
            <div class="swiper-wrapper">
                <div class="swiper-slide d-flex align-items-center justify-content-center" data-aos="fade-up">
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
                <div class="swiper-slide d-flex align-items-center justify-content-center" data-aos="fade-up">
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
                <div class="swiper-slide d-flex align-items-center justify-content-center" data-aos="fade-up">
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
                <div class="swiper-slide d-flex align-items-center justify-content-center" data-aos="fade-up">
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
                <div class="swiper-slide d-flex align-items-center justify-content-center" data-aos="fade-up">
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
        <h3 class="headmr display-4 text-white">Top Brands</h3>
        <div class="row">
            <div class="com-sm12 col-md-6 sbbmr" data-aos="zoom-in" data-aos-offset="100">
                <router-link :to="{name:'brands.nvidia'}" class="detail">
                    <img src="/images/nvdia.jpg" class="d-block brand-img nvdia w-100">
                </router-link>
            </div>
            <div class="com-sm12 col-md-6 sbbmr" data-aos="zoom-in" data-aos-offset="100">
                <router-link :to="{name:'brands.msi'}" class="detail">
                    <img src="/images/msi.jpg" class="d-block brand-img msi w-100">
                </router-link>
            </div>
        </div>
        <div class="row">
            <div class="com-sm12 col-md-6 sbbmr" data-aos="zoom-in" data-aos-offset="200">
                <div class="d-flex">
                    <div>
                        <router-link :to="{name:'brands.asus'}" class="detail">
                            <img src="/images/asus.jpg" class="d-block brand-img asus" width="100%">
                        </router-link>
                    </div>
                    <div>
                        <router-link :to="{name:'brands.lenovo'}" class="detail">
                            <img src="/images/lenovo.jpg" class="d-block brand-img lenovo" width="100%">
                        </router-link>
                    </div>
                </div>
            </div>
            <div class="com-sm12 col-md-6 sbbmr" data-aos="zoom-in" data-aos-offset="200">
                <router-link :to="{name:'brands.logitech'}" class="detail">
                    <img src="/images/logitech.jpg" class="d-block brand-img logitech w-100" height="101%">
                </router-link>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            <router-link :to="{name:'brands.all'}" class="detail2 mt-5 btn btn-danger text-center">
                See all....
            </router-link>
        </div>
        <h3 class="headmr display-4 text-white">Shop By Catagories</h3>
        <div class="row web-cat mt-5">
            <div class="col-md-3">
                <card class="text-center cat-card mb-5">
                    <h5 class="text-white">Catagories</h5>
                    <hr style="background:#fff">
                    <ul class="nav flex-column nav-pills text-left">
                        <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                            <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                                {{ tab.name }}
                            </router-link>
                        </li>
                    </ul>
                </card>
            </div>

            <div class="col-md-9">
                <transition name="fade" mode="out-in">
                    <router-view />
                </transition>
            </div>
        </div>

        <div class="row mob-cat d-flex justify-content-center flex-wrap">
            <div class="cat-main p-5">
                <card class="text-center cat-card mb-5">
                    <h5 class="text-white">Catagories</h5>
                    <hr style="background:#fff">
                    <ul class="nav flex-column nav-pills text-left">
                        <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                            <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                                {{ tab.name }}
                            </router-link>
                        </li>
                    </ul>
                </card>
            </div>

            <div class="p-0 m-0">
                <transition name="fade" mode="out-in">
                    <router-view />
                </transition>
            </div>
        </div>

        <div style="position:relative" class="offer offer-web mb-5">
            <div class="offer-text d-flex flex-column justify-content-center my-5 p-3 text-white">
                <p style="color:#ffff00">Game zone</p>
                <h2>Now Get Apex Legends
                    Free<br> on Every</h2>
                <div class="hr my-4"></div>
                <h3 style="color:#b50005">RS 10,000 Plus Purchace</h3>
                <router-link :to="{name:'catagories.all'}" type="button" class="btn btny btn-dark"><span class="text-white">Buy now</span></router-link>
            </div>
            <div class="offer-img my-5">
                <img src="/images/apex.png" class="d-block w-100">
                <span data-aos="zoom-in-left" data-aos-offset="500"><img src="/images/apeximg.png" class="d-block apex-img" width="75%"></span>

            </div>
        </div>

        <div class="offer-mob my-5">
            <div class="offer-img-mob">
                <img src="/images/apex.png" class="d-block w-100">
                <img src="/images/apeximg.png" class="d-block apex-img-mob" width="70%">
            </div>
            <div class="offer-text-mob d-flex flex-column justify-content-center p-3 text-white">
                <p style="color:#ffff00">Game zone</p>
                <h2>Now Get Apex Legends
                    Free<br> on Every</h2>
                <div class="hr my-4"></div>
                <h3 style="color:#b50005">RS 10,000 Plus Purchace</h3>
                <router-link :to="{name:'catagories.all'}" type="button" class="btn btny btn-dark"><span class="text-white">Buy now</span></router-link>
            </div>
        </div>
        <Footer />
    </div>

    <!-- <div class="container d-none">
        <div class="container">
            <div class="row my-5 d-flex justify-content-center align-items-center">

                <div v-for="product in products" :key="product.id" class="col-sm-12 col-md-6 my-3">
                    <div class="card" style="width: 100%;">
                        <img style="width: 30%" :src="'/images/' + product.image_name" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">{{product.name}}</h5>
                            <p v-html="product.description" class="card-text">{{product.description}}</p>
                            <h5>price: {{product.price}}</h5>
                            <h5>offer price: {{product.sale_price}}</h5>
                            <div class="arange d-flex">

                                <router-link :to="{name:'detail', params: {id:product.id}}" class="btn btny btn-dark mx-2">
                                    Open
                                </router-link>
                            </div>
                            <add-to-wishlist :product=product />

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div> -->
</div>
</template>

<script>
import AddToCartBtn from '../components/AddToCartBtn.vue'
import AddToWishlist from '../components/AddToWishlist.vue'
import Footer from '../components/Footer.vue'
import Index from './settings/index.vue'
export default {
    components: {
        AddToWishlist,
        AddToCartBtn,
        Footer,
        Index
    },
    created() {
        this.loadData()
    },
    mounted: function () {
        $(document).ready(function () {
            var swiper = new Swiper(".mySwiper", {
                slidesPerView: 3,
                spaceBetween: 30,
                slidesPerGroup: 3,
                loop: false,
                loopFillGroupWithBlank: false,
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                },
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
            });
        })
        var swiper = new Swiper(".mySwiper-mob", {
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
        AOS.init({ duration: 800 });
        this.$root.$on('alert', (alert) => {
            this.alert = alert
            $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${this.alert}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
        })
        console.log(this.alert)

    },
    computed: {
        tabs() {
            return [{
                    name: this.$t('All'),
                    route: 'cat.all'
                },
                {
                    name: this.$t('Monitors'),
                    route: 'cat.monitors'
                },
                {
                    name: this.$t('Consoles'),
                    route: 'cat.consoles'
                },
                {
                    name: this.$t('Cabinets'),
                    route: 'cat.cabinets'
                },
                {
                    name: this.$t('Pre Bult Pc’s'),
                    route: 'cat.prebult'
                },
                {
                    name: this.$t('CPU’s'),
                    route: 'cat.cpu'
                },
                {
                    name: this.$t('Graphics Cards'),
                    route: 'cat.gphards'
                },
                {
                    name: this.$t('Accessories'),
                    route: 'cat.accessories'
                },
            ]
        }
    },
    methods: {
        loadData() {
            this.axios.get('api/showProducts').then(response => {
                this.products = response.data
            })
            this.axios.get('api/bestSelling').then(response => {
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
        }
    },
    data() {
        return {
            products: [],
            bproducts: [],
            product1: '',
            product2: '',
            product3: '',
            product4: '',
            product5: '',
            alert: ''
        }
    },
    metaInfo() {
        return {
            title: this.$t('Home')
        }
    },
}
</script>

<style>
body {
    background-color: #0d0d0d;
}
</style>
<style scoped>
.bg {
    height: 35rem;
    background-image: url(/images/bg.jpg);
    background-attachment: fixed;
    background-size: 100% 100%;
    background-repeat: no-repeat;
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}

.pad-pre {
    padding-right: 8.125rem;
}

.pad-nxt {
    padding-left: 8.125rem;
}

.pad-pre2 {
    padding-right: 12.5rem;
    color: #b50005;
}

.pad-nxt2 {
    padding-left: 12.5rem;
    color: #b50005;
}

.btny {
    color: #ffffff;
}

.circle {
    height: 2.188rem;
    width: 2.188rem;
    border: 2px solid #ffff;
    border-radius: 50%;
    padding: 0.313rem;
    padding-left: 0.438rem;
}

.circle-p {
    padding-left: 0.313rem;
    padding-right: 0.438rem;
}

.swiper-container {
    width: 100%;
    height: 100%;
}

.detail2 {
    text-decoration: none;
    background: rgb(214, 214, 214);
    border: none;
    color: #020202;
    border-radius: 20px;
}

.detail2:hover {
    text-decoration: none;
    color: #a70006;
    background: rgb(255, 255, 255);
}

.detail {
    text-decoration: none;
    color: rgb(37, 37, 37);
}

.detail:hover {
    text-decoration: none;
}

.ul {
    list-style: none;
    margin-left: -1.563rem;
}

.ul li::before {
    content: "\2022";
    color: red;
    font-weight: bold;
    display: inline-block;
    width: 1em;
    margin-left: -1em;
}

.swiper-slide {
    font-size: 1.125rem;
    background: none;
}

.swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.headmr {
    margin: 3.75rem 0 3.75rem 0;
}

.content2 h5 {
    font-size: 1rem;
}

.sbbmr {
    padding: 0;
}

.nvdia,
.msi,
.asus,
.lenovo,
.logitech {
    -webkit-transition: opacity .6s ease-in-out;
    -moz-transition: opacity .6s ease-in-out;
    -o-transition: opacity .6s ease-in-out;
    transition: opacity .6s ease-in-out;
}

.nvdia.brand-img:hover {
    opacity: 0.3;
    cursor: pointer;
}

.msi.brand-img:hover {
    opacity: 0.3;
    cursor: pointer;
}

.asus.brand-img:hover {
    opacity: 0.3;
    cursor: pointer;
}

.lenovo.brand-img:hover {
    opacity: 0.3;
    cursor: pointer;
}

.logitech.brand-img:hover {
    opacity: 0.3;
    cursor: pointer;
}

.offer {
    height: 22.5rem;
    margin: 4.375rem 0 4.375rem 0;
}

.offer-text {
    width: 60%;
    position: absolute;
    height: 20.625rem;
    background-color: #252525;
}

.offer-text-mob {
    width: 100%;
    height: 20.625rem;
    background-color: #252525;
}

.offer-img {
    width: 60%;
    position: absolute;
    right: 0;
    top: -2.5rem;
    height: 20.625rem;
}

.apex-img {
    position: absolute;
    top: -1.25rem;
    right: 0;
}

.offer-img-mob {
    position: relative;
}

.apex-img-mob {
    position: absolute;
    top: -1.25rem;
    right: 0;
}

.hr {
    width: 60%;
    height: 3px;
    background-color: #fff;
}
</style>
