-- Add condition for Loh'atu gossip. He should only mention you have been helping him after you complete his quests.
-- He should also only give you explanations about the zone after helping him.
	
-- Create condition for two quests he has to offer.
DELETE FROM conditions WHERE condition_entry BETWEEN 1452 AND 1454;
INSERT INTO	conditions (condition_entry, type, value1, value2) VALUES
(1452, 8, 5535, 0),
(1453, 8, 5536, 0),
(1454, -1, 1452, 1453);

-- Attach condition to gossip mentioning helping him.
UPDATE gossip_menu SET condition_id = 1454 WHERE entry=3481 AND text_id=4953;

-- Attach condition to explanation of zones matching the gossip after helping him.
UPDATE gossip_menu_option SET condition_id = 1454 WHERE menu_id=3481;
