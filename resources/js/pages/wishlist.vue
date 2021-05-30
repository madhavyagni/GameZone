<template>
<div>
    <div class="alertm"></div>
    <div class="container">
        <div class="hide-content my-5 mx-4">
            <div class="row">
                <div v-for="(basket, index) in products" :key="index" class="col-sm-12 col-md-4 mb-4">
                    <router-link :to="{name:'detail', params: {id:basket.product.id}}" class="detail">
                        <div class="box2">
                            <img :src="'/images/' + basket.product.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{basket.product.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{basket.product.sale_price}}</b> </h5>
                                <span v-html="basket.product.description">
                                    {{basket.product.description}}
                                </span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=basket.product />
                                    <a href="#" @click.prevent="removeItem(basket.id)" type="button" class="mr-2"><i style="color:red" class="fas fa-trash-alt fa-lg mr-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </router-link>

                </div>
            </div>
            <div style="margin: 0 auto"><Pagination :meta="meta" v-on:Pagination="loadData"></Pagination></div>
        </div>
        <div class="empty-cart">
            <div class="empty-head text-white d-flex align-items-center flex-column mt-5">
            </div>
            <div class="d-flex align-items-center flex-column">
                <router-link :to="{name:'cat.all'}" class="btn mb-3 btnrout btny btn-block">
                    <span class="btn-txt">Start Shoping</span>
                </router-link>
            </div>
        </div>
        <!-- <div class="hide-content">
        <div v-for="(basket, index) in products" :key="index" class="forv">
            <div class="d-flex align-items-center">
                <div class="img">
                    <img src="/images/1.jpg" width="40%">
                </div>
                <div class="content">
                    <h3>
                        <router-link :to="{name:'detail', params: {id:basket.product.id}}">
                            {{basket.product.name}}
                        </router-link>
                    </h3>
                    <span v-html="basket.product.description">
                        {{basket.product.description}}
                    </span>
                    <h5>price: ₹{{basket.price}}</h5>
                    <a href="#" @click.prevent="removeItem(basket.id)" type="button" class="card-link-secondary small text-uppercase mr-3"><i class="fas fa-trash-alt mr-1"></i> Remove item </a>
                </div>
            </div>
            <hr>
        </div>
    </div> -->
        <Footer />
    </div>
</div>
</template>

<script>
import AddToWishlist from '../components/AddToWishlist.vue'
import Footer from '../components/Footer.vue'
import Pagination from '../components/Pagination.vue'
export default {
    components: {
        AddToWishlist,
        Footer,
        Pagination
    },
    middleware: 'auth',
    name: 'wishlist',
    created() {
        this.loadData(),
            this.removeItem()
    },
    metaInfo() {
        return {
            title: this.$t('Wishlist')
        }
    },
    data() {
        return {
            products: [],
            meta: {},
            alert: ''
        }
    },
    methods: {
        loadData(page) {
            this.axios.get('api/saved', {params:{page}}).then(response => {
                this.products = response.data.data
                this.meta = response.data.meta
                this.products.forEach(element => {
                    let x = element.product.sale_price;
                    x = x.toString();
                    let lastThree = x.substring(x.length - 3);
                    let otherNumbers = x.substring(0, x.length - 3);
                    if (otherNumbers != '')
                        lastThree = ',' + lastThree;
                    let res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + '.00';
                    element.product.sale_price = res
                });
                console.log(this.products)
                if (this.products.length == 0) {
                    $('.hide-content').hide()
                    $('.empty-cart').show()
                } else if (this.products.length !== 0) {
                    $('.hide-content').show()
                    $('.empty-cart').hide()
                }
            })
        },
        removeItem(id) {
            let response = axios.post('api/removeList', {
                'productid': id
            }).then(response => {
                if (response.data.message == 'Removed successfully') {
                    $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${response.data.message}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
                }
            })
            this.loadData()

        },
    },
    mounted() {
        $(document).ready(function () {
            $(".btnrout").hide()
            setTimeout(function () {
                $('.btnrout').show()
            }, 500);
        })
        if (this.products.length == 0) {
            $('.hide-content').hide()
            $('.empty-cart').show()
        } else if (this.products.length !== 0) {
            $('.empty-cart').hide()
            $('.hide-content').show()
        }
        setTimeout(function () {
            $('.empty-head').html(`<img src="/images/wishlist.png" alt="Empty cart" width="20%">
                <h2 class="empty-head text-white">Your Wishlist is empty</h2>
                <p class="text-white">Add Items to your wishlist</p>
                `)
        }, 500);
        this.$root.$on('alert', (alert) => {
            this.alert = alert
            $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${this.alert}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
        })
    }
}
</script>

<style scoped>
.box2 {
    background: #ffff;
    border-radius: 25px;
    box-shadow: 0 0 25px rgb(175, 175, 175);
    font-size: 14px;
}

.box2 img {
    border-top-left-radius: 25px;
    border-top-right-radius: 25px;
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}

.content2 h5 {
    font-size: 16px;
}

.btn-txt {
    color: #fff;
}

.btny:hover .btn-txt {
    color: #0d0d0d;
}

.empty-cart {
    height: 100vh;
}

.fa-trash-alt {
    transition: transform .7s;
}

.fa-trash-alt:hover {
    transform: scale(1.8);
}

.detail {
    text-decoration: none;
    color: rgb(37, 37, 37);
}

.detail:hover {
    text-decoration: none;
}
</style>
