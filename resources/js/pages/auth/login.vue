<template>
<div class="container">
    <div class="row my-5">
        <div class="col-lg-8 m-auto">
            <card class="cart-card">
                <h5 class="text-white">Login</h5>
                <hr style="background:#fff">
                <form @submit.prevent="login" @keydown="form.onKeydown($event)">
                    <!-- Email -->
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label text-md-right text-white">{{ $t('email') }}</label>
                        <div class="col-md-7">
                            <input v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" type="email" name="email">
                            <has-error :form="form" field="email" />
                        </div>
                    </div>

                    <!-- Password -->
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label text-md-right text-white">{{ $t('password') }}</label>
                        <div class="col-md-7">
                            <input v-model="form.password" :class="{ 'is-invalid': form.errors.has('password') }" class="form-control" type="password" name="password">
                            <has-error :form="form" field="password" />
                        </div>
                    </div>

                    <!-- Remember Me -->
                    <div class="form-group row">
                        <div class="col-md-3" />
                        <div class="col-md-7 d-flex">
                            <checkbox v-model="remember" name="remember" class="text-white">
                                {{ $t('remember_me') }}
                            </checkbox>

                            <router-link :to="{ name: 'password.request' }" class="small ml-auto my-auto text-warning">
                                {{ $t('forgot_password') }}
                            </router-link>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-7 offset-md-3 d-flex">
                            <!-- Submit Button -->
                            <v-button :loading="form.busy">
                                {{ $t('login') }}
                            </v-button>
                            <LoginWithGithub />
                        </div>
                    </div>
                </form>
            </card>
        </div>
    </div>
</div>
</template>

<script>
import Form from 'vform'
import Cookies from 'js-cookie'
import LoginWithGithub from '~/components/LoginWithGithub'

export default {
    components: {
        LoginWithGithub
    },

    middleware: 'guest',

    metaInfo() {
        return {
            title: this.$t('login')
        }
    },

    data: () => ({
        form: new Form({
            email: '',
            password: ''
        }),
        remember: false
    }),

    methods: {
        async login() {
            // Submit the form.
            const {
                data
            } = await this.form.post('/api/login')

            // Save the token.
            this.$store.dispatch('auth/saveToken', {
                token: data.token,
                remember: this.remember
            })

            // Fetch the user.
            await this.$store.dispatch('auth/fetchUser')

            // Redirect home.
            this.redirect()
        },

        redirect() {
            const intendedUrl = Cookies.get('intended_url')

            if (intendedUrl) {
                Cookies.remove('intended_url')
                this.$router.push({
                    path: intendedUrl
                })
            } else {
                this.$router.push({
                    name: 'cat.all'
                })
            }
        }
    }
}
</script>

<style scoped>
.cart-card {
    background: #252525;
    border: .3px solid rgb(131, 131, 131);
    border-radius: 20px;
}

input {
    border-radius: 20px;
    border: none;
}

</style>
