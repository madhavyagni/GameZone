<template>
<div>
    <div class="alertm"></div>
    <div class="container">
        <div style="min-height:90vh" class="hide-content mx-4">
            <div class="mb-5">
                <div v-for="(orders, index) in products" :key="index" class="my-3 p-3 cart-card onhover text-white">
                    <router-link :to="{name:'orderdetails', params: {id:orders.id, id2:orders.product.id}}" class="detail">
                        <div class="row text-white">

                            <div class="col-md-6">

                                <div class="d-flex justify-content-center align-items-center">
                                    <img :src="'/images/' + orders.product.image_name" class="d-block w-25">
                                    <div>
                                        <p class="mx-3 text-white"><b>{{orders.product.name}}</b></p>
                                        <p class="text-muted mx-3">Seller: Equex</p>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-3 d-flex justify-content-center align-items-center">
                                <b>Rs {{orders.product.sale_price}}</b>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center align-items-center">
                                <div>
                                    <p><b>Order status</b></p>
                                    <p v-if="orders.orderstatus == 'pending'"><b class="text-warning">{{orders.orderstatus}}</b><i class="fas fa-spinner text-warning ml-2"></i><a @click.prevent href="#" class="mx-1 text-danger" data-toggle="modal" data-target="#exampleModal">
                                            Cancel
                                            <div style="z-index:99999999" class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content cart-card text-white">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to cancel</h5>
                                                        </div>

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary btn-secondary1" data-dismiss="modal">Close</button>
                                                            <a href="#" @click.prevent="cancleOrder(orders.id)" class="btn btn-secondary btn-primary1">Yes</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a></p>
                                    <p v-if="orders.orderstatus == 'delivered'"><b class="text-success">{{orders.orderstatus}}</b><i class="far fa-check-circle text-success mx-2"></i></p>
                                    <p v-if="orders.orderstatus == 'cancelled'"><b class="text-danger">{{orders.orderstatus}}</b><i class="far fa-times-circle text-danger mx-2"></i></p>
                                    <p v-if="orders.orderstatus == 'failed'"><b class="text-danger">{{orders.orderstatus}}</b><i class="far fa-times-circle text-danger mx-2"></i></p>
                                    <p v-if="orders.orderstatus == 'failedM'"><b class="text-danger">failed</b><i class="far fa-times-circle text-danger mx-2"></i></p>
                                </div>

                            </div>
                        </div>
                        <div class="d-flex justify-content-between text-white">
                            <div class="d-flex text-warning">
                                <p class="mx-5"><b>User Id: {{orders.usr.id}}</b></p>
                                <p><b>User Id: {{orders.usr.name}}</b></p>
                            </div>
                            <div class="btns d-flex">
                                <router-link :to="{name:'admin.editOrder', params: {id:orders.id}}" class="mr-2"><i class="fas fa-edit fa-lg text-warning mr-1"></i></router-link>
                                <a href="#" @click.prevent="delOrder(orders.id)" type="button" class="mr-2"><i style="color:red" class="fas fa-trash-alt fa-lg mr-1"></i></a>
                            </div>
                        </div>
                    </router-link>
                </div>
            </div>
            <div style="margin: 0 auto">
                <Pagination :meta="meta" v-on:Pagination="loadData"></Pagination>
            </div>
        </div>
        <div style="height:90vh" class="empty-cart">
            <div class="text-white d-flex align-items-center flex-column mt-5">
                <h3 class="empty-head"></h3>
            </div>
            <div class="d-flex align-items-center flex-column">
                <router-link :to="{name:'cat.all'}" class="btn mb-3 my-3 btnrout btny btn-block">
                    <span class="btn-txt">Start Shoping</span>
                </router-link>
            </div>
        </div>
        <Footer />

    </div>
</div>
</template>

<script>
import Pagination from '../../components/Pagination.vue'
export default {
    components: {
        Pagination
    },
    middleware: 'auth',
    created() {
        this.loadData()
    },
    data() {
        return {
            products: [],
            meta: {},
            url: document.head.querySelector('meta[name="url"]').content,
        }
    },
    methods: {
        loadData(page) {
            let url = this.url + '/api/orderss'
            this.axios.get(url, {
                params: {
                    page
                }
            }).then(response => {
                this.products = response.data.data
                this.meta = response.data.meta
                this.products.forEach(element => {
                    console.log(element)
                })
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
                if (this.products.length == 0) {
                    $('.hide-content').hide()
                    $('.empty-cart').show()
                } else if (this.products.length !== 0) {
                    $('.hide-content').show()
                    $('.empty-cart').hide()
                }
            })
        },
        delOrder(id) {
            console.log(id)
            let url = this.url + '/api/delOrder'
            this.axios.post(url, {
                'orderid': id
            }).then(response => {
                console.log(response.data)
                $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${response.data.message}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
                this.loadData()
            })
        },
        cancleOrder(id) {
            let url = this.url + '/api/cancelOrdere'
            this.axios.post(url, {
                'orderid': id
            }).then(response => {
                console.log(response.data)
                $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${response.data.message}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
                this.loadData()
            })
        }
    },
    mounted() {
        if (this.products.length == 0) {
            $('.hide-content').hide()
            $('.empty-cart').show()
        } else if (this.products.length !== 0) {
            $('.empty-cart').hide()
            $('.hide-content').show()
        }
        setTimeout(function () {
            $('.empty-head').html('No Orders To Show')
        }, 500);
    }
}
</script>

<style scoped>
.detail {
    text-decoration: none;
    color: rgb(37, 37, 37);
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

.cart-card {
    background: #252525;
    border: .3px solid rgb(131, 131, 131);
    border-radius: 20px;
}

.onhover:hover {
    box-shadow: 0 0 10px rgb(87, 87, 87);
    border: .3px solid #252525;
}

.modal-header {
    border-bottom: 0 none;
}

.modal-footer {
    border-top: 0 none;
}

.btn-primary1 {
    background: none;
    border: none;
}

.btn-primary1:hover {
    color: #b50005;
}

.btn-txt {
    color: #fff;
}

.btny:hover .btn-txt {
    color: #0d0d0d;
}

.btn-secondary1 {
    background: none;
    border: none;
}

.btn-secondary1:hover {
    color: #ffff00;
}

a {
    text-decoration: none;
}
</style>
