<template>
<span class="badge bg-warning text-dark align-top">{{basketCount}}</span>
</template>
<script>
export default {
    name: 'BadgeIcon',
    created() {
        this.loadData()
    },
    data(){
        return{
            basketCount: ''
        }
    },
    methods: {
        async loadData(){
            let response = await axios.get('api/count')
            this.basketCount = response.data.basket_count
            this.$root.$emit('changeBasketCount', this.basketCount)
        }
    },
    mounted() {
        this.$root.$on('changeBasketCount', (newBasketCount)=>{
            this.basketCount = newBasketCount
        })
    }
}
</script>
<style scoped>
.badge{
    border-radius: 50%;
}
</style>
