<template>
<div class="container">
    <div class="success d-flex flex-column justify-content-center align-items-center text-white my-5">
        <h3 class="my-3">Thank You</h3>
        <img src="images/success.png" alt="Success" width="15%">
        <h4 class="mt-3 mb-0">Your order has placed</h4>
        <h4 class="mt-0 mb-3">Successfully</h4>
        <div class="d-flex">
            <router-link :to="{name:'cat.all'}" class="btn btny mx-2">
                <span class="text-white">Home</span>
            </router-link>
            <router-link :to="{name:'myorders'}" class="btn btny mx-2">
                <span class="text-white">Orders</span>
            </router-link>
        </div>
    </div>
</div>
</template>

<script>
export default {
    metaInfo() {
        return {
            title: this.$t('Success')
        }
    },
}
</script>
