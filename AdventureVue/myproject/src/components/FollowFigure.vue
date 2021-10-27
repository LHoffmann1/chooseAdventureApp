<template>
  <div id="body">
    <div id="story">
      <p class="p">{{ story.story1 }}</p>
      <p class="p">{{ story.story2 }} {{ story.story3 }} {{ story.story4 }}{{ story.story5 }}</p>
      <p class="p">{{ story.story6 }} {{ story.story7 }}</p>
      <p class="p">{{ story.story8 }} {{ story.story9 }}</p>
      <p class="p">{{ story.story10 }}</p>
      <p class="p">{{ story.story11 }} {{ story.story12 }} {{ story.story13 }}</p>
    </div>
    <div id="ending">
      <p>{{ story.ending }}</p>
      <router-link id="restart" to="/">Try Again</router-link>
    </div>
  </div>
</template>

<script>
import AdventureService from "../services/AdventureService.js";
export default {
  data() {
    return {
      story: {},
      choiceId: 12,
    };
  },
  created() {
    AdventureService.getStory(this.choiceId)
      .then((response) => {
        this.story = response.data;
      })
      .catch((error) => {
        if (error.response) {
          window.alert("Bad Request");
        } else if (error.request) {
          window.alert("Could Not Reach Service");
        }
      });
  },
};
</script>

<style scoped>
#body{
  padding-bottom: 100px;
}

#story {
  margin-top: 50px;
  font-size: 30px;
  width: 80%;
  margin-left: auto;
  margin-right: auto;
}
.p {
  text-align: left;
  text-indent: 30px;
}
#ending > p {
  font-family: "Montserrat";
  text-align: center;
  font-size: 40px;
  color: rgb(247, 245, 242);
  background-image: url("../../images/celebrate.png");
  margin-right: auto;
  margin-left: auto;
  height: 300px;
  padding-top: 150px;
 
 width: 500px;
  word-wrap: break-all;
  border-radius: 20px;
}
#ending {
  padding-bottom: 50px;
  padding-top: 50px;
}
#restart{
    font-size:30px;
}
#restart:link{
  color:rgb(59, 46, 46);
  text-decoration: none;
 
}
#restart:hover{
  color: rgb(235, 136, 54);
}
#restart:active{
  color:rgb(59, 46, 46);
  text-decoration:none;
  
}
#restart:visited{
  color:rgb(59, 46, 46);
  text-decoration:none;
  
}
</style>