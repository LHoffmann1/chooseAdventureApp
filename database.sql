DROP TABLE IF EXISTS "story_pieces" CASCADE;
DROP TABLE IF EXISTS "choices" CASCADE;
DROP TABLE IF EXISTS "endings" CASCADE;


CREATE TABLE story_pieces(
        story_id serial,
        story varchar(10000),
        PRIMARY KEY(story_id));
        
CREATE TABLE endings(
        ending_id int,
        ending varchar(100),
        PRIMARY KEY (ending_id));
        
CREATE TABLE choices(
        story_id int,
        choice_id int,
        choice varchar(50),
        story_next int,
        ending_id int,
        PRIMARY KEY (choice_id),
        CONSTRAINT fk__story_id FOREIGN KEY (story_id) REFERENCES story_pieces(story_id),
        CONSTRAINT fk__story_next FOREIGN KEY (story_next) REFERENCES story_pieces(story_id),
        CONSTRAINT fk__ending_id FOREIGN KEY (ending_id) REFERENCES endings(ending_id));
        

       
 INSERT INTO story_pieces (story) VALUES 
 (' Snuggled and sleeping soundly under your covers late one night, you awaken to the sound of whispers."Who''s there?" you question the darkness, 
 and although there is no reply, you cannot help but sense someone is with you. Silently, your fists clench the blankets more tightly as you consider 
 what to do.'),
 (' You close your eyes, and hold completely still. Your breath catches with each creak and groan that echoes through the walls. 
 Was that the wind? The stirring of someone familiar? Or something else? You do not know for how long you remain awake, although it feels like 
 an eternity. At some point, your heartbeat slows, your eyelids grow heavy, and you begin to drift back to sleep. Just as the dreamworld welcomes 
 your return, you feel a soft tug on the tip of your toe. There is no question about it now, someone is in your room.'),
 ('You throw back the covers and leap out of bed, making sure to land out of the grasp of whatever might be lurking underneath. 
 Sprinting down the hall in complete darkness, your hands outstretched to prevent a collision with obstacles known and unknown, you round the corner to your parents'' room. Throwing the door open it crashes into the wall behind, sending your sleeping parents stumbling 
 out of bed in confusion. "Something''s in my room!" you alert them breathlessly. Grabbing a candle from their bedside, they accompany you back to 
 your room to investigate. Your mother comforts you as your father checks each nook and cranny for the toe-pinching culprit.  When the search 
 concludes, no intruder has been found. You assure them this was not a case of imagination run wild, but there''s nothing else to be done.  They tuck 
 you into bed once again and gently close the door. You feel both silly and certain at the same time. It must have been a dream, you tell yourself, and yet 
 you can still feel the tingling of the pinch upon your toe. Your mind races with confusion until the call of sleep becomes too great to resist. 
 When next you open your eyes, the sun is shining and a new day has begun. You climb out of bed to start another day. Before leaving the room, you fall to your knees 
 and peer under the bed. You reach for what looks like a small piece of paper. In the light of day, you see it is just that; a handwritten note, folded and placed 
 there for you to find. You open it and read:
 I came last night to offer you adventure worth the taking
 Instead you ran and brought adults, your hands and legs were shaking
 Now adventure is gone, you missed your chance, your fear has left you frozen
 For adventure''s sake, next time don''t make this selection you have chosen.'),
 (' You stare at the ceiling, willing the courage necessary, then toss your covers aside and fall to the ground, peering beneath the bed. Your cheek 
 rests against the cold stone floor as your eyes scan the darkness. The soft glow of the candlelight in the room causes a glimmer in the two eyes staring back 
 at you. You stumble backwards, scooting away from the bed as the figure underneath squirms and scurries out. Your eyes grow wide as the being stands upright and 
 you see that it is an elf, a house elf, commonly known to roam the halls of ancient castles such as yours. His eyes meet yours as he shuffles back and forth on his 
 tiny, slippered feet. "What do you want? Who are you?" you ask.  The elf replies that he has sought you out because he has seen your helpful and kindhearted nature 
 in your daily actions about the castle. He informs you that his name is Felix, and he needs help reclaiming something important that was taken from him. An evil 
 goblin, living beneath the castle, has stolen Felix''s family flag, and Felix has been chosen to retrieve it. He knows such a difficult task, against so formidable an 
 opponent, will lead to certain capture without assistance from someone else...someone like you.'),
 ('You ponder the possibilities for a moment. An evil goblin, a pathetic looking elf, a family flag. This sounds like drama you''re not interested in getting involved with. You could get in trouble! You could get hurt! You could get killed! You tell Felix, that, 
 while you do feel for his circumstances, you are neither prepared for nor comfortable embarking on a mission into a dangerous lair on this night. 
 Felix''s chest drops, his eyes lower, as hope drains from him. "Okay," he mumbles halfheartedly as he turns and disappears into the shadows of the 
 room. You can''t help but feel a little guilty after he exits. The heaviness of his obvious disappointment seems to linger. You crawl back 
 into bed and pull the covers up to your chin, as if shielding yourself from the scrutiny of a choice most selfish. You remain awake,lost in your thoughts, 
 slightly ashamed; after all, hadn''t Felix said your helpfulness and kindhearted actions were what led him to you? How wrong you''ve proven him. It''s too much 
 to bear. You slide out of bed and out the door. An evil goblin beneath the castle he said...then that is where you will go. 
 You follow the winding staircase into the depths of the underground. In the distance you hear a deep rumbling voice. As you near what must be 
 the goblin''s quarters, you peer around the corner and witness a horrible sight. The goblin has Felix in his clutches, dangling by his toes over a fire, no 
 doubt about to become a late night snack for this cruel and merciless creature. You have to help Felix, but what is the best approach?'),
 ('You are caught off-guard by such a request, but find yourself oddly flattered at the same time. Considering your options 
 and the risk involved, you determine that, while helping Felix might not be the wisest thing to do, helping Felix is the right thing to do. 
 Felix''s eyes light up upon hearing the news. "I knew you were the one! I knew I chose wisely!" Felix celebrates. You''re glad he feels so 
 confident, since you can''t say the same for yourself. Together, you tiptoe through the castle and down the winding staircase into the depths 
 of the goblin''s lair. A rhythmic rumbling echoes throughout the cavernous surroundings. You peer around the corner to find a monstrous 
 creature sleeping soundly on a mound of animal hides and bones. Frozen in horror, you feel a tug on the leg of your pajamas. Looking down, Felix 
 stares up at you, his eyes wide. He points toward the slumbering beast and as you follow his finger you notice, tucked under the goblins chin, coated 
 in oozing drool, what you can only assume is the family flag of your hopeful companion. Looking around the room, your mind races with options until 
 you settle on two options.'),
 ('Felix''s whimpers coupled with the raucous laughter of the goblin create enough noise to conceal the sounds of your next move. You spring 
 from the shadows and race toward the goblin. Distracted by the promise of a tasty morsel, the goblin is completely unaware of your presence until you leap 
 onto his back, at which point he lurches forward and groans in confusion. Spinning wildly the goblin gropes for you, all while still holding Felix by 
 the feet. To an outsider watching, it might look like some sort of game, but you know the stakes could not be higher. You cling to the goblin''s back, desperately 
 avoiding each swipe it makes. You realize overpowering a tremendous beast might not have been the wisest course of action. In a fit of rage, the goblin continues 
 to thrash about. You''re considering jumping down and making a run for it when the goblin pauses. You stay frozen on its back, awaiting its next move. 
 Suddenly, the goblin begins running backwards, toward what, you aren''t sure. Is it going to run you into a wall, you wonder with horror. You could jump down, but 
 you''d just be trampled by the goblin''s pounding feet. You crane your neck for a glimpse, but it comes too late. The goblin runs until his back hits an open 
 cage resting against the wall. The force of the collision knocks you off the goblin and you land with a thud on the floor of the cage. Just as the reality of your 
 situation becomes clear, the door to the cage slams shut and the goblin, chuckling to himself, returns to the fireside. You lock eyes with Felix who''s still dangling 
 helplessly from the goblin''s grip. "I''m sorry," you whisper.'),
 ('Looking around the space, you see stacks of twinkling jewels, glittery trinkets, and shiny coins. Obviously, this goblin has a taste for house elves and valuable goods. 
 This gives you an idea. Taking a deep breath, you clear your throat and step into the room. Startled, the goblin turns and stares. It licks its lips and sniffs the air as though 
 mentally preparing for a second meal that has foolishly entered its den. "I''ve come to strike a deal with you," you announce confidently The goblin raises his eyebrow in question. Slowly, 
 you slide your ring off your finger and hold it out to the goblin. "This ring," you say, "is very valuable." You turn it around in your hand; the light reflects of the jewels casting 
 tiny shimmers about the lair. "I''ll give you this ring, in exchange for the house elf you hold and his family flag." The goblin sits, unmoving. "You can always find another meal, 
 but you won''t stumble upon the opportunity to acquire a ring like this again." The goblin lowers its hand slightly, bringing Felix closer to the fire. "No, don''t...!" you start, but the 
 goblin shifts and tosses Felix to the side. Frantic, Felix scrambles to his feet and races to the table to grab his flag. He looks at you smiling and you smile in return. Your 
 relief doesn''t last long as you look up to see the goblin lumbering toward you, no doubt eager to collect his prize. You take a step back and hold the ring out as far as your arm 
 will reach. The goblin swipes it from your fingers with his thick rough hand and carries it over to his collection. You don''t wait to see what he does next. Locking eyes with Felix, you motion 
 for a hasty exit, and the two of you quietly slip out of the room and up the stairs. In the safety of the main castle halls, Felix looks at you with deep gratitude. It seems silly for 
 something as simple as a flag to garner so much emotion, but then again the intricacies of house elves'' culture escapes you. "Well, goodbye, Felix," you say, softly. "Your family is 
 lucky to have you, such a clever and brave elf." Felix smiles and nods. He stands for a moment, as though unsure of what to do, then runs to your side and wraps his small arms around you. 
 The frailty and delicacy of his tiny frame were misleading, as he squeezes you with a fierceness you could not have anticipated. "Thank you," he whispers softly before slowly releasing his hold 
 on you. And with that he turns and disappears around the corner. You follow quietly behind to see where he is headed, but when you round the corner, no trace of him remains. You decide to return 
 to the comforts of your bed, although after the adventure you''ve just had, sleep seems unlikely.'),
 ('You turn to Felix and motion for him to stay put. Ever so carefully, you begin creeping toward the sleeping beast. Watching it with laser focus, you round the side of the heap. 
 You''re inching closer when your foot hits one of the many bone fragments scattered about the room. It slides across the floor, clattering and colliding with other bits of rubbish. You freeze 
 as your jaw drops and your eyes grow wide in horror. First, you look to the goblin, who gently stirs and grunts in its sleep. Then your eyes travel to Felix, who is still standing by the stairs, 
 clutching the stone wall in terror. Both of you catch your breath as you realize the commotion did not disturb the deep slumber of the monster. Resuming the quest, you inch forward, careful to 
 mind the remnants of the goblins prior meals. At last, you are within reach of the prize for which you have risked your life this very night, the treasured flag of Felix''s family, resting now 
 beneath the gargantuan goblin''s head. Slowly, you reach out until your fingertips grip the tattered edge and give a gentle tug. It will not budge. You scoot forward a bit more to get a better grip. 
 Goblin slobber covers the majority of the flag, making a good grasp on the fabric difficult to maintain. Leaning back for more leverage, you pull a bit harder and notice slight movement as the flag 
 begins to slide out from under the goblin''s resting head. Smiling, you look up to signal to Felix the progress, albeit small, when you are stopped dead in your tracks by what you see. Another 
 goblin, slightly smaller than the first, has Felix in its arms, covering his mouth so he cannot warn you about the ambush. Horrified, you glance down at the sleeping goblin only to find it is sleeping
 no more. Was it ever really sleeping, you''re not sure, but now it is awake...awake and smiling, his broken jagged teeth spread wide in satisfaction. Before you can even think of what to do, the goblin 
 reaches out and grabs you. You struggle to break free, but your efforts are futile. You are no match for what has turned out to be a pair of very clever goblins.'),
 ('You stand with Felix in the shadows listening carefully for movement. Only the continued sounds of slumber can be heard. Even from a distance, 
 the sheer size of the goblin is intimidating. You realize you and Felix are no match for the beast when it comes to strength. Speed, on the other hand, might be 
 a different story. Glancing around, you spot a goblet on the ground. Carefully, you reach out and grab it, pulling it swiftly back into the safety of the shadows. 
 Felix looks at you curiously, so you lean forward and whisper your plan. He stares at you wide-eyed and uncertain, but nods in agreement. You nod to confirm, then turn 
 and take a deep breath. This is it. You hurl the goblet with all your might across the room. Quickly, you duck back into the darkness as the crash echoes throughout 
 the den. You listen nervously as the goblin awakens. Though you can''t see, you can imagine him stumbling out of bed, lumbering about for the source of the commotion. 
 Cautiously, you lean your head around the corner and wait for the perfect moment. Now! Ducking, you race across the floor to the back end of the heap of bones. You 
 pause, catching your breath as Felix scrambles to your side. Peering around the corner, you see the goblin rummaging through his piles of rubbish and jewels. You wait a moment 
 before tossing a large bone scrap farther into the corner of the lair. The goblin races toward the sound. Without hesitating, you reach above your head and feel around for the 
 flag. Your fingers touch a large piece of cloth and you quickly yank it down. Felix''s eyes light up. He lunges forward and grabs the flag, hugging it closely to his chest. You 
 peek around the edge of the heap and hear the goblin''s roars of displeasure in the distance. Yanking Felix by the arm, you scurry across the floor and up the winding stairs. 
 Walking through the castle halls, Felix is practically skipping with joy, and you can''t help but feel a bit proud of yourself. Obviously, you won''t be able to share this story 
 with others. You''d be in terrible trouble if anyone found out you''d been exploring beneath the castle, but you know that you will remember this moment forever nonetheless.'),
 ('Ever so quietly, you peel back the covers. Slowly, holding your breath, you lower your feet to the floor and stand, wincing 
 as the mattress squeaks in protest of your departure. Grabbing the candle by your bed and creeping across the cold stone floor you pause 
 with your ear to the door, listening for...what exactly, you''re not quite sure. Turning the doorknob gently, you brace yourself for the groan 
 of the heavy wooden door as it opens. The flickering light of your candle casts dancing shadows along the stone hallway walls as stand in the doorway. 
 You glance cautiously to the left and right, noticing a soft flicker of light coming from beneath a library door at the end of the hall. You''re tiptoeing 
 to the door when you pause to consider what might be behind it. Is this really something you should be looking into? Suddenly you hear  the soft padding of
  ootsteps behind you. You spin around just in time to see a figure round the corner at the opposite end of the hall and disappear. Who was that, and what 
  are the doing running about at this time of night? You turn back to the closed door in front of you. You glance back at the end of the hall where the 
  mysterious figure vanished. You''re curious about both, but can only pursue one mystery.'),
('You press your ear to the door, listening for some clue as to what might be behind it. Hearing nothing, you ease the door open slowly. Poking 
your head around it, you glance about the room. The light comes from a lantern left resting on a bookshelf. Aside from that evidence, it appears the room 
is empty. You creep inside and look around. Nothing under the table. Nothing behind the curtains. You move to the bookshelf when you notice the flame of 
your candle flicker slightly. It would appear a draft is coming from somewhere. You look to the windows, but find them completely shut. You stare at the bookshelf 
suspiciously. The next thing you know, you''re pulling on book spines, looking for access to what you believe must be a secret passageway. You''ve read about this 
before and know the book trigger trick well! For a long time, nothing happens, until, at last, you hear a soft click, and the bookshelf swings outward, revealing a 
stone staircase. You look up the stony stairs and wonder what might rest at the top of them. Treasure? Danger? There''s only one way to find out. Carefully, you climb 
until you reach the landing. You hear a soft voice coming from the room in front of you. Inching forward, you crane your neck to see the source of the sound. Gasping, 
you cover your mouth to stifle your scream. In the middle of the room, with her back to you, stands a witch, bending over a steaming cauldron, murmuring an incantation 
of some sort. You can''t make out everything, but you catch bits and pieces. "Suffering", "Pain", "Death to the kingdom." None of this seems promising. You have to stop her!'),
('Taking one last look at the glowing light beneath the door, you spin on your heels and race down the hallway after the mysterious figure. They''ve got a head start, but 
you''re confident you can catch them. You rush down the main staircase, leaping from the last few stairs and land in the main foyer. You stand and listen. A clink from the kitchen! 
Dashing to the right, you round the corner into the kitchen only to find your friend, Sam, sitting at the table, enjoying a large slice of watermelon. "What on earth are you doing 
in the kitchen at this time of night? You startled me!" you scold. Sam smiles as watermelon juice drips onto the table. "I woke up starving, and I remembered we had lots of fresh 
watermelon from the garden, so I came down for a bite. No one will know...unless you tell them," Sam replies. You attempt to look threatening, but can''t keep it up. You laugh softly and 
sit at the table. Sam passes you a piece of watermelon. You take it, and as you sink your teeth into the crunchy sweetness, you''re satisfied with your choice.'),
('Standing in the doorway, you watch the witch carefully looking for the perfect opportunity to foil her sinister plans. She continues to add ingredients to the bubbling 
pot. You see her toss what looks to be a small creature into the pot and hear the concoction hiss with satisfaction. The witch chuckles softly as she shuffles around the cauldron. You stand 
a bit straighter as you see she is heading for a wobbly cabinet in the corner. Holding your breath you watch as she bends, with some difficulty, down to retrieve an item from the bottom 
shelf. This is your chance! You spring from your hiding spot and dash to the pot. It''s only when you''re standing exposed in the center of the room that you realize the error in your plan. 
The pot is scalding hot. You look for some sort of barrier to protect your hands, keeping an eye on the witch, still bent over, oblivious to your presence. Finding no tool sufficient, you pull the 
fabric of your pajamas out and grab the edge of the pot. With all of your might you push, hoping to spill the contents across the floor and put a stop to the witch''s evil plans. Instead, 
you end up running in place as the cauldron will not budge. You pull. You push. The cauldron remains, the potion gurgling and simmering within. "Well, well, well," comes a gravelly voice from 
across the room. "Such a wonderful surprise." The witch smiles and looks at you with interest. You open your mouth, but no words come. All you can think to do is run. You head for the stairs,
but a door you hadn''t noticed slams shut in front of you, blocking your escape. You hear a chuckle and turn slowly to see the witch approaching. Though she appeared to hobble and struggle before, 
now she glides across the room. "I knew you would come. A little noise, a little light, the children always get curious," she whispers. She leans in close, so close you can feel her breath. With 
her bony, spotted hands she reaches out and grabs a strand of your hair, sniffing and grinning in satisfaction. "Perfect!" she announces to the room. "What''s perfect?" you manage to ask. "Why, you 
are, my dear. The last ingredient!" she cackles. You gulp, frozen in terror.'),
('While the witch is preoccupied with her spell, you glance around for a weapon of some sort. If you can push pause on her plans, you can determine how best to end this madness. Your eyes fall 
on a broom. Too flimsy. You spot a glass jar filled with what appear to be eyeballs. Too small. Finally you spot something suitable, a large black kettle. After ensuring the witch is still busy with her spell, 
you creep to the table, bracing yourself for disaster as you lift the kettle off the hook from which it hangs. You glance nervously back at the witch, certain she must have heard the scrape of the metal slipping 
off the rack, but her preoccupation with her concoction continues. Turning to face her, you move across the room. Each step closer heightens the possibility of detection. As you draw nearer, you are startled 
as a cat emerges from the shadows, hissing its displeasure at your presence. You stare, frozen in place. The witch spins to see the source of the commotion. Her eyes widen upon seeing you standing just in front of 
her. She opens her mouth to speak, what she intends to say, you do not wait to discover. Swinging the kettle with all of your might, you strike her on the side of her head. She topples to the floor with a thud. 
You are in shock. The bubbling and popping from the cauldron reawakens your senses. The spell! You have to do something!'),
(' Stepping over the crumpled body of the witch, you race to the edge of the cauldron. Inside the pot, a black liquid swirls and simmers like an ominous cloud. It begins to rise and pour 
over the edge of the pot. It snakes across the floor and out a small window in the corner of the room. The kingdom! The spell will destroy the kingdom! You have to stop it. Frantically, you scan the 
room until you spot it: the witch''s spellbook sitting on a pedestal near the fire. Looking down at its tattered yellow pages, you wonder how many lives have been ruined by this collection of chaos. 
The book is open to a page with a spell titled "Dram of Death". You look to the cat, sitting quietly by the cauldron, flicking its tail, watching you thoughtfully. "Dram of Death, huh?" you say and 
though you tell yourself you imagine it, the cat appears to smile. Skimming the page, you search for a way to stop the spell. You consider spilling the contents of the cauldron, but worry that will 
only hasten the black cloud''s attack on the kingdom. Finally, you spot it! A small note with the incantation to halt the spell''s progression. With all the confidence you can muster you read: 
"The Dram of Death that has begun
Must now be stopped, what''s done, undone.
Return to rest, do as I say
Until you''re called another day."
You watch eagerly for some change, and breathe a sigh of relief as the black cloud begins to swirl and return to the cauldron. Like a river flowing in reverse, the substance travels back through the 
window until it, once settles into the cauldron, now a harmless liquid. You smile with pride. You did it!'),
('You have to stop this! You have to find help! You turn and quietly rush back down the stairs, through the library, and into the hall. Racing to your parents'' room, you throw the door open 
and holler for them to get up. They spring from the bed, as you turn around and race back to the tower. You hear them stumbling behind you as you race back to the tower. Up the stairs you rush, two at a 
time. "This way!" you call down the stairs, your father''s face just appearing at the bottom of the secret passageway. He sprints up the stairs to you, placing his hand on your shoulder as he steps past 
you and into the room. You follow a few steps behind, looking for the crumpled figure of the witch on the ground. She is not there. "The witch! Where is she?" you gasp. Your mother joins the two of you 
as you look around for any trace of the witch. It soon becomes clear she has awakened and vanished. How foolish of you to have left her unmonitored, but you needed help to prevent the spell...the spell! 
Rushing to the cauldron, you peer inside to see a swirling black mist, like staring into the center of a tornado. You find yourself momentarily mesmerized by the circling black cloud. It''s only when you feel the presence of 
your mother behind you that you notice the smoke is beginning to pour out over the edge of the pot. You step back, bumping into your parents as you do so. The smoke snakes forward, wrapping around your 
and ankles, climbing up your legs. You look down in horror as it continues to climb, seeming to swallow you whole. You turn to your parents, only to discover the same thing is happening to them. You reach 
for their hands, but before your fingertips touch, the darkness consumes you.');
 
INSERT INTO endings (ending_id, ending) VALUES
 (1, 'The Adventure is Over...For Now!'),
 (2,'You Have Been Captured. You Will Soon Be the Goblin''s Dinner. The Adventure is Over!'),
 (3, 'Nice Work! You Saved the Day!'),
 (4, 'The End! Have a Taste for Adventure? Try Again!'),
 (5, 'You Have Been Captured By the Witch! The Adventure is Over!'),
 (6, 'The Spell Has Been Cast! You have Perished! The Adventure is Over!');
 
INSERT INTO choices (story_id, choice_id, choice, story_next, ending_id) VALUES 
 (1,1, 'Stay in bed',2, null), (1, 2, 'Get up to investigate', 11, null), (2, 3, 'Jump up and check under the bed', 4, null), (2, 4, 'Run out of the room to get help',3,1), (4, 5, 'Refuse to help Felix',5, null), (4, 6, 'Offer to help Felix',6, null),
 (5, 7, 'Attack the goblin',7, 2), (5, 8,'Bargain with the goblin',8, 3), (6, 9, 'Sneak in',9, 2), (6, 10, 'Create a distraction',10, 3), (11, 11, 'Open the door to investigate the room',12,null), (11, 12,'Follow the mystrious figure down the hall',13,4),
 (12, 13, 'Knock over the cauldron',14,5), (12, 14, 'Grab something heavy to knock the witch out',15, null), (15, 15, 'Look for a way to stop the spell', 16, 3), (15, 16,'Go and find help', 17,6);
 
