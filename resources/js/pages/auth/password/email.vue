<template>
<div class="container">
    <div class="row">
        <div class="col-lg-8 m-auto">
            <card class="cat-card my-5">
                <h5 class="text-white">Password reset</h5>
                <hr style="background:#fff">
                <form @submit.prevent="send" @keydown="form.onKeydown($event)">
                    <alert-success :form="form" :message="status" />

                    <!-- Email -->
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label text-md-right text-white">{{ $t('email') }}</label>
                        <div class="col-md-7">
                            <input v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" type="email" name="email">
                            <has-error :form="form" field="email" />
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="form-group row">
                        <div class="col-md-9 ml-md-auto">
                            <v-button :loading="form.busy">
                                {{ $t('reset') }}
                            </v-button>
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

export default {
    middleware: 'guest',

    metaInfo() {
        return {
            title: this.$t('reset_password')
        }
    },

    data: () => ({
        status: '',
        form: new Form({
            email: ''
        })
    }),

    methods: {
        async send() {
            const {
                data
            } = await this.form.post('/api/password/email')

            this.status = data.status

            this.form.reset()
        }
    }
}
</script>
<style scoped>
input {
    border-radius: 20px;
    border: none;
}
</style>

