<template>
<div>
    <div class="alertm"></div>
    <div class="d-yes">
        <div class="container">
            <div class="row web-cat mt-5">
                <div class="col-md-3">
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
            title: this.$t('Catagories')
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
                    route: 'catagories.all'
                },
                {
                    name: this.$t('Monitors'),
                    route: 'catagories.monitors'
                },
                {
                    name: this.$t('Consoles'),
                    route: 'catagories.consoles'
                },
                {
                    name: this.$t('Cabinets'),
                    route: 'catagories.cabinets'
                },
                {
                    name: this.$t('Pre Bult Pc’s'),
                    route: 'catagories.prebult'
                },
                {
                    name: this.$t('CPU’s'),
                    route: 'catagories.cpu'
                },
                {
                    name: this.$t('Graphics Cards'),
                    route: 'catagories.gphards'
                },
                {
                    name: this.$t('Accessories'),
                    route: 'catagories.accessories'
                },
            ]
        }
    },
}
</script>

<style scoped>
.alertm {
    position: fixed;
    z-index: 9999999999999999;
    right: 50px;
    top: 60px;
}
</style>
