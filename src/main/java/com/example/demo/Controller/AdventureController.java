package com.example.demo.Controller;

import com.example.demo.DAO.StoryDao;
import com.example.demo.Model.Story;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequestMapping("/adventure")
public class AdventureController {

    @Autowired
    private StoryDao storyDao;

    @GetMapping("/{id}")
    public Story getStory(@PathVariable("id") Long choiceId){
        return storyDao.getStoryByChoiceId(choiceId);
    }

    @GetMapping("/start")
    public Story getStoryStart(){
        return storyDao.getStoryStart();
    }
}
