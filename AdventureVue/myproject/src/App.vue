<template>
  <div id="app">
    <img id="logo-banner" src="../images/banner.png" alt="logo" /> <br />
    <div id="nav">
      <router-link id="home" to="/">Home</router-link>
    </div>
    <router-view/>
  </div>
</template>

<style>
@import url('https://fonts.googleapis.com/css2?family=Urbanist:wght@300&display=swap');

#app {
  font-family:'Urbanist', sans-serif;
  text-align:center;
  
  background-color: rgb(247, 245, 242);
  width: 100vw;
 
}
img{
   width: 100vw;
}
#nav {
  text-align: left;
  font-size: 24px;
}
#home{
  text-decoration:none;
  color:inherit;
}
#nav:link{
  font-weight: bold;
  color:rgb(59, 46, 46);
  text-decoration: none;
}
#nav:hover{
  color: rgb(235, 136, 54);
}
#nav:active{
 color:rgb(59, 46, 46);
}
#nav:visited{
  color:rgb(59, 46, 46);
}

</style>
