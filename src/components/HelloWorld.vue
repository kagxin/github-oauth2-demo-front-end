<template>
  <div class="hello">
    <h1>Oauth2 Demo</h1>
    <h1>I Am {{name}}</h1>
    <img v-bind:src="avatarUrl"/>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
 data () {
    return {
      name: "?",
      avatarUrl:""
    }
  },
  mounted: function() {
    this.name = localStorage.getItem("name")
    this.avatarUrl = localStorage.getItem("avatar_url")
    console.log("asdf")
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
