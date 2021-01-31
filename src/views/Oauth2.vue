<template>
  <div class="about">
    <h1>oauth2 我是空白页.</h1>
    <p>正在使用 code 到后端换取 token，用户信息等</p>
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
      localStorage.setItem("name", response.data.login)
      localStorage.setItem("avatar_url", response.data.avatar_url)
      this.$router.push("/")
    })
    .catch(function(){
      alert("oauth login fail.")
    })
  }
}
</script>
