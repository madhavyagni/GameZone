<template>
<div>
    <div class="bg-about"></div>
    <div class="container">
        <div class="about p-5 my-5 text-white">
            <h3 class="my-4">OUR MOTTO: BUILDING YOUR DREAM PC</h3>
            <p>Our team at GameZone is driven through our passion for advanced computing and technology. We hold the highest standards when it comes to build PCs. Our team consists of professionals who would love to hear what you need. We make sure that we offer the best solution to customers keeping their budget in consideration. We learn about what you do, we listen to what you need and we tell you if there is anything that you don’t need. Meeting the best standards for building PCs and understanding the requirement of every user, GameZone is driven by the passion for advanced computing and technology. Comprising of professionals and specialists, our team at GameZone understand your requirements when it comes to build custom PCs and make sure that we provide the best solutions to you within your budget.</p>
        </div>
        <div class="globe p-5 d-flex justify-content-md-around align-items-center text-white mb-5 flex-wrap">
            <div style="width:350px">
                <h1 style="color:#ed1d26;">Selling across the
                    nation and beyond</h1>
                <p class="mt-4">We are shipping our products almost every where in the country and we also ship our products overseas.</p>
            </div>
            <img src="images/globe.png" alt="globe" width="50%">
        </div>
    </div>
    <div class="truck py-4 mb-5">
        <div class="container d-flex align-items-center justify-content-md-around">
            <div class="sec1 d-flex flex-wrap align-items-center justify-content-center">
                <img src="images/truck.png" alt="" width="20%">
                <h5 class="mx-3 text-white text-center"><b>Free Shipping</b></h5>
            </div>
            <div class="sec1 d-flex flex-wrap align-items-center justify-content-center">
                <img src="images/percent.png" alt="" width="20%">
                <h5 class="mx-3 text-white text-center"><b>Exclusive Deals</b></h5>
            </div>
            <div class="sec1 d-flex flex-wrap align-items-center justify-content-center">
                <img src="images/secruty.png" alt="" width="20%">
                <h5 class="mx-3 text-white text-center"><b>Secure Checkout</b></h5>
            </div>
        </div>
    </div>
    <div class="container">
        <Footer />
    </div>
</div>
</template>

<script>
import Footer from '../components/Footer.vue'
export default {
    components: {
        Footer
    },
    metaInfo() {
        return {
            title: this.$t('About')
        }
    },
}
</script>
