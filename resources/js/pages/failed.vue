<template>
<div class="container">
    <div class="failed d-flex flex-column justify-content-center align-items-center text-white my-5">
        <h3 class="my-3">Oops!</h3>
        <img src="images/del.png" alt="Success" width="15%">
        <h4 class="my-3">Payment Failed</h4>
        <div class="d-flex">
            <router-link :to="{name:'cat.all'}" class="btn btny mx-2">
                <span class="text-white">Home</span>
            </router-link>
            <router-link :to="{name:'cart'}" class="btn btny mx-2">
                <span class="text-white">Retry</span>
            </router-link>
        </div>
    </div>
</div>
</template>

<script>
export default {
    metaInfo() {
        return {
            title: this.$t('Failed')
        }
    },
}
</script>
