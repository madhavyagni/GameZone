<template>
<div>
    <div class="container">
        <div class="row d-flex justify-content-center align-items-center text-white cost-mr">
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.monitors' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Monitors</b></p>
                        <img class="img-cat" src="images/monitor.png" alt="" width="80%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.consoles' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Consoles</b></p>
                        <img class="img-cat" src="images/console.png" alt="" width="80%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.cabinets' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Cabinets</b></p>
                        <img class="img-cat" src="images/cabinet.png" alt="" width="75%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.prebult' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>PreBult</b></p>
                        <img class="img-cat" src="images/prebult.png" alt="" width="75%">
                    </div>
                </router-link>
            </div>
        </div>
        <div class="row d-flex justify-content-center align-items-center text-white cost-mr">
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.cpu' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Cpu's</b></p>
                        <img class="img-cat" src="images/cpu.png" alt="" width="70%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.gphards' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Graphics</b></p>
                        <img class="img-cat" src="images/graphics.png" alt="" width="80%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.monitors' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Laptops</b></p>
                        <img class="img-cat" src="images/laptop.png" alt="" width="80%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.accessories' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Accessories</b></p>
                        <img class="img-cat" src="images/accessories.png" alt="" width="80%">
                    </div>
                </router-link>
            </div>
        </div>
        <div class="row d-flex justify-content-center align-items-center text-white cost-mr">
            <div class="col-md-3 col-sm-12 d-flex justify-content-center">

            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center align-items-center mob-mr">
                <router-link :to="{ name: 'catagories.all' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="pgh"><b>Combos</b></p>
                        <img class="img-cat" src="images/msicombo.png" alt="" width="80%">
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center mob-mr">
                <router-link :to="{ name: 'catagories.all' }" class="detail">
                    <div class="catc-box d-flex justify-content-center align-items-center p-2">
                        <p class="uli"><b>All</b></p>
                    </div>
                </router-link>
            </div>
            <div class="col-md-3 col-sm-12 d-flex justify-content-center">

            </div>
        </div>
    </div>
</div>
</template>
<script>
export default {
  metaInfo() {
        return {
            title: this.$t('Catagories')
        }
    },
}
</script>
<style scoped>
.catc-box {
    background-image: linear-gradient(140deg, #000000, #650e0e);
    box-shadow: 0 0 35px rgba(39, 39, 39, 0.5);
    border-radius: 20px;
    height: 100px;
    width: 220px;
}

.catc-box:hover {
    box-shadow: 0 0 35px rgba(112, 112, 112, 0.5);
}

.cost-mr {
    margin: 60px 0 60px 0;
}

.pgh {
    position: relative;
    right: -25px;
}

.uli {
    position: relative;
}

.uli::before {
    content: '';
    position: absolute;
    width: 75px;
    height: 2px;
    top: 26px;
    right: -30px;
    background: #b50005;
}

.pgh::before {
    content: '';
    position: absolute;
    width: 75px;
    height: 2px;
    top: 26px;
    background: #b50005;
}

.img-cat {
    position: relative;
    right: -25px;
}

.detail {
    text-decoration: none;
    color: rgb(255, 255, 255);
}

.detail:hover {
    text-decoration: none;
}
</style>
