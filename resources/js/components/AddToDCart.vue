<template>
<div>
    <div v-if="user">
        <a href="#" @click.prevent="addTocart" class="btn btny btn-dark">Add to cart</a>
    </div>
    <div v-else>
        <a href="#" @click.prevent="noUser" class="btn btny btn-dark">Add to cart</a>
    </div>
</div>
</template>

<script>
import {
    mapGetters
} from 'vuex'
export default {
    name: 'AddToDCart',
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
.btny {
    position: relative;
    border-radius: none;
    background: none;
    width: 300px;
    z-index: 999;
    border: 2px solid #ffff00;
}

.btny:hover {
    background: #ffff00;
    color: #0d0d0d;
    border: 2px solid #ffff00;
}

.btny:focus {
    background: none !important;
    color: #fff !important;
    border: 2px solid #ffff00 !important;
    border-radius: none !important;
    outline: none;
    box-shadow: none;
}

.btny::after {
    content: '';
    position: absolute;
    left: 6px;
    top: 12px;
    height: 35px;
    width: 300px;
    border-bottom: 2px solid #ffff00;
    border-right: 2px solid #ffff00;
}

@media screen and (max-width: 991px) {
    .btny {
        width: 170px;
    }

    .btny::after {
        content: '';
        width: 170px;
        top: 7px;
    }
}
</style>
