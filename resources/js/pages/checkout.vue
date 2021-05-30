<template>
<div>
    <div class="alertm"></div>
    <div class="container">
        <div class="row my-5">
            <div style="height:60%" class="col-md-4 cart-card p-3 order-md-2 mob-mr mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted text-white">Your cart</span>
                    <badge-icon />
                </h4>
                <ul class="list-group my-3">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">Price</h6>

                        </div>
                        <span class="text-muted">₹{{subTotal}}</span>
                    </li>

                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">Delevery Charges</h6>

                        </div>
                        <span class="text-muted">Free</span>
                    </li>

                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total Amount</span>
                        <strong>₹{{subTotal}}</strong>
                    </li>
                </ul>
            </div>
            <div class="col-md-8 order-md-1 text-white">
                <div class="cart-card p-5">
                    <h4 class="mb-5">Billing / Shiping address</h4>
                    <form @submit.prevent="placeOrder" class="row g-3 needs-validation" novalidate>
                        <div class="col-md-6 mb-3">
                            <label for="validationCustom01" class="form-label">First name</label>
                            <input type="text" class="form-control" id="validationCustom01" minlength="4" v-model="name" required>
                            <div class="invalid-feedback">
                                Enter your First Name.
                            </div>

                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="validationCustom02" class="form-label">Last name</label>
                            <input type="text" class="form-control" id="validationCustom02" minlength="4" v-model="lname" required>
                            <div class="invalid-feedback">
                                Enter your Last Name.
                            </div>

                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="validationCustom03" class="form-label">Address</label>
                            <input type="text" class="form-control" id="validationCustom03" minlength="15" v-model="address" required>
                            <div class="invalid-feedback">
                                Enter the Address.
                            </div>

                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="address2" class="form-label">Address2(Optional)</label>
                            <input type="text" class="form-control" id="address2" v-model="address2" required>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom04" class="form-label">State</label>
                            <select class="custom-select d-block w-100" id="validationCustom04" v-model="state" required>
                                <option value="">Choose...</option>
                                <option>Telengana</option>
                            </select>
                            <div class="invalid-feedback">
                                Select your state.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom05" class="form-label">City</label>
                            <select class="custom-select d-block w-100" id="validationCustom05" v-model="city" required>
                                <option value="">Choose...</option>
                                <option>Hyderabad</option>
                            </select>
                            <div class="invalid-feedback">
                                Select your city.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom06" class="form-label">Zip</label>
                            <input type="text" class="form-control" id="validationCustom06" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" minlength="6" v-model="zip" required>
                            <div class="invalid-feedback">
                                Please provide a valid zip.
                            </div>

                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="validationCustom07" class="form-label">Mobile num</label>
                            <input type="number" class="form-control" id="validationCustom07" minlength="4" v-model="num" required>
                            <div class="invalid-feedback">
                                Enter your mobile num.
                            </div>

                        </div>
                        <hr class="mb-4">
                        <div>
                            <h4 class="my-5 mx-3">Payment</h4>

                            <div class="d-block my-5 mx-3">
                                <div class="custom-control custom-radio">
                                    <input id="cod" name="paymentMethod" value="cod" type="radio" class="custom-control-input payment" checked required>
                                    <label class="custom-control-label" for="cod">Cash on delevery</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="online" name="paymentMethod" value="online" type="radio" class="custom-control-input payment" required>
                                    <label class="custom-control-label" for="online">Pay online</label>
                                </div>
                            </div>
                        </div>

                        <hr class="mb-4">
                        <div class="col-12">
                            <button class="btn btny mb-4" type="submit">Place order</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <Footer />
    </div>
</div>
</template>

<script>
import BadgeIcon from '../components/BadgeIcon.vue'
import Footer from '../components/Footer.vue'
export default {
    components: {
        BadgeIcon,
        Footer
    },
    metaInfo() {
        return {
            title: this.$t('Checkout')
        }
    },
    name: 'checkout',
    middleware: 'auth',
    created() {
        this.loadData()

    },
    mounted: function () {
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    },
    data() {
        return {
            subTotal: '',
            products: [],
            name: '',
            lname: '',
            address: '',
            address2: '',
            state: '',
            city: '',
            zip: '',
            num: '',
            alert: ''
        }
    },
    methods: {
        loadData() {
            this.axios.get('api/basket').then(response => {
                this.products = response.data
                console.log(this.products)
                let sum = 0
                for (let i = 0; i < this.products.length; i++) {
                    sum += this.products[i].price
                }
                this.subTotal = sum

            })
        },
        placeOrder() {
            if (this.subTotal > 200000) {
                $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  Cart value canot exceed Rs. 2,00,000
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
            } else {
                this.axios.get('api/basket').then(response => {
                    this.products = response.data
                    if (document.getElementById("cod").checked == true) {
                        if (!this.name == '' && !this.lname == '' && !this.address == '' && !this.state == '' && !this.city == '' && !this.zip == '' && !this.num == '') {
                            this.axios.post('api/orders', {
                                'product': this.products,
                                'name': this.name,
                                'lname': this.lname,
                                'address': this.address,
                                'address2': this.address2,
                                'state': this.state,
                                'city': this.city,
                                'zip': this.zip,
                                'num': this.num
                            }).then(response => {
                                console.log(response.data)
                                this.axios.post('api/removeItemOrders', {
                                    'productid': this.products
                                }).then(response => {
                                    this.$root.$emit('changeBasketCount', response.data.basket_count)
                                    this.$router.push({
                                        name: 'success'
                                    })
                                })
                            })
                        }
                    } else if (document.getElementById("online").checked == true) {
                        if (!this.name == '' && !this.lname == '' && !this.address == '' && !this.state == '' && !this.city == '' && !this.zip == '' && !this.num == '') {
                            this.axios.post('api/onlinePay', {
                                'amount': this.subTotal,
                                'product': this.products,
                                'name': this.name,
                                'lname': this.lname,
                                'address': this.address,
                                'address2': this.address2,
                                'state': this.state,
                                'city': this.city,
                                'zip': this.zip,
                                'num': this.num
                            }).then(response => {
                                console.log(response.data)
                                let sendUrl = response.data.payment_request.longurl
                                window.location.href = sendUrl;
                            })
                        }
                    }

                })
            }
        }
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

.list-group {
    border: 1px solid rgb(92, 92, 92);
}

.list-group-item {
    border: 1px solid rgb(92, 92, 92);
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}

input,
select {
    border-radius: 20px;
    border: none;
}

.btny {
    position: relative;
    border-radius: none;
    background: none;
    width: 100%;
    color: #fff;
    z-index: 999;
    border: 2px solid #ffff00;
}

.btny:hover {
    background: #ffff00;
    color: #0d0d0d;
    border: 2px solid #ffff00;
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

.btny::after {
    content: '';
    position: absolute;
    left: 10px;
    top: 12px;
    height: 35px;
    width: 100%;
    border-bottom: 2px solid #ffff00;
    border-right: 2px solid #ffff00;
}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

/* Firefox */
input[type=number] {
    -moz-appearance: textfield;
}
</style>
