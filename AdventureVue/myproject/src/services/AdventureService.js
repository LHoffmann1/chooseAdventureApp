import axios from 'axios';

const http = axios.create({
  baseURL: "http://localhost:8080"
});

export default {

    getStoryStart(){
      return http.get('adventure/start');
    },

    getStory(choiceId) {
      return http.get(`/adventure/${choiceId}`);
    }
}