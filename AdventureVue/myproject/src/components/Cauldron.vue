<template>
  <div id = "body">
      <div id="story"> 
        <p class="p">{{story.story1}} {{story.story2}}</p> 
        <p class="p">{{story.story3}}</p> 
        <p class="p">{{story.story4}} {{story.story5}}</p>
        <p class="p">{{story.story6}}</p> 
        <p class="p">{{story.story7}}</p>
        <p class="p">{{story.story8}} {{story.story9}}</p>
        <p class="p">{{story.story10}} {{story.story11}}</p> 
        <p class="p">{{story.story12}}</p> 
        <p class="p">{{story.story13}}</p>
        <p class="p">{{story.story14}}</p>
</div>
<div id="ending">
<p>{{story.ending}}</p>
<router-link id="restart" to="/">Try Again</router-link>
  </div>
  </div>
</template>

<script>
import AdventureService from '../services/AdventureService.js'
export default {
data(){
    return{
        story:{},
        choiceId:13
    }
},
created(){
     AdventureService.getStory(this.choiceId).then((response)=>{
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
.p{
  text-align: left;
  text-indent:30px;
}
#ending>p{
    font-family: 'Montserrat';
    font-size:40px;
    font-weight: bolder;
    color: red;
    background-image: url("../../images/unhappy.png");
    border-radius: 20px;
    padding: 30px 30px;

}
#ending{
    padding:50px;
    width:50%;
    margin-left:auto;
    margin-right:auto;
}
#restart{
    font-size:30px;
}
#restart:link{
  color:rgb(59, 46, 46);
  text-decoration: none;
  color:inherit;
}
#restart:hover{
  color: rgb(235, 136, 54);
}
#restart:active{
  color:rgb(59, 46, 46);
  text-decoration:none;
  color:inherit;
}
#restart:visited{
  color:rgb(59, 46, 46);
  text-decoration:none;
  color:inherit; 
}
</style>