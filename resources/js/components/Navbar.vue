<template>
<div id="navmain">
    <div class="nav-box">
        <div style="font-size: 13px" class="container d-flex justify-content-end align-items-center">
            <div>
                <router-link :to="{ name : 'cat.all' }" class="detail mr-3 mt-1">
                    <i class="fas fa-home"></i>
                </router-link>
            </div>
            <div>
                <router-link :to="{ name : 'about' }" class="detail mr-3 mt-1">
                    About
                </router-link>
            </div>
            <div>
                <router-link :to="{ name : 'cat.all' }" class="detail mt-1">
                    Contact
                </router-link>
            </div>
        </div>
    </div>
    <div id="navbox">
        <nav class="navbar navbar-expand-lg navbar-dark nav">
            <div class="container">
                <router-link :to="{ name : 'cat.all' }" class="navbar-brand"><img src="/images/logomain.png" width="25%"></router-link>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false">
                    <span class="navbar-toggler-icon" />
                </button>

                <div id="navbarToggler" class="collapse navbar-collapse">
                    <div class="menu-ml">
                        <ul class="navbar-nav">
                            <li class="nav-item cart-hide">
                                <router-link :to="{ name : 'cat.all' }" class="nav-link" active-class="active">
                                    Home
                                </router-link>
                            </li>
                            <div class="vr"></div>
                            <li class="nav-item cart-hide">
                                <router-link :to="{ name: 'catagories' }" class="nav-link" active-class="active">
                                    Catagories
                                </router-link>
                            </li>
                            <div class="vr"></div>
                            <li class="nav-item cart-hide">
                                <router-link :to="{ name: 'brands.all' }" class="nav-link" active-class="active">
                                    Brands
                                </router-link>
                            </li>
                        </ul>
                    </div>

                    <ul class="navbar-nav ml-auto mob-none">
                        <form @submit.prevent="searchM" class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2 search" type="search" placeholder="Search" aria-label="Search" v-model="search">

                        </form>
                        <li v-if="user" class="nav-item cart-hide">
                            <router-link :to="{ name: 'cart' }" class="nav-link" active-class="active">
                                <i class="fas fa-shopping-cart fa-lg"></i>
                                <badgeIcon></badgeIcon>
                            </router-link>
                        </li>
                        <!-- Authenticated -->
                        <li v-if="user" class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-user fa-lg text-white"></i>
                                <!-- {{ user.name }} -->
                            </a>
                            <div class="dropdown-menu">
                                <p class="text-warning text-center">Hello! {{user.name}}</p>
                                <router-link :to="{ name: 'settings.profile' }" class="dropdown-item pl-3">
                                    <fa icon="cog" fixed-width />
                                    {{ $t('settings') }}
                                </router-link>

                                <div class="dropdown-divider" />
                                <router-link :to="{ name: 'wishlist' }" class="dropdown-item pl-3">
                                    <i class="fas fa-heart"></i>
                                    &nbsp;Wishlist
                                </router-link>

                                <div class="dropdown-divider" />
                                <router-link :to="{ name: 'myorders' }" class="dropdown-item pl-3">
                                    <i class="fas fa-tags"></i>
                                    &nbsp;Orders
                                </router-link>
                                <div class="dropdown-divider" />
                                <a href="#" class="dropdown-item pl-3" @click.prevent="logout">
                                    <fa icon="sign-out-alt" fixed-width />
                                    {{ $t('logout') }}
                                </a>

                            </div>
                        </li>
                        <!-- Guest -->
                        <template v-else>
                            <li class="nav-item">
                                <router-link :to="{ name: 'login' }" class="nav-link" active-class="active">
                                    {{ $t('login') }}
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'register' }" class="nav-link" active-class="active">
                                    {{ $t('register') }}
                                </router-link>
                            </li>
                        </template>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="container">
        <div class="hr"></div>
    </div>
    <div class="search-none">
        <div id="mob-search" class="mob-search d-flex justify-content-center align-items-center">
            <div v-if="user">
                <router-link :to="{ name: 'cart' }" class="nav-link" active-class="active">
                    <i style="color:grey" class="fas fa-shopping-cart fa-lg"></i>
                    <badgeIcon></badgeIcon>
                </router-link>
            </div>
            <div v-else>
                <router-link :to="{ name: 'login' }" class="nav-link text-white" active-class="active">
                    <i class="fas fa-sign-in-alt fa-lg"></i>
                </router-link>
            </div>

            <form @submit.prevent="searchM" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2 search-mob" type="search" placeholder="Search" aria-label="Search" v-model="search">
            </form>

            <div v-if="user" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-user fa-lg text-white"></i>
                    <!-- {{ user.name }} -->
                </a>
                <div class="dropdown-menu">
                    <p class="text-warning text-center">Hello! {{user.name}}</p>
                    <router-link :to="{ name: 'settings.profile' }" class="dropdown-item pl-3">
                        <fa icon="cog" fixed-width />
                        {{ $t('settings') }}
                    </router-link>

                    <div class="dropdown-divider" />
                    <router-link :to="{ name: 'wishlist' }" class="dropdown-item pl-3">
                        <i class="fas fa-heart"></i>
                        &nbsp;Wishlist
                    </router-link>

                    <div class="dropdown-divider" />
                    <router-link :to="{ name: 'myorders' }" class="dropdown-item pl-3">
                        <i class="fas fa-tags"></i>
                        &nbsp;Orders
                    </router-link>
                    <div class="dropdown-divider" />
                    <a href="#" class="dropdown-item pl-3" @click.prevent="logout">
                        <fa icon="sign-out-alt" fixed-width />
                        {{ $t('logout') }}
                    </a>

                </div>
            </div>
            <div v-else>
                <router-link :to="{ name: 'register' }" class="nav-link text-white" active-class="active">
                    <i class="fas fa-user-plus fa-lg"></i>
                </router-link>
            </div>

        </div>
    </div>
</div>
</template>

<script>
import {
    mapGetters
} from 'vuex'
import LocaleDropdown from './LocaleDropdown'

export default {
    components: {
        LocaleDropdown
    },

    data() {
        return {
            appName: window.config.appName,
            search: '',
            url: document.head.querySelector('meta[name="url"]').content
        }
    },

    computed: mapGetters({
        user: 'auth/user'
    }),

    mounted: function () {
        window.onscroll = function () {
            myFunction()
        };

        var navbar = document.getElementById("navbox");
        var sticky = navbar.offsetTop;

        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }
    },

    methods: {
        searchM() {
            // let url = this.url + '/api/search'
            // console.log(this.search)
            // this.axios.post(url, {
            //     'search': this.search
            // }).then(response => {
            //     console.log(response.data)
            //     this.$root.$emit('searchRes', response.data)
            //     this.$router.push({
            //         name: 'search'
            //     })
            // })
            this.$router.push({
                name: 'search',
                params: {
                    term: this.search
                }
            })
        },
        async logout() {
            // Log out the user.
            await this.$store.dispatch('auth/logout')

            // Redirect to login.
            this.$router.push({
                name: 'login'
            })
        },
    }
}
</script>

<style scoped>
#navbox {
    z-index: 9999999;
}

.sticky {
    position: fixed;
    box-shadow: 0 0 15px rgb(56, 56, 56);
    top: 0;
    width: 100%;
}

.nav {
    background-color: #0d0d0d;
}

.hr {
    width: 94%;
    background-color: #FFFF;
    height: 1px;
    margin: 0 auto;
}

.vr {
    width: 2px;
    background-color: #b50005;
    height: 42px;
    margin: 0 auto;
}

.nav-box {
    background-color: #b50005;
    height: 25px;
}

.search {
    border-radius: 25px;
    height: 75%;
    width: 88%;
    border: none;
}

#mob-search {
    display: none;
}

.search-mob {
    border-radius: 25px;
    width: 100%;
    width: 200px;
    border: none;
}

.dropdown-item {
    color: #FFF;
}

.dropdown-item:hover {
    background: #ffff00;
    color: #0d0d0d;
}

.dropdown-item:active {
    background: #b50005;
}

.dropdown-menu {
    background: #0d0d0d;
}

.mob-search {
    height: 60px;
    width: 100%;
    background: #0d0d0d;
    position: absolute;
    position: fixed;
    z-index: 99999;
    box-shadow: 0 0 15px rgb(56, 56, 56);
    bottom: 0;
}

.ul {
    margin-left: -1.563rem;
    list-style: none;
}

.detail:hover {
    text-decoration: none;
    /* color: #a70006;
    background: rgb(255, 255, 255); */
}

.detail {
    text-decoration: none;
    color: rgb(255, 255, 255);
}

/* .dropdown-toggle::after {
    content: none;
} */
</style>
