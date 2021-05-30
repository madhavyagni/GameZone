<template>
<div>
    <div class="d-yes">
        <div class="container">
            <div class="row web-cat mt-5">
                <div class="col-md-3">
                    <card class="text-center cat-card mb-5">
                        <h5 class="text-white">Manage</h5>
                        <hr style="background:#fff">
                        <ul class="nav flex-column nav-pills text-left">
                            <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                                <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                                    {{ tab.name }}
                                </router-link>
                            </li>
                        </ul>
                    </card>
                </div>

                <div class="col-md-9">
                    <transition name="fade" mode="out-in">
                        <router-view />
                    </transition>
                </div>
            </div>
            <div class="row mob-cat d-flex justify-content-center flex-wrap">
                <div class="cat-main p-5">
                    <card class="text-center cat-card mb-5">
                        <h5 class="text-white">Catagories</h5>
                        <hr style="background:#fff">
                        <ul class="nav flex-column nav-pills text-left">
                            <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                                <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                                    {{ tab.name }}
                                </router-link>
                            </li>
                        </ul>
                    </card>
                </div>

                <div class="p-0 m-0">
                    <transition name="fade" mode="out-in">
                        <router-view />
                    </transition>
                </div>
            </div>
        </div>
    </div>
</div>
</template>

<script>
export default {
    name: 'adminpanel',
    middleware: 'auth',
    mounted: (function () {
        $(document).ready(function () {
            $(".d-yes").hide()
        })
        let url = this.url + '/api/verifyAdmin'
        this.axios.get(url).then(response => {
            if (response.data.logintype == 'ADM') {
                $('.d-yes').show()
            } else {
                this.$router.push({
                    name: 'cat.all'
                })
            }
        })
    }),
    data() {
        return {
            url: document.head.querySelector('meta[name="url"]').content,
        }
    },
    computed: {
        tabs() {
            return [{
                    name: this.$t('products'),
                    route: 'admin.products'
                },
                {
                    name: this.$t('orders'),
                    route: 'admin.orders'
                },
                {
                    name: this.$t('add product'),
                    route: 'admin.addproducts'
                },
            ]
        }
    },
}
</script>

<style scoped>
.cat-card {
    height: 70vh;
}
</style>
