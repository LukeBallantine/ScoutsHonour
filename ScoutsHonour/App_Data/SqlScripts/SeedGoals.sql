--USE [ScoutsHonourDb]
--GO

-- Seed Goals data (generated from Cub badges.xlsx)
-- Use this to reset seed if required: DBCC CHECKIDENT('Goals', RESEED, 0)
DECLARE @hasGoals bit
SET @hasGoals = (SELECT TOP 1 Id FROM Goals WHERE OrganisationId = 1 AND GoalType = 1)
IF (@hasGoals IS NULL)
BEGIN

	INSERT INTO Goals VALUES ('Outdoors - Campcraft', '', 1, NULL, 3, 3, 3, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Fire safety', 'Learn about fire safety and take part in a Marshmallow Roast.', 1, NULL, NULL, NULL, NULL, 1, 1, 1);
	INSERT INTO Goals VALUES ('Outdoor stove', 'Make an outdoor stove.', 1, NULL, NULL, NULL, NULL, 1, 1, 1);
	INSERT INTO Goals VALUES ('Shelter', 'Make a shelter.', 1, NULL, NULL, NULL, NULL, 1, 1, 1);
	INSERT INTO Goals VALUES ('Light fire & cook', 'Light a cooking fire, cook a sausage or damper.', 1, NULL, NULL, NULL, NULL, 2, 1, 1);
	INSERT INTO Goals VALUES ('Toasting fork', 'Make a hot dog cooker or toasting fork.', 1, NULL, NULL, NULL, NULL, 2, 1, 1);
	INSERT INTO Goals VALUES ('Camp out', 'Camp out for a night with Cubs, friends or family. This can be in a caravan, hall or somewhere else away from home.', 1, NULL, NULL, NULL, NULL, 2, 1, 1);
	INSERT INTO Goals VALUES ('Camp duties', 'While on camp, assist with duties such as washing dishes, tidy the campsite, or preparing meals.', 1, NULL, NULL, NULL, NULL, 2, 1, 1);
	INSERT INTO Goals VALUES ('Cook with foil', 'Cook a meal in foil.', 1, NULL, NULL, NULL, NULL, 3, 1, 1);
	INSERT INTO Goals VALUES ('Cook outdoors', 'Cook a simple meal outdoors.', 1, NULL, NULL, NULL, NULL, 3, 1, 1);
	INSERT INTO Goals VALUES ('Sleep under canvas', 'Camp under canvas with Cubs, family or friends.', 1, NULL, NULL, NULL, NULL, 3, 1, 1);
	INSERT INTO Goals VALUES ('Pitch a tent', 'With a friend or a Six / team, show that you can pitch a hike tent, strike it and pack it away correctly. Explain why tents need to be aired and dried completely before being put in storage.', 1, NULL, NULL, NULL, NULL, 3, 1, 1);
	INSERT INTO Goals VALUES ('Talk about tents', 'Explain why tents need to be aired and dried completely before being put into storage', 1, NULL, NULL, NULL, NULL, 3, 1, 1);
	INSERT INTO Goals VALUES ('Outdoors - Outdoor Skills', '', 1, NULL, 3, 3, 3, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Use a compass', 'Discover how to use a compass.', 1, NULL, NULL, NULL, NULL, 1, 14, 1);
	INSERT INTO Goals VALUES ('Draw a map', 'Draw a map of the streets in your neighbourhood. ', 1, NULL, NULL, NULL, NULL, 1, 14, 1);
	INSERT INTO Goals VALUES ('Hank a rope', 'Know how to hank a rope. ', 1, NULL, NULL, NULL, NULL, 1, 14, 1);
	INSERT INTO Goals VALUES ('Reef knot', 'Learn how to tie and use a reef knot.', 1, NULL, NULL, NULL, NULL, 1, 14, 1);
	INSERT INTO Goals VALUES ('Make a compass', 'Make a simple compass. ', 1, NULL, NULL, NULL, NULL, 2, 14, 1);
	INSERT INTO Goals VALUES ('Lay a trail', 'Lay and follow a trail using trail signs.', 1, NULL, NULL, NULL, NULL, 2, 14, 1);
	INSERT INTO Goals VALUES ('Sheet bend', 'Learn how to tie and use a sheet bend.', 1, NULL, NULL, NULL, NULL, 2, 14, 1);
	INSERT INTO Goals VALUES ('Clove hitch', 'Learn how to tie and use a clove hitch.', 1, NULL, NULL, NULL, NULL, 2, 14, 1);
	INSERT INTO Goals VALUES ('Half hitches', 'Learn how to tie and use a round turn and two half hitches. ', 1, NULL, NULL, NULL, NULL, 2, 14, 1);
	INSERT INTO Goals VALUES ('Compass points', 'Draw the 8 main compass points.', 1, NULL, NULL, NULL, NULL, 3, 14, 1);
	INSERT INTO Goals VALUES ('Magnetic north', 'Use a compass to find magnetic north.', 1, NULL, NULL, NULL, NULL, 3, 14, 1);
	INSERT INTO Goals VALUES ('Bowline', 'Learn how to tie and use a bowline. ', 1, NULL, NULL, NULL, NULL, 3, 14, 1);
	INSERT INTO Goals VALUES ('DoC', 'Demonstrate an awareness of the Dept of Conservation Environmental Care Code.', 1, NULL, NULL, NULL, NULL, 3, 14, 1);
	INSERT INTO Goals VALUES ('Outdoors - Environment', '', 1, NULL, 3, 6, 9, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Grow a plant', 'Grow a plant and show the Leader.', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Visit a stream', 'Visit a stream, lake or pond and observe water life. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Use an Aquascope', 'Make and use an Aquascope. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Recognise poisonous plants', 'Be able to recognise poisonous plants.', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Learn about a tree', 'Choose a tree (preferably native) and find out about it. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Bark rubbing', 'Do a bark rubbing. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Conservation project', 'Take part in planning and carrying out a conservation project. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Preventing forest fires', 'Learn about preventing forest fires. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('The Outdoor Code', 'Find out about the Outdoor Code and make a poster about it. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Hunt for bugs', 'Hunt for bugs – what can be found and where? ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Birds in your area', 'Find out about birds in your area. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Make bird food tray', 'Find out what food type birds like and make food trays to attract them to your garden', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Wild animals', 'Find out about wild animals in NZ. ', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Native plants, birds or animals', 'Identify three native plants / birds / animals (any combination of three).', 1, NULL, NULL, NULL, NULL, NULL, 28, 1);
	INSERT INTO Goals VALUES ('Outdoors - Expeditions', '', 1, NULL, 3, 6, 9, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Go on an outing', 'Go on an outing.', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Visit a zoo', 'Visit a zoo, animal park, farm, or local veterinary clinic, or take part in some activity that teaches about animals and their care. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Local history walk', 'Go on a local history walk. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Explore a town', 'Explore a town or suburb other than your own. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Plan an outing', 'Plan and go on an outing. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Bike ride', 'Go on a bike ride. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Model boat', 'Build and use a model boat. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Explore a beach', 'Explore a beach or lake foreshore. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Treasure hunt', 'Take part in a treasure or scavenger hunt. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Ride a horse', 'Go for a horse ride. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Boating', 'Go sailing or boating. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Hiking', 'Go for a hike. ', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Orienteering', 'Go orienteering.', 1, NULL, NULL, NULL, NULL, NULL, 43, 1);
	INSERT INTO Goals VALUES ('Community - Helping Others ', '', 1, NULL, 3, 6, 3, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Good turns', 'Do a personal good turn every day for at least a week. Keep a diary (signed by a parent) listing the good turns done. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Help a disabled person', 'Help a disabled person in your community.', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Differently abled', 'Find out about activities that may be difficult for people with impaired hearing or sight, or other disabilities.', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Raise money', 'Help a charitable organisation raise money. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Food donation', 'Collect food and donate it to a food bank. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Community services', 'Find out about community services that help other people.', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Talk to the elderly', 'Talk to an elderly person about what life was like when they were Cub age. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Plants for the elderly', 'Grow vegetables, pot plants etc and then give them to elderly people. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Group clean up', 'With other Cubs clean up the litter round the outside of the Scout Hall, the railway station, bus stop or some other public place. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Recycling donation', 'Collect items at home that could be reused, e.g.: cardboard, plastic bottles, margarine containers: Donate to Kindergartens, your Scout Group, or other place of your choice. ', 1, NULL, NULL, NULL, NULL, NULL, 57, 1);
	INSERT INTO Goals VALUES ('Help new Cubs', 'Help new Cubs learn about what Cubs do, the Cub Law, etc.', 1, NULL, NULL, NULL, NULL, 3, 57, 1);
	INSERT INTO Goals VALUES ('Household responsibility', 'Carry out a responsibility at home for at least eight hours over four weeks. ', 1, NULL, NULL, NULL, NULL, 3, 57, 1);
	INSERT INTO Goals VALUES ('Gardening for the elderly', 'Do a simple gardening task or other simple jobs for an elderly person.', 1, NULL, NULL, NULL, NULL, 3, 57, 1);
	INSERT INTO Goals VALUES ('Community - My Community', '', 1, NULL, 3, 6, 9, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Community map', 'Locate on a map, places of interest in the local community. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Local history', 'Find out about the history of the local area.', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Make a map', 'Make a safe route map from home to school or Scout hall. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Place of worship', 'Visit a place of worship in your local community. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Another youth group', 'Find out about, belong to or participate in an activity with another youth organisation. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Local Mayor', 'Find out who the local Mayor is and what the Mayor is responsible for. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Schools in your area', 'Find out how many schools there are in your suburb or town. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('ANZAC Day', 'Find out where the nearest ANZAC Day ceremony is held. ', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Community Hall', 'Locate the nearest Community Hall and find out what it is used for.', 1, NULL, NULL, NULL, NULL, NULL, 71, 1);
	INSERT INTO Goals VALUES ('Community - Emergency Preparedness', '', 1, NULL, 3, 3, 3, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Visit emergency services', 'With your Pack visit the Fire Station, Ambulance Station, Police Station or Hospital. ', 1, NULL, NULL, NULL, NULL, 1, 81, 1);
	INSERT INTO Goals VALUES ('Make an emergency list', 'Make a list of emergency and frequently used phone numbers for your house, including the phone number of your next of kin. ', 1, NULL, NULL, NULL, NULL, 1, 81, 1);
	INSERT INTO Goals VALUES ('Prepareness for fire', 'Explain what to do in the case of fire.', 1, NULL, NULL, NULL, NULL, 1, 81, 1);
	INSERT INTO Goals VALUES ('Plastic bag raincoats', 'Make a raincoat using plastic bags. ', 1, NULL, NULL, NULL, NULL, 1, 81, 1);
	INSERT INTO Goals VALUES ('Civil Defense', 'Find out about Civil Defence in your area or visit a Civil Defence headquarters in your Zone. ', 1, NULL, NULL, NULL, NULL, 2, 81, 1);
	INSERT INTO Goals VALUES ('Natural disaster kit', 'Make a list of items needed for a natural disaster kit at home. ', 1, NULL, NULL, NULL, NULL, 2, 81, 1);
	INSERT INTO Goals VALUES ('Water or gas leaks', 'Find out what to do in the event of a burst water pipe and a gas leak. ', 1, NULL, NULL, NULL, NULL, 2, 81, 1);
	INSERT INTO Goals VALUES ('Lost in the bush', 'Explain what to do if lost in the bush. ', 1, NULL, NULL, NULL, NULL, 2, 81, 1);
	INSERT INTO Goals VALUES ('Personal Survival Kit', 'Make your own Personal Survival Kit.', 1, NULL, NULL, NULL, NULL, 3, 81, 1);
	INSERT INTO Goals VALUES ('Home emergency kit', 'List the items needed for a home emergency kit. ', 1, NULL, NULL, NULL, NULL, 3, 81, 1);
	INSERT INTO Goals VALUES ('Evacuation planning', 'Prepare an evacuation plan for your home. ', 1, NULL, NULL, NULL, NULL, 3, 81, 1);
	INSERT INTO Goals VALUES ('Throw a lifeline', 'Throw a lifeline.', 1, NULL, NULL, NULL, NULL, 3, 81, 1);
	INSERT INTO Goals VALUES ('Community - Our World / Our Country', '', 1, NULL, 3, 6, 3, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Another countries promise', 'Find out about the Cub Promise in another country. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('The NZ Flag', 'Draw or make the NZ Flag. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('NZ emblems', 'Draw or make NZ’s special emblems. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Scouts Patron Saint', 'Find out about the Patron Saint of Scouting. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Baden Powell', 'Find out about Baden Powell’s Life. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Make a poster', 'Make a Poster using pictures and information about Scouting in another country, their awards, interest badges, activities etc. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Correspondence', 'Correspond with a Cub from another country. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Another countries game', 'Play a game from another country. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Cultural greetings', 'Learn greetings and simple words from another culture. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Maori legends', 'Tell the rest of the Pack a Maori Legend. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Maori string game', 'Learn a Maori string game. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Visit a Marae', 'Visit a Marae. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Learn the haka', 'Lean a Haka or Maori song. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Overseas cub meeting', 'Participate in a Cub meeting based on another country. ', 1, NULL, NULL, NULL, NULL, NULL, 94, 1);
	INSERT INTO Goals VALUES ('Prepare the flag', 'Prepare the Flag for Flag Break and carry out the Flag Break. ', 1, NULL, NULL, NULL, NULL, 3, 94, 1);
	INSERT INTO Goals VALUES ('Scout groups', 'Explain how the youth sections in your Scout group fit together. ', 1, NULL, NULL, NULL, NULL, 3, 94, 1);
	INSERT INTO Goals VALUES ('Share a song', 'Share a song, game or activity or words from another culture other than your own in the community.', 1, NULL, NULL, NULL, NULL, 3, 94, 1);
	INSERT INTO Goals VALUES ('Personal Development- Physical', '', 1, NULL, 3, 6, 9, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Fitness skills', 'Attempt at least six different fitness skills.', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Rope ladder', 'Climb a rope ladder. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Team sports', 'Team Sports – Take part in a mini Olympics or a Team sport of your choice. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Gymnastic', 'Take part in a gymnastic display. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Sports meeting', 'Take part in a sports meeting (Swimming, athletics etc). ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Wheels activity', 'Take part in a wheels activity: rollerblading, cycling etc. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Confidence course', 'Attempt a confidence course. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Ball games', 'Take part in a game involving throwing and catching a ball. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Learn water skills', 'Learn water skills such as treading water, surface dive, and a plunge. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Climbing walls', 'Use a climbing wall. ', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Maori string games', 'Demonstrate two Maori string games.', 1, NULL, NULL, NULL, NULL, NULL, 112, 1);
	INSERT INTO Goals VALUES ('Personal Development- Social and Life Skills', '', 1, NULL, 3, 6, 3, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Thank you cards', 'Make and send a Thank-you Card to someone in the Pack who has helped you. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Scout hall rules', 'Make a list of rules for the Scout hall. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Road Code for pedestrians', 'Learn the Road Code for pedestrians. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('The Bike Code', 'Learn the Bike Code. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Caring for pets', 'Explain how to care for a pet. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Hand tools', 'Demonstrate how to use and care for hand tools.', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Healthy eating', 'Make a poster about healthy eating. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Text messages', 'Learn how to send a text message on a mobile phone. ', 1, NULL, NULL, NULL, NULL, NULL, 124, 1);
	INSERT INTO Goals VALUES ('Campfire songs', 'On your own or with other Cubs or Scouts, lead a song at a campfire. ', 1, NULL, NULL, NULL, NULL, 3, 124, 1);
	INSERT INTO Goals VALUES ('Personal hygiene', 'Explain the need for personal hygiene at home and at camp. ', 1, NULL, NULL, NULL, NULL, 3, 124, 1);
	INSERT INTO Goals VALUES ('Burns and scalds', 'Know how to treat burns and scalds. ', 1, NULL, NULL, NULL, NULL, 3, 124, 1);
	INSERT INTO Goals VALUES ('Cuts and grazes', 'Demonstrate how to clean and dress a simple cut or graze.', 1, NULL, NULL, NULL, NULL, 3, 124, 1);
	INSERT INTO Goals VALUES ('Personal Development- Expression', '', 1, NULL, 3, 6, 9, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Miming', 'Act in a mime.', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Skits', 'Perform a play or a skit. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('7 day cub promise', 'Draw a set of seven pictures, each about a day in the week before the pack meeting. Each to show something done that day to keep the Cub Promise. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Songs and yells', 'Learn some campfire songs and yells. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Shadow show', 'Take part in a shadow show or shadowgraph. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Use puppets', 'Tell a story using puppets. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Story games', 'Take part in a story telling game. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Make a kite', 'Make a kite. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Make a mask', 'Make a mask. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Whittling and carving', 'Carve or whittle a tekoteko. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Make a toy', 'Make a simple toy. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('A useful article', 'Make a useful article. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('A musical instrument', 'Make a musical instrument. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Make something', 'Make something using different mediums – e.g.: clay, paper, card, plastic bottles etc. ', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Learning crafts', 'Learn a new craft – invite or visit a craft specialist to learn a new craft.', 1, NULL, NULL, NULL, NULL, NULL, 137, 1);
	INSERT INTO Goals VALUES ('Personal Development- Discovery', '', 1, NULL, 3, 6, 2, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Song or prayer book', 'Make up a simple prayer for the Pack, add it to your Pack prayer book. Help make a Pack Song Book. ', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Family history', 'Find out about your family history going back to your grandparents’ time. ', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Family treasure', 'Show and Tell. Bring an antique or a family treasure to talk about.', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Using your senses', 'Using your senses. Take part in activities that involve smell, taste, hearing, touch and feel. ', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Be an observer', 'Be an observer of nature, investigate small creatures – record what you have observed. .', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Detective kit', 'Build a Detective Kit – build the kit to detect animals or spies. ', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Discover something new', 'Discover something new and tell the Pack about it. ', 1, NULL, NULL, NULL, NULL, NULL, 153, 1);
	INSERT INTO Goals VALUES ('Plan a cub activity', 'Help the Cub Leaders plan an activity or programme. ', 1, NULL, NULL, NULL, NULL, 3, 153, 1);
	INSERT INTO Goals VALUES ('Organise a Cubs Own', 'Organise with the Cub Leaders help, a Cubs Own. Take a special part in it yourself.', 1, NULL, NULL, NULL, NULL, 3, 153, 1);

	-- Reset goals to allow silver/gold to count to bronze, gold to count to silver
	UPDATE Goals SET Level2ChildRequirementCount = 6 WHERE Level2ChildRequirementCount = 3 AND GoalId IS NULL AND OrganisationId = 1
	UPDATE Goals SET Level3ChildRequirementCount = 9 WHERE Level3ChildRequirementCount = 3 AND GoalId IS NULL AND OrganisationId = 1

END

DECLARE @hasPersonalGoals1 bit
SET @hasPersonalGoals1 = (SELECT TOP 1 Id FROM Goals WHERE OrganisationId = 1 AND GoalType = 2 AND Title = 'Artist')
IF (@hasPersonalGoals1 IS NULL)
BEGIN

	INSERT INTO Goals VALUES ('Artist', '', 2, 3, NULL, NULL, NULL, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Draw in front of a leader', 'Draw in the presence of your examiner, with pencil, brush, pen or crayon, an original illustration of an incident, character or scene from a simple story told by your examiner. This should be 18cm x 13cm.', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Greeting card', 'Design and make a greeting card', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Make a model', 'Make a model in clay or plastic materials. Your model should be at least 10cm square.', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Make a decorative article', 'Make a decorative article from cane, raffia, wool, leather, wood or other suitable material approved by the examiner in advance.', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Potato or lino cuts', 'Make a design and print it on paper or fabric e.g. using potato or lino cuts or similar methods.', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Make a toy', 'Make a worthwhile toy or model.', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Plastic or metal', 'Undertake a project after discussing it with your examiner. It should involve the use of plastic or metal. The project should be imaginative and of high quality. ', 2, NULL, NULL, NULL, NULL, NULL, 163, 1);
	INSERT INTO Goals VALUES ('Athlete Stage 1', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Standing jump (1.45m)', 'Jump at least 1.45 metres from a standing start (with two feet together)', 2, NULL, NULL, NULL, NULL, NULL, 171, 1);
	INSERT INTO Goals VALUES ('50 metre sprint (<10s)', 'Sprint 50m in 10 seconds or less', 2, NULL, NULL, NULL, NULL, NULL, 171, 1);
	INSERT INTO Goals VALUES ('Ball throw (10m)', 'Throw a ball at least 10 metres on the full (without bouncing)', 2, NULL, NULL, NULL, NULL, NULL, 171, 1);
	INSERT INTO Goals VALUES ('Running long jump (2m)', 'Jump at least 2 metres from a running start', 2, NULL, NULL, NULL, NULL, NULL, 171, 1);
	INSERT INTO Goals VALUES ('High jump (0.85m)', 'Jump over an obstacle at least 0.85 metres high', 2, NULL, NULL, NULL, NULL, NULL, 171, 1);
	INSERT INTO Goals VALUES ('Athlete Stage 2', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Standing jump (1.55m)', 'Jump at least 1.55 metres from a standing start (with two feet together)', 2, NULL, NULL, NULL, NULL, NULL, 177, 1);
	INSERT INTO Goals VALUES ('50 metre sprint (<9.5s)', 'Sprint 50m in 9.5 seconds or less', 2, NULL, NULL, NULL, NULL, NULL, 177, 1);
	INSERT INTO Goals VALUES ('Ball throw (25m)', 'Throw a ball at least 25 metres on the full (without bouncing)', 2, NULL, NULL, NULL, NULL, NULL, 177, 1);
	INSERT INTO Goals VALUES ('Running long jump (2.6m)', 'Jump at least 2.6 metres from a running start', 2, NULL, NULL, NULL, NULL, NULL, 177, 1);
	INSERT INTO Goals VALUES ('High jump (0.91m)', 'Jump over an obstacle at least 0.91 metres high', 2, NULL, NULL, NULL, NULL, NULL, 177, 1);
	INSERT INTO Goals VALUES ('Athlete Stage 3', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('Standing jump (1.65m)', 'Jump at least 1.65 metres from a standing start (with two feet together)', 2, NULL, NULL, NULL, NULL, NULL, 183, 1);
	INSERT INTO Goals VALUES ('50 metre sprint (<9s)', 'Sprint 50m in 9 seconds or less', 2, NULL, NULL, NULL, NULL, NULL, 183, 1);
	INSERT INTO Goals VALUES ('Ball throw (30m)', 'Throw a ball at least 30 metres on the full (without bouncing)', 2, NULL, NULL, NULL, NULL, NULL, 183, 1);
	INSERT INTO Goals VALUES ('Running long jump (3.2m)', 'Jump at least 3.2 metres from a running start', 2, NULL, NULL, NULL, NULL, NULL, 183, 1);
	INSERT INTO Goals VALUES ('High jump (1m)', 'Jump over an obstacle at least 1 metres high', 2, NULL, NULL, NULL, NULL, NULL, 183, 1);
	INSERT INTO Goals VALUES ('Book Reader', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1);
	INSERT INTO Goals VALUES ('A list of books', 'Produce a list of books you have read recently. Name their authors and be able to tell the examiner something about three of the books. The books can be chosen by you and should include at least one factual book. ', 2, NULL, NULL, NULL, NULL, NULL, 189, 1);
	INSERT INTO Goals VALUES ('Care for books', 'Explain how to care or books.', 2, NULL, NULL, NULL, NULL, NULL, 189, 1);
	INSERT INTO Goals VALUES ('Dictionary, encyclopaedia, atlas', 'Demonstrate that you can use a dictionary, encyclopaedia and an atlas.', 2, NULL, NULL, NULL, NULL, NULL, 189, 1);
	INSERT INTO Goals VALUES ('Finding books in a library', 'Explain to your examiner how the books in your library are set out and how you would find a specific book.', 2, NULL, NULL, NULL, NULL, NULL, 189, 1);

END

DECLARE @hasPersonalGoals2 bit
SET @hasPersonalGoals2 = (SELECT TOP 1 Id FROM Goals WHERE OrganisationId = 1 AND GoalType = 2 AND Title = 'Collector')
IF (@hasPersonalGoals2 IS NULL)
BEGIN

INSERT INTO Goals VALUES ('Collector', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Make a collection', 'Make a collection over a period of three months of a number of similar items (e.g. stamps, coins, postcards, badges, fossils).', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Display your collection', 'Display the collection in an exciting and interesting way.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Talk about your collection', 'Talk about items in the collection that particularly interest you', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Another collection', 'Visit or look at a collection made by someone else and explain what you like or dislike about the presentation of the collection. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Computer', '', 2, 5, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Use a computer', 'Have regular use of a computer.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Explain the parts', 'Explain the main parts of a Personal Comuper', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Use a keyboard', 'Show you can competently use the keyboard by: 
1.  Typing in capitals and small letters. 
2.  Using the top symbols of the keys. 
3.  Using other important keys as asked by the examiner', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Talk about programs', 'Tell the examiner about the different types of programs on the computer and what they are used for', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Give a demo', 'Demonstrate how to use one of the programs', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Conservation', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Make or observe', 'Complete one of the following:
1. Make, set up and maintain a bird feeder, bird table, or birdbath. 
2. Make, set up and maintain a bird nesting box. 
3. Take part in a nature survey. 
4. Take part in an anti-litter campaign. 
5. Arrange a nature trail or competition for the members of your Cub Pack. 
6. Choose a wild animal, tree, fish or bird. Discover all you can about it and report your discoveries on a wall chart, in a logbook, or in a scrapbook. 
7. Visit a zoo, botanical gardens, nature gardens, natural history museum or watch a film about animals or plants. Report on your observations. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Go on an expedition', 'Go on an expedition with your group into the countryside and: 
1. Find some examples showing how man has damaged nature and some examples showing how man has improved nature. 
2. Write down some rules for good behaviour in the countryside (outdoor code) and show how you are doing your best to keep them', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Endangered species', 'Complete one of the following: 
1. Choose an endangered plant or animal in New Zealand and find out what is being done to save it and how you can help. 
2. Choose an endangered animal in another country and find out what is being done to save it and how you can help. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Improve the environment', 'Complete one of the following: 
1. Plant a tree 
2. Lay grass on an area where there is no vegetation cover 
3. Plant something in a balcony box or indoors in a flowerpot. 
4. Clear rubbish from a beach or riverbank and explain why rubbish is so dangerous to animals. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Cook', '', 2, 5, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Boil an egg', 'Boil an egg for three minutes, remove the top from the egg and serve up the egg in an eggcup.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Prepare a sandwich', 'Prepare a sandwich for your school lunch, using your favourite filling. Wrap the sandwich up and put it in your lunch box', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('A piece of fruit', 'Explain the benefit of including a piece of fruit with the lunch', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Do the dishes', 'Wash, dry and put away the dishes you used', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Evening meal', 'Help prepare the evening meal for your family for a week.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Cyclist', '', 2, 7, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Use a bike', 'Have the regular use of a bicycle of the correct size and equipped as set out in the road code', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Mount and dismount', 'Demonstrate how to mount and dismount a bicycle correctly.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Clean and oil', 'Clean and oil the bicycle and pump up the tyres', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Roadworthiness', 'Explain the need for keeping the bicycle in road worthy condition. Explain the consequences for not doing so', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Mend a puncture', 'Show how to mend a puncture', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Talk about hills', 'Explain the dangers of cycling on hills', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Go for a ride', 'Go for a short ride while the examiner watches. Demonstrate the proper hand signals and the road rules applying to bicycles', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Entertainer', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('2 folk songs', 'Sing two folk songs', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('5 minute yarn', 'Tell a yarn lasting at least five minutes', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('3 magic tricks', 'Demonstrate three magic tricks', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Puppet story', 'Tell a story using puppets.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Teach a song', 'Teach the Cub Pack a simple song', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Play an instrument', 'Play a simple melody on a musical instrument', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Perform a play', 'Make up a play and produce it for the pack', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Tumbling tricks', 'Perform a series of tumbling tricks', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Folk dancing', 'Lead the pack in some form of folk dancing', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Other entertainment', 'Any other form of entertainment of a similar standard that should be agreed to by the examiner.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('First Aid', '', 2, 7, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('A big fright', 'Explain why people should lie down if they have had a big fright or have been injured.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Keep someone warm', 'Demonstrate how to keep someone warm and comfortable with one or two blankets.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Mild headaches', 'Demonstrate how apply a cold face cloth to a person suffering from a mild headache.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Cuts and grazes', 'Demonstrate how to gently clean a cut or graze, apply an antiseptic cream and a plaster.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Call an adult', 'Explain the limits of first aid treatment and when it’s important to call an adult. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Ambulance and police', 'Explain how to call an ambulance and the police and when this should be done.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Bites and stings', 'Explain how to treat insect bites and stings.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Fishing', '', 2, 9, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Be able to swim', 'Be able to swim sufficiently to get to the bank of a stream or river if you fall in.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Rivers and creeks', 'Explain the dangers of fishing off the banks of rivers and creeks and how to minimize the risk of injury or drowning.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Baits and lures', 'Demonstrate how to bait a hook correctly and safely and explain your choice of bait, or demonstrate how to choose a suitable lure and fix it to the line.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Avoiding injury', 'Explain how you can avoid injuring other people with you when you are throwing your line in the river, creek or the sea. Demonstrate how to do this safely', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Removing the hook', 'Demonstrate how to kill a fish quickly and humanely and then remove the hook from its mouth.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Storing fish', 'Explain how to store caught fish so that is doesn''t spoil before getting it home to a fridge, and why it is so important.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Fishing limits', 'Research and then explain the types of fish and shellfish you may catch where you fish and what limits there are on the numbers caught.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Care for your gear', 'Demonstrate how to care for and store your fishing line, hooks and sinkers and rods if any so that they remain in good condition and are ready to use when you next go fishing.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Keep a log', 'Keep a simple log of at least four fishing trips over at least two months.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Gardening', '', 2, 2, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Complete one', 'Complete one of the following:
1.  Look after a patch of garden, know what tools are needed and how to use them and look after them. Grow something in your garden suitable for the time of year. 
2. Grow a variety of plants indoors and know the conditions under which they must be kept.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Complete two', 'Complete two of the following:
1. Grow vegetables or flowers from seed; know how to prick out and transplant. 
2. Know about hazards to plants and flowers (e.g. diseases, pests) and understand what preventative methods can be taken and what can be done to aid rowth. 
3. Know how to store vegetables and how long they may be stored. 
4. Show how to prepare flowers for display. 
5. Make a compost heap. 
6. Carry out a soil test using a standard kit. 
7. Help plan and plant a rockery garden, a fern or herb garden, herbaceous border, hanging basket, garden tub etc. 
8. Help maintain a lawn and understand why it needs constant attention', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Hobbies', '', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('3 month hobbie', 'Show a continuing interest and progress, over a period of at least three months, in a hobby or skill.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Demonstrate your hobbie', 'Demonstrate it and discuss it with an adult or your Cub Pack. Suitable hobbies might be: chess, singing in a choir, model making or your own special hobby. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Home  Help', '', 2, 8, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Wash dishes', 'Take your turn with washing or drying the dishes, or stacking the evening dishes in a dishwasher', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Food scraps', 'Explain why it’s important to remove scraps of food from the kitchen bench as soon as possible after preparing and eating a meal.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Set the table', 'Take your turn setting the dinner table for the evening meal.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Tidy your bedroom', 'Tidy your bedroom before going to school everyday for a period of one week and without being reminded.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Clean your shoes', 'Learn to clean your shoes and make sure they are clean before going out each day', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Do the vacuuming', 'Assist with vacuum cleaning the living area of the house by picking up toys and books and putting them away.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Wash your scarf', 'Wash and Iron your Cub Scarf.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Sew a badge', 'Sew a badge on your jacket or blanket or sew a button on a garment.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('My Faith', '', 2, 6, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Good turns', 'Do some good turns for your family', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Make a trip', 'Make a trip to a church, shrine, temple or meeting place associated with your faith and then discuss what you observed during your visit. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Take care of others', 'The Bible and books of other religious faiths describe people taking care of others. Read such a story and then do something for someone who may be ill or lonely. You could make a card, take them some cooking or run messages for them.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Read a prayer', 'Read a prayer at your Cub Pack opening or closing', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Learn from your faith', 'Our faith asks us to love our families and friends and also people we don’t care for very much. Ask some one to find such a story in the book your faith uses, then read it and discuss what you learned from it', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Attend a service', 'Attend a meeting or service of your religious faith.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Pet Keeper', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Look after a pet', 'Own a pet and look after it correctly for three months.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Keep a record', 'Keep a record in an exercise book of the following: 
1.  What you feed your pet and how often. 
2.  When you clean out it cage, house run or tank etc. 
3.  Where you get your pet’s food from. 
4.  How you ensure your pet does not get out or lost while you are cleaning its ‘home’. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Signs of sickness', 'Research and write down the signs and symptoms you would look for so you will know if your pet gets sick.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Caring for the young', 'What special care is needed when your pet has just been born or has young of its own.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Natural habitat', 'What is the natural habitat for your pet if it lives in the wild, or once did, or its ancestors did.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Photographer', '', 2, 5, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Take pictures or video', 'Take a set of 12 pictures or two and half minutes if video film describing an event or activity. It should be a mix of landscape, people and action shots', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Know your camera features', 'Discuss with the examiner the main features of the camera you used.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Discuss your results', 'Discuss with the examiner what you set out to do and whether the results are what you intended.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Your best shots', 'Discuss what shots you are really pleased with and how you would do things differently for any shots that were not very successful', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Display the photos', 'Display the photos to the Cub Pack and explain what they are about. You may use any of the following to display the photos: 
1. A computer slide show with or without a projector. 
2. A photograph album 
3. A clear folder etc', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Scientist', '', 2, 2, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Make a model', 'Make a model (house, theatre, house, stage etc) and wire it up with bulbs, batteries and switches', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Test gliders', 'Make gliders from polystyrene sheets or cards. Devise tests to see which works best: 
1. Stays up longest 
2. Flies furtherest 
3. Is easiest to control with turns and loops etc.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('White light', 'Demonstrate that white light is made up of several colours', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Make a periscope', 'Make a periscope or microscope and explain how it works', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Weather apparatus', 'Make a weather apparatus to record at the same time each day of the week the following: 
1. Wind direction 
2. Rainfall 
3. Humidity 
4. Clouds 
5. Temperature ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Growing plants', 'Find out what happens when light and water are not used when growing plants. Discuss what you have discovered. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Grow crystals', 'Grow some crystals from a concentrated solution of any chemical', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Expanding metal', 'Devise an experiment, which proves that metal expands when heated', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Invisible ink', 'Prepare an invisible ink, show how to use it and describe how it works', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Sound travels', 'Demonstrate that sound travels', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Sports', '', 2, 6, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Explain the rules', 'Explain simply, the rules of two sports such as Rugby, Netball, Soccer, Cricket, Hockey, Archery, Volleyball, Baseball etc. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Take part', 'Take a regular active part and demonstrate reasonable proficiency in at least one sport. You may use a school sports team to pass this badge', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Caring for your gear', 'Demonstrate you know how to look after your sports equipment and clothing. Examples would be: Blow up a ball, cleaning your shoes or boots, cleaning your bat and pads etc.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Good spirits', 'Show that you are a good sports person by demonstrating a good spirit, keeping your temper and always doing your best when playing', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Sports hygene', 'Explain why it’s important to take a shower or bath after the game and change into fresh clean clothes', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Caring for your feet', 'Explain why it’s important to take good care of your feet and what can happen if you don’t.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Swimming Stage 1', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Swim 15 metres', 'Swim at least 15 metres using one type of stroke. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Float for 10 seconds', 'Float on your back for 10 seconds minimum. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Jump or dive', 'Jump or dive from the side of the pool. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('There and back again', 'Swim a few metres, turn around without swimming or touching anything and then swim back to your starting point. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Swimming Stage 2', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Swim on your back', 'Swim 15m on your back using your legs only.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Dive to the bottom', 'Swim in water at least 1.25 metres deep, dive and retrieve an object about the size of half a brick from the bottom of the pool.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Front and back stroke', 'Swim 15 metres, the first half using any front stoke other than a crawl, turn over and complete the rest of the distance using any back stroke.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Swim for 25 metres', 'With a plain header or running dive, swim 25 metres using a front crawl. Dive and glide as far as possible before starting to swim.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Swimming Stage 3', '', 2, 4, NULL, NULL, NULL, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
INSERT INTO Goals VALUES ('Swim 50 metres', 'With a plain header or a running dive, swim 50 metres front crawl without a pause.', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Swim in clothes', 'Swim clothed in a shirt and shorts, 25 metres sidestroke without pause. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Tread water', 'Tread water for between 30 seconds and one minute. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
INSERT INTO Goals VALUES ('Rescue breathing', 'Explain rescue breathing by a written test or demonstration using a manikin. ', 2, NULL, NULL, NULL, NULL, NULL, @parentId, 1);

END

DECLARE @hasCornerstone2 bit
SET @hasCornerstone2 = (SELECT TOP 1 Id FROM Goals WHERE OrganisationId = 1 AND GoalType = 1 AND Title = 'New Experiences - Personal Interests')
IF (@hasCornerstone2 IS NULL)
BEGIN

	INSERT INTO Goals VALUES ('New Experiences - Personal Interests', '', 1, NULL, 1, 2, 3, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
	INSERT INTO Goals VALUES ('Earn 1 personal badge', 'Earn at least 1 personal badge', 1, NULL, NULL, NULL, NULL, 1, @parentId, 1);
	INSERT INTO Goals VALUES ('Earn 2 personal badges', 'Earn at least 2 personal badges', 1, NULL, NULL, NULL, NULL, 2, @parentId, 1);
	INSERT INTO Goals VALUES ('Earn 3 personal badges', 'Earn 3 personal badges (1 badge per Bronze, Silver and Gold)', 1, NULL, NULL, NULL, NULL, 3, @parentId, 1);
	INSERT INTO Goals VALUES ('New Experiences - National Programme', '', 1, NULL, 1, 2, 3, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
	INSERT INTO Goals VALUES ('National Programmes', 'Participate in 3 National Programme Events, eg. National Cub Daye, MudSlide Day, ANZAC Day, or attend a National Event or Group Activity based around the National Programme Theme for the period (1 activity per Bronze, Silver and Gold)', 1, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
	INSERT INTO Goals VALUES ('New Experiences - Group Event', '', 1, NULL, 1, 2, 3, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
	INSERT INTO Goals VALUES ('Group Events', 'Participate in 3 Group, Zone or Regional Events, eg. a Founders Day activity, visit a Gang Show, take part in a Zone Sports day or evening (1 activity per Bronze, Silver and Gold)', 1, NULL, NULL, NULL, NULL, NULL, @parentId, 1);
	INSERT INTO Goals VALUES ('New Experiences - Challenges', '', 1, NULL, 1, 2, 3, NULL, NULL, 1); SET @parentId = SCOPE_IDENTITY; 
	INSERT INTO Goals VALUES ('Cub challenges', 'Take part in a Cub Camp, visit a Scout Camp, visit another Cub Pack (1 activity per Bronze, Silver and Gold)', 1, NULL, NULL, NULL, NULL, NULL, @parentId, 1);

END