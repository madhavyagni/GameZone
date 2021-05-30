<template>
<nav class="pagination-outer my-3" aria-label="Page navigation">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="#" @click.prevent="changePage(meta.current_page-1)">«</a></li>
        <li class="page-item" :class="{'active':meta.current_page===p}" v-for="(p, index) in meta.last_page" :key="index"><a class="page-link" href="#" @click.prevent="changePage(p)">{{p}}</a></li>
        <li class="page-item"><a class="page-link" href="#" @click.prevent="changePage(meta.current_page+1)">»</a></li>
    </ul>
</nav>
</template>

<script>
export default {
    name: 'Pagination',
    props: ['meta'],
    data() {
        return {

        }
    },
    methods: {
        changePage(page) {
            if (page <= 0 || page > this.meta.last_page) {
                return
            }
            if (this.meta.last_page === 1) {
                return
            }
            this.$emit('Pagination', page)
        }
    }
}
</script>

<style scoped>
.pagination-outer {
    text-align: center;
}

.pagination {
    background-color: #555;
    font-family: 'Work Sans', sans-serif;
    display: inline-flex;
    border-radius: 20px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
}

.pagination li a.page-link {
    color: #fff;
    background: #555;
    font-size: 20px;
    font-weight: 500;
    line-height: 27px;
    height: 27px;
    width: 35px;
    padding: 0;
    margin: 0 3px;
    border-radius: 0;
    text-shadow: 0 0 3px rgba(0, 0, 0, 0.5);
    border: none;
    position: relative;
    z-index: 1;
    transition: all 0.3s ease 0s;
}

.pagination li a.page-link:hover,
.pagination li a.page-link:focus,
.pagination li.active a.page-link:hover,
.pagination li.active a.page-link {
    color: #fff;
    background: #555;
}

.pagination li:first-child a.page-link:hover,
.pagination li:last-child a.page-link:hover {
    background-color: #8f0005;
}

.pagination li a.page-link:before {
    content: '';
    background-color: #b50005;
    height: 100%;
    width: 100%;
    border-radius: 6px;
    opacity: 0;
    transform: scaleY(0);
    position: absolute;
    left: 0;
    top: 0;
    z-index: -1;
    transition: all 0.3s ease 0s;
}

.pagination li a.page-link:hover:before,
.pagination li.active a.page-link:before {
    opacity: 1;
    transform: scaleY(1.5);
}

.pagination li:first-child a.page-link:before,
.pagination li:last-child a.page-link:before {
    display: none;
}

.pagination li:first-child a.page-link {
    line-height: 24px;
    margin-left: 0;
    border-radius: 20px 0 0 20px;
}

.pagination li:last-child a.page-link {
    line-height: 25px;
    margin-right: 0;
    border-radius: 0 20px 20px 0;
}

@media only screen and (max-width: 480px) {
    .pagination {
        font-size: 0;
        display: inline-block;
    }

    .pagination li {
        display: inline-block;
    }
}
</style>
