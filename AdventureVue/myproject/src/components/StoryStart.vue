<template>
  <div id="body">
      <div id="story"> <p>{{story.story1}}</p><p>{{story.story2}}</p><p>{{story.story3}}</p>
</div>
<div id="choices">
<ul>
   <li> <router-link id="choice1" to="/stayInBed">{{story.choice1}}</router-link></li> <br>
    <li><router-link id="choice2" to="/investigate">{{story.choice2}}</router-link></li> </ul></div>

</div>
</template>

<script>
import AdventureService from "../services/AdventureService.js"
export default {
data(){
    return{
        story:{}
    }
}, created(){
    AdventureService.getStoryStart().then((response)=>{
        this.story=response.data;})
     .catch((error) => {
        if (error.response) {
          window.alert("Bad Request");
        } else if (error.request) {
          window.alert("Could Not Reach Service");
        }
      });
}
}
</script>

<style scoped>
#body{
  padding-bottom: 100px;
}
#story{
    margin-top:50px;
    font-size: 30px;
    width: 80%;
    margin-left: auto;
    margin-right:auto;
}
p{
  text-indent: 30px;
  text-align:left;
}
#choices{
  text-align: left;
  font-size: 26px;
  font-weight:bold;
  display: inline-block;
  color:rgb(59, 46, 46);
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
  
}
#choice1:visited{
  color:rgb(59, 46, 46);
}
#choice2:active{
  color:rgb(59, 46, 46);
  
}
#choice2:visited{
  color:rgb(59, 46, 46);
 
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
#choice2{
    color: rgb(59,46,46);
}
</style>