<template>
<div>
    <div class="alertm"></div>
    <div class="d-yes">
        <div class="container">
            <div class="mt-5">
                <div class="d-flex justify-content-center">
                    <!-- <card class="text-center cat-card mb-5">
                        <h5 class="text-white">Catagories</h5>
                        <hr style="background:#fff">
                        <ul class="nav flex-column d-flex nav-pills text-left">
                            <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                                <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                                    {{ tab.name }}
                                </router-link>
                            </li>
                        </ul>
                    </card> -->
                    <div class="cat">
                        <div>
                            <ul class="nav nav-pills text-left">
                                <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                                    <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                                        {{ tab.name }}
                                    </router-link>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <transition name="fade" mode="out-in">

                        <router-view />
                    </transition>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <Footer />
    </div>
</div>
</template>

<script>
export default {
    data() {
        return {
            url: document.head.querySelector('meta[name="url"]').content,
            alert: ''
        }
    },
    metaInfo() {
        return {
            title: this.$t('Brands')
        }
    },
    mounted: function () {
        this.$root.$on('alert', (alert) => {
            this.alert = alert
            $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${this.alert}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
        })
    },
    computed: {
        tabs() {
            return [{
                    name: this.$t('All'),
                    route: 'brands.all'
                },
                {
                    name: this.$t('ASUS'),
                    route: 'brands.asus'
                },
                {
                    name: this.$t('Nvidia'),
                    route: 'brands.nvidia'
                },
                {
                    name: this.$t('MSI'),
                    route: 'brands.msi'
                },
                {
                    name: this.$t('Sony'),
                    route: 'brands.sony'
                },
                {
                    name: this.$t('Xbox'),
                    route: 'brands.xbox'
                },
                {
                    name: this.$t('lenovo'),
                    route: 'brands.lenovo'
                },
                {
                    name: this.$t('Logitech'),
                    route: 'brands.logitech'
                },
                {
                    name: this.$t('Zotac'),
                    route: 'brands.zotac'
                },
            ]
        }
    },
}
</script>

<style scoped>
ul {
    display: flex;
    flex-direction: row;
    widows: 100%;
}

.container {
    min-height: 80vh;
}

.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}
</style>
