<template>
<div>
    <div class="alertm"></div>
    <div class="container">
        <!--Section: Block Content-->
        <!--Section: Block Content-->
        <section>
            <!--Grid row-->
            <div class="row hide-content my-5">

                <!--Grid column-->
                <div class="col-lg-8">

                    <!-- Card -->
                    <div class="card cart-card wish-list mb-3 p-4">
                        <div class="card-body">

                            <div v-for="(basket, index) in products" :key="index" class="row mb-4">
                                <div class="col-md-5 col-lg-3 col-xl-3">
                                    <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                                        <img class="img-fluid w-100" :src="'/images/' + basket.product.image_name" alt="Sample">
                                    </div>
                                </div>
                                <div class="col-md-7 col-lg-9 col-xl-9">
                                    <div>
                                        <div class="d-flex justify-content-between">
                                            <div>

                                                <router-link :to="{name:'detail', params: {id:basket.product.id}}">
                                                    <h5 class="text-white">{{basket.product.name}}</h5>
                                                </router-link>

                                                <p class="text-muted text-uppercase small mb-0">In stock</p>
                                                <p class="text-muted text-uppercase small mb-0">Eligible for FREE Shipping</p>

                                            </div>
                                            <div>
                                                <div class="d-flex justify-content-center align-items-center">
                                                    <a href="#" @click.prevent="decCount(basket.id)" type="button" class="mr-2 detail qty-btn d-flex justify-content-center align-items-center">
                                                        <h3>-</h3>
                                                    </a>
                                                    <div class="qty text-center">{{basket.qty}}</div>
                                                    <a href="#" @click.prevent="incCount(basket.id)" type="button" class="ml-2 detail qty-btn d-flex justify-content-center align-items-center">
                                                        <h3>+</h3>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="d-flex justify-content-center my-2">
                                                <a href="#" @click.prevent="removeItem(basket.id)" type="button" class="mr-2"><i style="color:gray" class="fas fa-trash-alt fa-lg mr-1"></i></a>

                                                <a href="" @click.prevent="removeItem2(basket.id)">
                                                    <add-to-wishlist :product=basket.product></add-to-wishlist>
                                                </a>
                                            </div>
                                            <p class="mb-0 text-white"><span><strong>₹{{basket.price}}</strong></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr class="mb-4" style="background:#fff">

                            <p class="text-warning mb-0"><i class="fas fa-info-circle mr-1"></i> Do not delay the purchase, adding
                                items to your cart does not mean booking them.</p>

                        </div>
                    </div>
                    <!-- Card -->

                    <!-- Card -->
                    <div class="card cart-card mb-3">
                        <div class="card-body">

                            <h5 class="mb-1 text-white">We accept</h5>
                            <img src="/images/pmodes.png" alt="" width="35%">
                        </div>
                    </div>
                    <!-- Card -->

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-4">

                    <!-- Card -->
                    <div class="card cart-card mb-3">
                        <div class="card-body">

                            <h5 class="mb-3 text-white">The total amount of</h5>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                    Total amount
                                    <span>₹{{subTotal}}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                    Shipping
                                    <span>Free</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                    <div>
                                        <strong>The total amount of</strong>
                                        <strong>
                                            <p class="mb-0">(including GST)</p>
                                        </strong>
                                    </div>
                                    <span><strong>₹{{subTotal}}</strong></span>
                                </li>
                            </ul>
                            <router-link :to="{name:'checkout'}" class="btn mb-3 btny btn-block">
                                <span class="btn-txt">Go to checkout</span>
                            </router-link>

                        </div>
                    </div>
                    <!-- Card -->

                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->
            <div class="empty-cart">
                <div class="empty-head text-white d-flex align-items-center flex-column mt-5">
                </div>
                <div class="d-flex align-items-center flex-column">
                    <router-link :to="{name:'wishlist'}" class="btn mb-3 btnrout btny btn-block">
                        <span class="btn-txt">Add from whishlist</span>
                    </router-link>
                </div>
            </div>
        </section>
        <!--Section: Block Content-->
        <Footer />
    </div>
</div>
</template>

<script>
import AddToWishlist from '../components/AddToWishlist.vue'
export default {
    components: {
        AddToWishlist
    },
    middleware: 'auth',
    name: 'Cart',
    created() {
        this.loadData()
    },
    metaInfo() {
        return {
            title: this.$t('Cart')
        }
    },
    data() {
        return {
            subTotal: '',
            products: [],
            alert: ''
        }
    },
    methods: {
        loadData() {
            this.axios.get('api/basket').then(response => {
                this.products = response.data
                let sum = 0
                for (let i = 0; i < this.products.length; i++) {
                    sum += this.products[i].price
                }
                this.subTotal = sum
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
            let response = axios.post('api/removeItem', {
                'productid': id
            }).then(response => {
                console.log(response.data.basket_count)
                this.$root.$emit('changeBasketCount', response.data.basket_count)
                $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${response.data.message}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
                this.loadData()
            })
            this.loadData()

        },
        removeItem2(id) {
            let response = axios.post('api/removeItem', {
                'productid': id
            }).then(response => {
                this.$root.$emit('changeBasketCount', response.data.basket_count)
                this.loadData()
            })
            this.loadData()

        },

        incCount(id) {
            let response = axios.post('api/incCount', {
                'id': id,
            }).then(response => {
                this.$root.$emit('changeBasketCount', response.data.basket_count)
                this.loadData()
            })
            this.loadData()
        },

        decCount(id) {
            let response = axios.post('api/decCount', {
                'id': id,
            }).then(response => {
                this.$root.$emit('changeBasketCount', response.data.basket_count)
                this.loadData()
            })
            this.loadData()
        }

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
            $('.empty-head').html(`<img src="/images/emptycart.png" alt="Empty cart" width="30%">
                <h2 class="empty-head text-white mt-5">Your Cart is empty</h2>
                <p class="text-white">Add Items to your cart</p>
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
.cart-card {
    background: #252525;
    border: .3px solid rgb(131, 131, 131);
    border-radius: 20px;
}

li {
    background: #252525;
    color: #fff;
}

.fa-trash-alt {
    transition: transform .7s;
}

.fa-trash-alt:hover {
    transform: scale(1.8);
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}

.btny {
    position: relative;
    border-radius: none;
    background: none;
    width: 200px;
    z-index: 999;
    border: 2px solid #ffff00;
}

.btny:hover {
    background: #ffff00;
    color: #0d0d0d;
    border: 2px solid #ffff00;
}

.detail {
    text-decoration: none;
    color: rgb(37, 37, 37);
}

.detail:hover {
    text-decoration: none;
}

.btny:active {
    background: #ffff00 !important;
    color: #0d0d0d !important;
    border: 2px solid #ffff00 !important;
    border-radius: none !important;
}

.btny:visited {
    background: #ffff00 !important;
    color: #0d0d0d !important;
    border: 2px solid #ffff00 !important;
    border-radius: none !important;
}

.btny:focus {
    background: #ffff00 !important;
    color: #0d0d0d !important;
    border: 2px solid #ffff00 !important;
    border-radius: none !important;
}

.qty {
    background: #fff;
    width: 40px;
    border-radius: 10px;
    height: 25px;
}

.qty-btn {
    background: #fff;
    width: 25px;
    border-radius: 50%;
    height: 25px;
}

.btny::after {
    content: '';
    position: absolute;
    left: 6px;
    top: 12px;
    height: 35px;
    width: 200px;
    border-bottom: 2px solid #ffff00;
    border-right: 2px solid #ffff00;
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
</style>
