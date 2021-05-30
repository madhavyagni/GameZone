<template>
<div>
    <div class="alertm"></div>
    <div class="hide-content">
        <div class="row mr-0 ml-0">
            <div v-for="product in products" :key="product.id" class="col-sm-12 col-md-4 mb-4 d-flex justify-content-center align-items-center flex-column">
                <router-link :to="{name:'detail', params: {id:product.id}}" class="detail">
                    <div class="box2 cat-box">
                        <img :src="'/images/' + product.image_name" class="d-block w-100">
                        <div class="content2 p-4">
                            <h5><b>{{product.name}}</b></h5>
                            <h5 class="text-danger"> <b>Rs {{product.sale_price}}</b> </h5>
                            <p class="text-danger"> <b>Catagory: {{product.cat}}</b> </p>
                            <span v-html="product.description">{{product.description}}</span>
                            <div class="btns d-flex justify-content-end">
                                <router-link :to="{name:'admin.editProduct', params: {id:product.id}}" class="mr-2"><i class="fas fa-edit fa-lg text-warning mr-1"></i></router-link>
                                <a href="#" @click.prevent="removeItem(product.id)" type="button" class="mr-2"><i style="color:red" class="fas fa-trash-alt fa-lg mr-1"></i></a>
                            </div>
                        </div>
                    </div>
                </router-link>
            </div>
            <div style="margin: 0 auto"><Pagination :meta="meta" v-on:Pagination="loadData"></Pagination></div>
        </div>
    </div>
    <div class="empty-msg">
        <div class="d-flex justify-content-center align-items-center">
            <h3 class="empty-head text-muted my-5"></h3>
        </div>
    </div>
</div>
</template>

<script>
import Pagination from '../../components/Pagination.vue'
export default {
  components: { Pagination },
    middleware: 'auth',
    created() {
        this.loadData()
    },
    methods: {
       loadData(page) {
            let url = this.url + '/api/showProducts'
            this.axios.get(url, {params:{page}}).then(response => {
                this.products = response.data.data
                this.meta = response.data.meta
                console.log(this.products)
                this.products.forEach(element => {
                    let x = element.sale_price;
                    x = x.toString();
                    let lastThree = x.substring(x.length - 3);
                    let otherNumbers = x.substring(0, x.length - 3);
                    if (otherNumbers != '')
                        lastThree = ',' + lastThree;
                    let res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + '.00';
                    element.sale_price = res
                });
                if (this.products.length == 0) {
                    $('.hide-content').hide()
                    $('.empty-msg').show()
                } else if (this.products.length !== 0) {
                    $('.hide-content').show()
                    $('.empty-msg').hide()
                }
            })
        },
        removeItem(id) {
            let url = this.url + '/api/removeListAdmin'
            let response = axios.post(url, {
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
        setTimeout(function () {
            $('.empty-head').html('No Products To Show')
        }, 500);
    },
    data() {
        return {
            products: [],
            meta: {},
            url: document.head.querySelector('meta[name="url"]').content,
        }
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
</style>
