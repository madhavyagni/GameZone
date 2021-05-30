<template>
<div class="container">
    <div class="row my-5 heit">
        <div class="col-md-3">
            <card class="settings-card cat-card">
                <h5 class="text-white">Settings</h5>
                <hr style="background:#fff">
                <ul class="nav flex-column nav-pills">
                    <li v-for="tab in tabs" :key="tab.route" class="nav-item">
                        <router-link :to="{ name: tab.route }" class="nav-link cat-li" active-class="active">
                            <fa :icon="tab.icon" fixed-width />
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
    <Footer />
</div>
</template>

<script>
export default {
    middleware: 'auth',
    created() {
        this.cartBadge()
    },
    methods: {
        cartBadge() {
            $('.cart-hide').show()
        }
    },
    computed: {
        tabs() {
            return [{
                    icon: 'user',
                    name: this.$t('profile'),
                    route: 'settings.profile'
                },
                {
                    icon: 'lock',
                    name: this.$t('password'),
                    route: 'settings.password'
                }
            ]
        }
    }
}
</script>

<style scoped>
.heit{
  height: 100vh;
}

.settings-card .card-body {
    padding: 0;
}

.cat-card {
    background: #252525;
    border: none;
    border-radius: 1.25rem;
    box-shadow: 0 0 35px rgb(175, 175, 175, 0.5) inset;
}

.cat-li {
    color: #fff;
}

.nav-pills>li>.cat-li.active {
    background-color: #ffff00;
    color: #0d0d0d;
}
</style>
