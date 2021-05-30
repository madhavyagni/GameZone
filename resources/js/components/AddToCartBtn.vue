<template>
<div>
    <div v-if="user">
        <a href="#" @click.prevent="addTocart"><i style="color: grey;" class="fas fa-shopping-cart fa-lg mr-2"></i></a>
    </div>
    <div v-else>
        <a href="#" @click.prevent="noUser"><i style="color: grey;" class="fas fa-shopping-cart fa-lg mr-2"></i></a>
    </div>
</div>
</template>

<script>
import {
    mapGetters
} from 'vuex'
export default {
    name: 'AddToCartBtn',
    props: {
        product: {
            required: true,
            type: Object
        }
    },
    computed: mapGetters({
        user: 'auth/user'
    }),
    methods: {
        async addTocart() {
            await this.axios.post('/api/cart', {
                'productid': this.product.id
            }).then((response) => {
                console.log(response.data.message)
                this.$root.$emit('changeBasketCount', response.data.basket_count)
                this.$root.$emit('alert', response.data.message)
            })
        },
        noUser() {
            this.$root.$emit('alert', '<p style="background:#d9534f" class="p-3">You must login first</p>')
        }
    }
}
</script>
<style scoped>
.fa-shopping-cart{
  transition: transform .7s;
}

.fa-shopping-cart:hover{
  transform: scale(1.8);
}
</style>
