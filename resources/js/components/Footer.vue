<template>
<div>
    <div class="hr2 my-4"></div>
    <div class="row px-4 py-4 text-white">
        <div class="col-sm-12 col-md-3">
            <img src="/images/logomain.png" alt="" width="60%">
        </div>
        <div class="col-sm-12 col-md-3">
            <h2 class="mb-4">Site Map</h2>
            <ul>
                <li>
                    <router-link :to="{name:'cat.all'}" class="detail">
                        Home
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'catagories'}" class="detail">
                        Catagories
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.all'}" class="detail">
                        Contact
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'about'}" class="detail">
                        About
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.all'}" class="detail">
                        Terms of service
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.all'}" class="detail">
                        Privacy polocy
                    </router-link>
                </li>
            </ul>
        </div>
        <div class="col-sm-12 col-md-3">
            <h2 class="mb-4">Shop</h2>
            <ul>
                <li>
                    <router-link :to="{name:'cat.monitors'}" class="detail">
                        Monitors
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.consoles'}" class="detail">
                        Consoles
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.cabinets'}" class="detail">
                        Cabinets
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.prebult'}" class="detail">
                        Pre Bult Pc's
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.gphards'}" class="detail">
                        Graphics Cards
                    </router-link>
                </li>
                <li>
                    <router-link :to="{name:'cat.accessories'}" class="detail">
                        Accessories
                    </router-link>
                </li>
            </ul>
        </div>
        <div class="col-sm-12 col-md-3">
            <h2 class="mb-4">Payment Gatway</h2>
            <img src="/images/instamojo.png" alt="" width="100%">
            <img src="/images/pmodes.png" alt="" width="100%">
        </div>
    </div>
    <div style="height:150px" class="copyright text-white d-flex justify-content-center align-items-center">
        <h5>All Rights Reserved &#169; 2021</h5>
    </div>
</div>
</template>

<script>
export default {
    name: 'Footer'
}
</script>

<style scoped>
ul {
    list-style: none;
    margin-left: -38px;
}

.detail {
    text-decoration: none;
    color: rgb(247, 247, 247);
}

.detail:hover {
    text-decoration: none;
}
</style>
