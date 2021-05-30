<template>
<div>
    <div class="alertm"></div>
    <div class="container">
        <div class="hide-content my-5">
            <div class="row mr-0 ml-0">
                <div v-for="product in products" :key="product.id" class="col-sm-12 col-md-4 mb-4 d-flex justify-content-center align-items-center flex-column">
                    <router-link :to="{name:'detail', params: {id:product.id}}" class="detail text-dark">
                        <div class="box2 cat-box">
                            <img :src="'/images/' + product.image_name" class="d-block w-100">
                            <div class="content2 p-4">
                                <h5><b>{{product.name}}</b></h5>
                                <h5 class="text-danger"> <b>Rs {{product.sale_price}}</b> </h5>
                                <span v-html="product.description">{{product.description}}</span>
                                <div class="btns d-flex justify-content-end">
                                    <add-to-cart-btn :product=product />
                                    <add-to-wishlist :product=product />
                                </div>
                            </div>
                        </div>
                    </router-link>
                </div>
            </div>
            <div style="margin: 0 auto">
                <Pagination :meta="meta" v-on:Pagination="loadData"></Pagination>
            </div>
        </div>
        <div class="empty-msg">
            <div class="d-flex justify-content-center align-items-center">
                <h3 class="empty-head text-muted my-5"></h3>
            </div>
        </div>
        <Footer />
    </div>
</div>
</template>

<script>
import Footer from '../components/Footer.vue'
import Pagination from '../components/Pagination.vue'
export default {
    components: {
        Pagination,
        Footer
    },
    created() {
        this.loadData()
    },
    metaInfo() {
        return {
            title: this.$t(`${this.$route.params.term} . search`)
        }
    },
    data() {
        return {
            products: [],
            meta: {},
            url: document.head.querySelector('meta[name="url"]').content,
            alert: ''
        }
    },
    watch: {
        $route() {
            this.updatePage(this.$route.params.term)
        }
    },
    methods: {
        loadData(page) {
            if (`${this.$route.params.term}` == '') {
                this.$router.push({
                    name: 'cat.all',
                })
            }
            let url = this.url + `/api/search/${this.$route.params.term}`
            this.axios.get(url, {
                params: {
                    page
                }
            }).then(response => {
                this.products = response.data.data
                this.meta = response.data.meta
                if (this.products.length == 0) {
                    $('.hide-content').hide()
                    $('.empty-msg').show()
                } else if (this.products.length !== 0) {
                    $('.hide-content').show()
                    $('.empty-msg').hide()
                }
            })
        },
        updatePage(page) {
            if (`${this.$route.params.term}` == '') {
                this.$router.push({
                    name: 'cat.all',
                })
            }
            let url = this.url + `/api/search/${this.$route.params.term}`
            this.axios.get(url, {
                params: {
                    page
                }
            }).then(response => {
                this.products = response.data.data
                this.meta = response.data.meta
                if (this.products.length == 0) {
                    $('.hide-content').hide()
                    $('.empty-msg').show()
                } else if (this.products.length !== 0) {
                    $('.hide-content').show()
                    $('.empty-msg').hide()
                }
            })
        }
    },
    mounted() {
        setTimeout(function () {
            $('.empty-head').html('No Results Found')
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
.detail {
    text-decoration: none;
}

.detail:hover {
    text-decoration: none;
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}
</style>
