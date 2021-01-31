<template>
  <div class="about">
    <h1>oauth2 我是空白页</h1>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Oauth2',
  props: {
    msg: String
  },
 data () {
    return {
      name: ""
    }
  },
  mounted: function() {
    // localStorage.setItem()
    console.log(this.$route.query.code)
    
    axios.get("http://localhost:8000/oauth2?code=" + this.$route.query.code)
    .then((response)=>{
      console.log(response.data)
      localStorage.setItem("name", response.data.login)
      localStorage.setItem("avatar_url", response.data.avatar_url)
      this.$router.push("/")
    })
    .catch((error)=>{console.log(error)})
  }
}
</script>
