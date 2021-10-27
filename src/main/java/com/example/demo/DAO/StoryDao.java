package com.example.demo.DAO;

import com.example.demo.Model.Story;

public interface StoryDao {

    public Story getStoryByChoiceId(Long choiceId);
    public Story getStoryStart();
}
