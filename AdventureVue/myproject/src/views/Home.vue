<template>
  <div class="home">
    <div id="intro">
   <p>It's time for an adventure! How does it end, you ask? Well, that, my friend, is up to you!</p>
   <p> As your journey begins, you will be offered options. The choices you make will determine the outcome. Displeased with the ending? Try again!</p> 
     <p>There's so much fun to be had when you CHOOSE YOUR OWN ADVENTURE!</p>
     <div id="choices">
       <router-link id="choice1" to="/storyStart">Let the adventure begin!</router-link>
     </div>
     </div>
  </div>
</template>

<script>

export default {
  name: 'Home',

  components: {
    
  }
}
</script>

<style scoped>

.home{
  background-color: rgb(247, 245, 242);
  padding-bottom: 100px;
}
#intro{
  width: 80%;
  margin-left: auto;
  margin-right:auto;
  color:rgb(59, 46, 46);
}
p{
  font-size: 30px;
  line-height: 50px;
  text-align:center;
 
}
#choices{
  text-align: left;
  font-size: 28px;
  font-weight:bold;
  text-decoration: none;
  display: inline-block;
  
}

li:link{
  color:rgb(59, 46, 46);
  text-decoration: none;
  color:inherit;
}
li:hover{
  color: rgb(235, 136, 54);
}
#choice1:active{
  color:rgb(59, 46, 46);
  text-decoration:none;
  color:inherit;
}
#choice1:visited{
  color:rgb(59, 46, 46);
  text-decoration:none;
  color:inherit; 
}
#choice2:active{
  color:rgb(59, 46, 46);
  text-decoration:none;
  color:inherit;
}
#choice2:visited{
  color:rgb(59, 46, 46);
  text-decoration:none;
  color:inherit;   
}
#choice1{
  margin-bottom: 15px;
}
#choice1:hover{
   color: rgb(235, 136, 54);
}
#choice2:hover{
   color: rgb(235, 136, 54);
}

</style>