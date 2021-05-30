import Vue from 'vue'
import Card from './Card'
import Child from './Child'
import Button from './Button'
import Checkbox from './Checkbox'
import AddToCartBtn from './AddToCartBtn'
import AddToWishlistBtn from './AddToWishlist'
import AddToDCart from './AddToDCart'
import BadgeIcon from './BadgeIcon'
import Pagination from './Pagination.vue'
import Footer from './Footer'
import { HasError, AlertError, AlertSuccess } from 'vform'

// Components that are registered globaly.
[
  Card,
  Child,
  Button,
  Checkbox,
  AddToCartBtn,
  AddToWishlistBtn,
  BadgeIcon,
  HasError,
  AlertError,
  AlertSuccess,
  AddToDCart,
  Pagination,
  Footer
].forEach(Component => {
  Vue.component(Component.name, Component)
})
