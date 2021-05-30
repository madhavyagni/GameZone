<template>
<div>
    <div class="alertm"></div>
    <form id="form" @submit.prevent="saveProduct" class="row g-3 needs-validation text-white" enctype="multipart/form-data" novalidate>
        <div class="col-md-12 mb-3">
            <label for="validationCustom01" class="form-label">Product name</label>
            <input type="text" class="form-control" id="validationCustom01" minlength="4" v-model="name" required>
            <div class="invalid-feedback">
                Enter Product Name.
            </div>

        </div>
        <div class="col-md-12 mb-3">
            <label for="validationCustom02" class="form-label">Description</label>
            <textarea class="form-control description" id="validationCustom02" rows="5" minlength="15" required>
            <ul class='ul'>
              <li> <b></b></li>
              <li> <b></b></li>
              <li> <b></b></li>
            </ul>
            </textarea>
            <div class="invalid-feedback">
                Enter description.
            </div>

        </div>
        <div class="col-md-12 mb-3">
            <label for="validationCustom03" class="form-label">Details</label>
            <textarea class="form-control details" id="validationCustom03" rows="8" minlength="15" required>
            <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            </ul>
            </textarea>
            <div class="invalid-feedback">
                Enter details.
            </div>

        </div>
        <div class="col-md-12 mb-3">
            <label for="validationCustom04" class="form-label">Spesification</label>
            <textarea class="form-control spesification" id="validationCustom04" rows="24" minlength="15" required>
            <tr>
                <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border"></td>
                <td style="border: none;" class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            <tr>
                <td style="border-right: 1px solid #fff;" class="px-5"></td>
                <td class="px-5"></td>
            </tr>
            </textarea>
            <div class="invalid-feedback">
                Enter spesification.
            </div>

        </div>
        <div class="col-md-4 mb-3">
            <label for="image">Upload main img</label><br>
            <input type="file" class="form-control-file my-2" id="image" v-on:change="saveImage">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image1">Upload img2</label><br>
            <input type="file" class="form-control-file my-2" id="image1" v-on:change="saveImage1">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image2">Upload img3</label><br>
            <input type="file" class="form-control-file my-2" id="image2" v-on:change="saveImage2">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image3">Upload img4</label><br>
            <input type="file" class="form-control-file my-2" id="image3" v-on:change="saveImage3">
        </div>
        <div class="col-md-4 mb-3">
            <label for="image4">Upload img5</label><br>
            <input type="file" class="form-control-file my-2" id="image4" v-on:change="saveImage4">
        </div>
        <div class="col-md-4 mb-3">

        </div>
        <div class="col-md-6 mb-3">
            <label for="validationCustom05" class="form-label">Price</label>
            <input type="text" class="form-control" id="validationCustom05" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" v-model="price" required>
            <div class="invalid-feedback">
                Please enter valid amount.
            </div>

        </div>
        <div class="col-md-6 mb-3">
            <label for="validationCustom06" class="form-label">sale price</label>
            <input type="text" class="form-control" id="validationCustom06" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" v-model="sale_price" required>
            <div class="invalid-feedback">
                Please enter a valid amount.
            </div>

        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom07" class="form-label">Catagory</label>
            <select class="custom-select d-block w-100" id="validationCustom07" v-model="cat" required>
                <option value="">Choose...</option>
                <option>gcards</option>
                <option>monitors</option>
                <option>cabinets</option>
            </select>
            <div class="invalid-feedback">
                Select catagory.
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationCustom08" class="form-label">Brand</label>
            <select class="custom-select d-block w-100" id="validationCustom08" v-model="brand" required>
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
            <select class="custom-select d-block w-100" id="validationCustom09" v-model="bestselling">
                <option value="">Choose...</option>
                <option>0</option>
                <option>1</option>
            </select>
        </div>
        <hr class="mb-4">
        <div class="col-12 mt-5">
            <button class="btn btny mb-5 text-white" type="submit">Store product</button>
        </div>
    </form>
</div>
</template>

<script>
export default {
    name: 'addproduct',
    data() {
        return {
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
    methods: {
        saveProduct() {
            let description = $('.description').val()
            let details = $('.details').val()
            let specification = $('.spesification').val()
            this.description = description
            this.details = details
            this.specification = specification
            let formData = new FormData()
            formData.append('name', this.name)
            formData.append('slug', this.name)
            formData.append('description', this.description)
            formData.append('details', this.details)
            formData.append('specification', this.specification)
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
            formData.append('price', this.price)
            formData.append('sale_price', this.sale_price)
            formData.append('cat', this.cat)
            formData.append('brand', this.brand)
            formData.append('bestselling', this.bestselling)

            let url = this.url + '/api/storeProduct'
            console.log(this.specification)
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
        saveImage(e) {
            this.image = e.target.files[0];
            console.log(this.image)
        },
        saveImage1(e) {
            this.image1 = e.target.files[0];
            console.log(this.image1)
        },
        saveImage2(e) {
            this.image2 = e.target.files[0];
            console.log(this.image2)
        },
        saveImage3(e) {
            this.image3 = e.target.files[0];
            console.log(this.image3)
        },
        saveImage4(e) {
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
