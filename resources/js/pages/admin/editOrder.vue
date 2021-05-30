<template>
<div>
    <div class="alertm"></div>
    <form id="form" @submit.prevent="editOrder" class="row g-3 needs-validation text-white" novalidate>
        <div class="col-md-6 mb-3">
            <label for="validationCustom01" class="form-label">Product name</label>
            <input type="text" class="form-control" id="validationCustom01" minlength="4" v-model="order.name" required>
            <div class="invalid-feedback">
                Enter Product Name.
            </div>

        </div>

        <div class="col-md-6 mb-3">
            <label for="validationCustom05" class="form-label">Price</label>
            <input type="text" class="form-control" id="validationCustom05" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" v-model="order.price" required>
            <div class="invalid-feedback">
                Please enter valid amount.
            </div>

        </div>

        <div class="col-md-4 mb-3">
            <label for="validationCustom07" class="form-label">Order status</label>
            <select class="custom-select d-block w-100" id="validationCustom07" v-model="order.orderstatus" required>

                <option>pending</option>
                <option>cancelled</option>
                <option>delivered</option>
            </select>
            <div class="invalid-feedback">
                Select catagory.
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom08" class="form-label">Payment status</label>
            <select class="custom-select d-block w-100" id="validationCustom08" v-model="order.paymentstatus" required>

                <option>pending</option>
                <option>completed</option>
            </select>
            <div class="invalid-feedback">
                Select Brand.
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom09" class="form-label">Order type</label>
            <select class="custom-select d-block w-100" id="validationCustom09" v-model="order.ordertype">

                <option>Cash On Delivery</option>
                <option>Online</option>
            </select>
        </div>
        <hr class="mb-4">
        <div class="col-12 mt-5">
            <button class="btn btny mb-5 text-white" type="submit">Update order</button>
        </div>
    </form>
</div>
</template>

<script>
export default {
    data() {
        return {
            order: {},
            name: '',
            price: '',
            orderstatus: '',
            paymentstatus: '',
            ordertype: '',
            url: document.head.querySelector('meta[name="url"]').content,
        }
    },
    created() {
        this.loadData();
    },
    methods: {
        loadData() {
            let url = this.url + `/api/getOrder/${this.$route.params.id}`
            this.axios.get(url).then(response => {
                this.order = response.data
                console.log(response.data)
            })
        },
        editOrder() {
            let formData = new FormData()
            formData.append('name', this.order.name)
            formData.append('price', this.order.price)
            formData.append('orderstatus', this.order.orderstatus)
            formData.append('paymentstatus', this.order.paymentstatus)
            formData.append('ordertype', this.order.ordertype)

            console.log(formData)

            let url = this.url + `/api/editOrder/${this.$route.params.id}`
            this.axios.post(url, formData).then(response => {
                console.log(response.data)
                if (response.data.status == true) {
                    $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${response.data.message}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
                }
            })
        },
    }
}
</script>

<style scoped>
.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}
</style>
