<template>
<div class="text-right">
    <div v-if="user"><a href="#" @click.prevent="addTocart" id="wishlist" class="wishlist"><span style="color: red;"><i class="far fa-heart fa-lg ml-2"></i></span></a></div>
    <div v-else><a href="#" @click.prevent="noUser" id="wishlist" class="wishlist"><span style="color: red;"><i class="far fa-heart fa-lg ml-2"></i></span></a></div>
</div>
</template>

<script>
import {
    mapGetters
} from 'vuex'
export default {
    name: 'AddToWishlist',
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
            let response = await axios.post('/api/wishlist', {
                'productid': this.product.id
            })
            console.log(response.data.message)
            this.$root.$emit('alert', response.data.message)
        },
        noUser() {
             this.$root.$emit('alert', '<p style="background:#d9534f" class="p-3">You must login first</p>')
        }
    }
}
</script>

<style scoped>
.fa-heart{
  transition: transform .7s;
}

.fa-heart:hover{
  transform: scale(1.8);
}
</style>
