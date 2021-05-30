<template>
  <button :type="nativeType" :disabled="loading" :class="{
    [`btn-${type}`]: true,
    'btn-block': block,
    'btn-loading': loading
  }" class="btn btny text-white"
  >
    <slot />
  </button>
</template>

<script>
export default {
  name: 'VButton',

  props: {


    nativeType: {
      type: String,
      default: 'submit'
    },

    loading: {
      type: Boolean,
      default: false
    },

    block: {
      type: Boolean,
      default: false
    },

    large: {
      type: Boolean,
      default: false
    }
  }
}
</script>
