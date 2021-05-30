function page (path) {
  return () => import(/* webpackChunkName: '' */ `~/pages/${path}`).then(m => m.default || m)
}

export default [
  {
    path: '/',
    name: 'home',
    component: page('welcome.vue'),
    children: [
      { path: '', redirect: { name: 'cat.all' } },
      { path: 'home', name: 'cat.all', component: page('cat/all.vue') },
      { path: 'monitors', name: 'cat.monitors', component: page('cat/monitors.vue') },
      { path: 'consoles', name: 'cat.consoles', component: page('cat/consoles.vue') },
      { path: 'cabinets', name: 'cat.cabinets', component: page('cat/cabinets.vue') },
      { path: 'prebult', name: 'cat.prebult', component: page('cat/prebult.vue') },
      { path: 'cpu', name: 'cat.cpu', component: page('cat/cpu.vue') },
      { path: 'gphards', name: 'cat.gphards', component: page('cat/gphards.vue') },
      { path: 'accessories', name: 'cat.accessories', component: page('cat/accessories.vue') },
    ]
  },

  {
    path: '/cat',
    name: 'cat',
    component: page('cat.vue'),
    children: [
      { path: '', redirect: { name: 'catagories.all' } },
      { path: 'all', name: 'catagories.all', component: page('catagories/all.vue') },
      { path: 'monitors', name: 'catagories.monitors', component: page('catagories/monitors.vue') },
      { path: 'consoles', name: 'catagories.consoles', component: page('catagories/consoles.vue') },
      { path: 'cabinets', name: 'catagories.cabinets', component: page('catagories/cabinets.vue') },
      { path: 'prebult', name: 'catagories.prebult', component: page('catagories/prebult.vue') },
      { path: 'cpu', name: 'catagories.cpu', component: page('catagories/cpu.vue') },
      { path: 'gphards', name: 'catagories.gphards', component: page('catagories/gphards.vue') },
      { path: 'laptops', name: 'catagories.laptops', component: page('catagories/laptops.vue') },
      { path: 'cds', name: 'catagories.cds', component: page('catagories/cds.vue') },
      { path: 'accessories', name: 'catagories.accessories', component: page('catagories/accessories.vue') },
    ]
  },

  {
    path: '/brands',
    name: 'brands',
    component: page('brands.vue'),
    children: [
      { path: '', redirect: { name: 'brands.all' } },
      { path: 'all', name: 'brands.all', component: page('brands/all.vue') },
      { path: 'asus', name: 'brands.asus', component: page('brands/asus.vue') },
      { path: 'nvidia', name: 'brands.nvidia', component: page('brands/nvidia.vue') },
      { path: 'msi', name: 'brands.msi', component: page('brands/msi.vue') },
      { path: 'zotac', name: 'brands.zotac', component: page('brands/zotac.vue') },
      { path: 'xbox', name: 'brands.xbox', component: page('brands/xbox.vue') },
      { path: 'sony', name: 'brands.sony', component: page('brands/sony.vue') },
      { path: 'lenovo', name: 'brands.lenovo', component: page('brands/lenovo.vue') },
      { path: 'logitech', name: 'brands.logitech', component: page('brands/logitech.vue') },
      // { path: 'accessories', name: 'catagories.accessories', component: page('catagories/accessories.vue') },
    ]
  },

  {
    path: '/admin909hhkCOLlfAK525',
    name: 'admin',
    component: page('admin/adminpanel.vue'),
    children: [
      { path: '', redirect: { name: 'admin.products' } },
      { path: 'products', name: 'admin.products', component: page('admin/products.vue') },
      { path: 'orders', name: 'admin.orders', component: page('admin/orders.vue') },
      { path: 'addproduct', name: 'admin.addproducts', component: page('admin/addproducts.vue') },
      { path: 'editproduct/:id?', name: 'admin.editProduct', component: page('admin/editproducts.vue') },
      { path: 'editOrder/:id?', name: 'admin.editOrder', component: page('admin/editOrder.vue') }
    ]
  },

  { path: '/login', name: 'login', component: page('auth/login.vue') },
  { path: '/adminlogin', name: 'adminlogin', component: page('adminlogin.vue') },
  { path: '/register', name: 'register', component: page('auth/register.vue') },
  { path: '/password/reset', name: 'password.request', component: page('auth/password/email.vue') },
  { path: '/password/reset/:token', name: 'password.reset', component: page('auth/password/reset.vue') },
  { path: '/email/verify/:id', name: 'verification.verify', component: page('auth/verification/verify.vue') },
  { path: '/email/resend', name: 'verification.resend', component: page('auth/verification/resend.vue') },

  { path: '/success', name: 'success', component: page('success.vue') },
  { path: '/failed', name: 'failed', component: page('failed.vue') },
  { path: '/cart', name: 'cart', component: page('Cart.vue') },
  { path: '/checkout', name: 'checkout', component: page('checkout.vue') },
  { path: '/wishlist', name: 'wishlist', component: page('wishlist.vue') },
  { path: '/myorders', name: 'myorders', component: page('myorders.vue') },
  { path: '/details/all/:id?', name: 'detail', component: page('details.vue') },
  { path: '/orderdetails/:id?/:id2?', name: 'orderdetails', component: page('orderdetails.vue') },
  { path: '/catagories', name: 'catagories', component: page('catagories.vue') },
  { path: '/search/:term?', name: 'search', component: page('search.vue') },
  { path: '/about', name: 'about', component: page('about.vue') },
  {
    path: '/settings',
    component: page('settings/index.vue'),
    children: [
      { path: '', redirect: { name: 'settings.profile' } },
      { path: 'profile', name: 'settings.profile', component: page('settings/profile.vue') },
      { path: 'password', name: 'settings.password', component: page('settings/password.vue') }
    ]
  },


  { path: '*', component: page('errors/404.vue') }
]
