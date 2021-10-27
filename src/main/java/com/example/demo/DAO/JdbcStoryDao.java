package com.example.demo.DAO;

import com.example.demo.Model.Story;
import org.springframework.stereotype.Component;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

@Component
public class JdbcStoryDao implements StoryDao{

    private JdbcTemplate jdbcTemplate;

    public JdbcStoryDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate= jdbcTemplate;
    }


    @Override
    public Story getStoryByChoiceId(Long choiceId) {
        Story story = new Story();
        String sql = "SELECT story1, story2, story3, story4, story5, story6, story7, story8, story9, story10, story11, story12, story13, story14, story_id, ending FROM story_pieces JOIN choice_results ON choice_results.story_next = story_pieces.story_id JOIN endings on choice_results.ending_id= endings.ending_id WHERE choice_id=?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, choiceId);
            if (results.next()) {
                story.setStory1(results.getString("story1"));
                story.setStory2(results.getString("story2"));
                story.setStory3(results.getString("story3"));
                story.setStory4(results.getString("story4"));
                story.setStory5(results.getString("story5"));
                story.setStory6(results.getString("story6"));
                story.setStory7(results.getString("story7"));
                story.setStory8(results.getString("story8"));
                story.setStory9(results.getString("story9"));
                story.setStory10(results.getString("story10"));
                story.setStory11(results.getString("story11"));
                story.setStory12(results.getString("story12"));
                story.setStory13(results.getString("story13"));
                story.setStory14(results.getString("story14"));
                story.setEnding(results.getString("ending"));
                story.setStoryId(results.getLong("story_id"));
            }

            String sql2 = "SELECT choice1_id, choice2_id FROM story_choices WHERE story_id = ?";
            SqlRowSet moreResults = jdbcTemplate.queryForRowSet(sql2, story.getStoryId());
            if (moreResults.next()) {
                story.setChoice1Id(moreResults.getLong("choice1_id"));
                story.setChoice2Id(moreResults.getLong("choice2_id"));
            }

            String sql3 = "SELECT choice FROM choices WHERE choice_id = ?";
            SqlRowSet choice1Results = jdbcTemplate.queryForRowSet(sql3, story.getChoice1Id());
            if (choice1Results.next()) {
                story.setChoice1(choice1Results.getString("choice"));
            }

            String sql4 = "SELECT choice FROM choices WHERE choice_id = ?";
            SqlRowSet choice2Results = jdbcTemplate.queryForRowSet(sql4, story.getChoice2Id());
            if (choice2Results.next()) {
                story.setChoice2(choice2Results.getString("choice"));
            }
        return story;
        } 


    @Override
    public Story getStoryStart() {
        Story story = new Story();
        String sql = "SELECT story1, story2, story3, story4, story5, story6, story7, story8,  story9, story10, story11, story12, story13, story14 FROM story_pieces WHERE story_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, 1);
        if(results.next()){
            story.setStory1(results.getString("story1"));
            story.setStory2(results.getString("story2"));
            story.setStory3(results.getString("story3"));
            story.setStory4(results.getString("story4"));
            story.setStory5(results.getString("story5"));
            story.setStory6(results.getString("story6"));
            story.setStory7(results.getString("story7"));
            story.setStory8(results.getString("story8"));
            story.setStory9(results.getString("story9"));
            story.setStory10(results.getString("story10"));
            story.setStory11(results.getString("story11"));
            story.setStory12(results.getString("story12"));
            story.setStory13(results.getString("story13"));
            story.setStory14(results.getString("story14"));
        }

        String sql2= "SELECT choice from choices WHERE choice_id = ?";
        SqlRowSet choice1 = jdbcTemplate.queryForRowSet(sql2, 1);
        if(choice1.next()){
            story.setChoice1(choice1.getString("choice"));
        }
        String sql3= "SELECT choice from choices WHERE choice_id = ?";
        SqlRowSet choice2 = jdbcTemplate.queryForRowSet(sql2, 2);
        if(choice2.next()){
            story.setChoice2(choice2.getString("choice"));
        }
        return story;
    }
}
