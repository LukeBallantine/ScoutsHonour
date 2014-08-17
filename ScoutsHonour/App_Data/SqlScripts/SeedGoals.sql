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