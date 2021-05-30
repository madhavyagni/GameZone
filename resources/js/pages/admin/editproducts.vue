<template>
<div>
    <div class="alertm"></div>
    <form id="form" @submit.prevent="editProduct" class="row g-3 needs-validation text-white" enctype="multipart/form-data" novalidate>
        <div class="col-md-12 mb-3">
            <label for="validationCustom01" class="form-label">Product name</label>
            <input type="text" class="form-control" id="validationCustom01" minlength="4" v-model="product.name" required>
            <div class="invalid-feedback">
                Enter Product Name.
            </div>

        </div>
        <div class="col-md-12 mb-3">
            <label for="validationCustom02" class="form-label">Description</label>
            <textarea class="form-control description" id="validationCustom02" v-model="product.description" rows="5" minlength="15" required>

            </textarea>
            <div class="invalid-feedback">
                Enter description.
            </div>

        </div>
        <div class="col-md-12 mb-3">
            <label for="validationCustom03" class="form-label">Details</label>
            <textarea class="form-control details" id="validationCustom03" v-model="product.details" rows="8" minlength="15" required>

            </textarea>
            <div class="invalid-feedback">
                Enter details.
            </div>

        </div>
        <div class="col-md-12 mb-3">
            <label for="validationCustom04" class="form-label">Spesification</label>
            <textarea class="form-control spesification" id="validationCustom04" v-model="product.specification" rows="24" minlength="15" required>

            </textarea>
            <div class="invalid-feedback">
                Enter spesification.
            </div>

        </div>
        <div class="col-md-4 mb-3">
            <label for="image">Upload main img</label><br>
            <input type="file" class="form-control-file my-2" id="image" v-on:change="editImage">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image1">Upload img2</label><br>
            <input type="file" class="form-control-file my-2" id="image1" v-on:change="editImage1">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image2">Upload img3</label><br>
            <input type="file" class="form-control-file my-2" id="image2" v-on:change="editImage2">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image3">Upload img4</label><br>
            <input type="file" class="form-control-file my-2" id="image3" v-on:change="editImage3">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image4">Upload img5</label><br>
            <input type="file" class="form-control-file my-2" id="image4" v-on:change="editImage4">
        </div>
        <div class="col-md-4 mb-3">

        </div>
        <div class="col-md-6 mb-3">
            <label for="validationCustom05" class="form-label">Price</label>
            <input type="text" class="form-control" id="validationCustom05" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" v-model="product.price" required>
            <div class="invalid-feedback">
                Please enter valid amount.
            </div>

        </div>
        <div class="col-md-6 mb-3">
            <label for="validationCustom06" class="form-label">sale price</label>
            <input type="text" class="form-control" id="validationCustom06" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" v-model="product.sale_price" required>
            <div class="invalid-feedback">
                Please enter a valid amount.
            </div>

        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom07" class="form-label">Catagory</label>
            <select class="custom-select d-block w-100" id="validationCustom07" v-model="product.cat" required>
                <option value="">Choose...</option>
                <option>gcards</option>
                <option>cabinets</option>
            </select>
            <div class="invalid-feedback">
                Select catagory.
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom08" class="form-label">Brand</label>
            <select class="custom-select d-block w-100" id="validationCustom08" v-model="product.brand" required>
                <option value="">Choose...</option>
                <option>msi</option>
                <option>nvdia</option>
                <option>all</option>
            </select>
            <div class="invalid-feedback">
                Select Brand.
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom09" class="form-label">Best selling</label>
            <select class="custom-select d-block w-100" id="validationCustom09" v-model="product.bestselling">
                <option value="">Choose...</option>
                <option>0</option>
                <option>1</option>
            </select>
        </div>
        <hr class="mb-4">
        <div class="col-12 mt-5">
            <button class="btn btny mb-5 text-white" type="submit">Update product</button>
        </div>
    </form>
</div>
</template>

<script>
export default {
    data() {
        return {
            product: {},
            name: '',
            description: '',
            details: '',
            specification: '',
            price: '',
            sale_price: '',
            cat: '',
            brand: '',
            bestselling: '',
            url: document.head.querySelector('meta[name="url"]').content,
        }
    },
    created() {
        this.loadData();
    },
    methods: {
        loadData() {
            let url = this.url + `/api/getProduct/${this.$route.params.id}`
            this.axios.get(url).then(response => {
                this.product = response.data
                console.log(response.data)
            })
        },
        editProduct() {
            let formData = new FormData()
            formData.append('name', this.product.name)
            formData.append('slug', this.product.name)
            formData.append('description', this.product.description)
            formData.append('details', this.product.details)
            formData.append('specification', this.product.specification)
            if (this.image) {
                formData.append('image', this.image)
            }
            if (this.image1) {
                formData.append('image1', this.image1)
            }
            if (this.image2) {
                formData.append('image2', this.image2)
            }
            if (this.image3) {
                formData.append('image3', this.image3)
            }
            if (this.image4) {
                formData.append('image4', this.image4)
            }
            formData.append('price', this.product.price)
            formData.append('sale_price', this.product.sale_price)
            formData.append('cat', this.product.cat)
            formData.append('brand', this.product.brand)
            formData.append('bestselling', this.product.bestselling)

            console.log(formData)

            let url = this.url + `/api/editProduct/${this.$route.params.id}`
            this.axios.post(url, formData).then(response => {
                console.log(response.data)
                if (response.data.status == true) {
                    $('.alertm').html(`<div style="border:none" class="alert alert-warning bg-dark text-white alert-dismissible fade show" role="alert">
  ${response.data.message}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>`)
                }
            })
        },
        editImage(e) {
            this.image = e.target.files[0];
            console.log(this.image)
        },
        editImage1(e) {
            this.image1 = e.target.files[0];
            console.log(this.image1)
        },
        editImage2(e) {
            this.image2 = e.target.files[0];
            console.log(this.image2)
        },
        editImage3(e) {
            this.image3 = e.target.files[0];
            console.log(this.image3)
        },
        editImage4(e) {
            this.image4 = e.target.files[0];
            console.log(this.image4)
        }
    }
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
