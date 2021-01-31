<template>
  <div>
    <h1>Reset</h1>
  </div>
</template>

<script>

export default {
  name: 'Reset',
  props: {
  },
  mounted: function() {
    localStorage.removeItem("name")
    localStorage.removeItem("avatar_url")
    this.$router.push("/")
  }
}
</script>