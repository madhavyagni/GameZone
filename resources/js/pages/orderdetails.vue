<template>
<div class="container">
    <div class="cart-card my-5">
        <div class="my-5 mx-4 d-flex flex-wrap mob-arange text-white">
            <div class="address mr-5">
                <h4>Shipping Address</h4>
                <p class="mb-3"><b>{{order.fname}} {{order.lname}}</b></p>
                <p>{{order.address}}</p>
                <p v-if="order.address2 !== 'null'">{{order.address2}}</p>
                <p>{{order.state}}, {{order.city}}, {{order.zip}}</p>
                <p>India</p>
                <p><b>Phone Number</b></p>
                <p>{{order.num}}</p>
            </div>
            <div class="mode mr-5">
                <h4>Payment Method</h4>
                <p><b>{{order.ordertype}}</b></p>
                <p v-if="order.orderstatus == 'pending'"><b class="text-warning">{{order.orderstatus}}</b><i class="fas fa-spinner text-warning ml-2"></i></p>
                <p v-if="order.orderstatus == 'delivered'"><b class="text-success">{{order.orderstatus}}</b><i class="far fa-check-circle text-success mx-2"></i></p>
                <p v-if="order.orderstatus == 'cancelled'"><b class="text-danger">{{order.orderstatus}}</b><i class="far fa-times-circle text-danger mx-2"></i></p>
            </div>
            <div class="order-summary">
                <div class="cart-card p-3 order-md-2 mb-4">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-muted text-white">Order Summary</span>
                    </h4>
                    <ul class="list-group my-3">
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Product Name:</h6>

                            </div>
                            <span>&nbsp;{{product.name}}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Listed Price:</h6>

                            </div>
                            <span>Rs {{product.price_new}}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Offer Price:</h6>

                            </div>
                            <span>Rs {{product.sale_price_new}}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Total Discount:</h6>

                            </div>
                            <span>{{product.price - product.sale_price}}/-</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Shipping:</h6>

                            </div>
                            <span>free</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Qty:</h6>

                            </div>
                            <span>{{order.qty}}</span>
                        </li>


                        <li class="list-group-item d-flex justify-content-between">
                            <span>Total Amount</span>
                            <strong>Rs {{order.price}}</strong>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <div class="cart-card my-5">
        <div class="d-flex flex-wrap align-items-center justify-content-md-around mob-arange">
            <router-link :to="{name:'detail', params: {id:product.id}}" class="detail">
                <div class="product d-flex cart-card onhover flex-wrap justify-content-center align-items-center py-3 my-5 mx-3">

                    <!-- <div class="box2">
                        <img :src="'/images/' + product.image_name" class="d-block w-100">
                        <div class="content2 p-4">
                            <h5><b>{{product.name}}</b></h5>
                            <h5 class="text-danger"> <b>Rs {{product.sale_price_new}}</b> </h5>
                            <span v-html="product.description">
                                {{product.description}}
                            </span>
                        </div>
                    </div> -->

                    <div>
                        <img style="width:200px" :src="'/images/' + product.image_name" class="img-fluid mx-5">
                    </div>

                    <div class="contentm">
                        <div class="mt-3 mr-3 text-white">
                            <p><b>{{product.name}}</b></p>
                            <span v-html="product.description">
                                {{product.description}}
                            </span>
                        </div>
                    </div>

                </div>
            </router-link>

            <div class="text-white p-3">
                <h3>Order status</h3>
                <p v-if="order.orderstatus == 'pending'"><b class="text-warning">{{order.orderstatus}}</b><i class="fas fa-spinner text-warning ml-2"></i></p>
                <p v-if="order.orderstatus == 'delivered'"><b class="text-success">{{order.orderstatus}}</b><i class="far fa-check-circle text-success mx-2"></i></p>
                <p v-if="order.orderstatus == 'cancelled'"><b class="text-danger">{{order.orderstatus}}</b><i class="far fa-times-circle text-danger mx-2"></i></p>
                <p v-if="order.orderstatus == 'failed'"><b class="text-danger">{{order.orderstatus}}</b><i class="far fa-times-circle text-danger mx-2"></i></p>
                <p v-if="order.orderstatus == 'failedM'"><b class="text-danger">failed</b><i class="far fa-times-circle text-danger mx-2"></i></p>
            </div>
        </div>
    </div>
    <Footer />
</div>
</template>

<script>
export default {
    name: 'myorders',
    middleware: 'auth',
    created() {
        this.loadData()
    },
    data() {
        return {
            order: [],
            product: [],
        }
    },
    metaInfo() {
        return {
            title: this.$t('Order details')
        }
    },
    methods: {
        loadData() {
            let url = `/api/order/${this.$route.params.id}/${this.$route.params.id2}`
            let url2 = `/api/order2/${this.$route.params.id}/${this.$route.params.id2}`
            this.axios.get(url).then(response => {
                this.order = response.data
                console.log(this.order)
                this.order = response.data
                let x = this.order.price;
                x = x.toString();
                let lastThree = x.substring(x.length - 3);
                let otherNumbers = x.substring(0, x.length - 3);
                if (otherNumbers != '')
                    lastThree = ',' + lastThree;
                let res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + '.00';
                this.order.price = res
                this.axios.get(url2).then(response => {
                    this.product = response.data
                    console.log(this.product)
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
                })
            })
        },
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

.onhover:hover {
    box-shadow: 0 0 25px rgb(87, 87, 87);
    border: .3px solid #252525;
}

.cart-card {
    background: #252525;
    border: .3px solid rgb(131, 131, 131);
    border-radius: 20px;
}

li {
    background: #252525;
    color: #fff;
}

.list-group {
    border: 1px solid rgb(92, 92, 92);
}

.list-group-item {
    border: 1px solid rgb(92, 92, 92);
}
</style>
