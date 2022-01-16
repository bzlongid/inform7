"A Walk in the Park" by Zeya

[RULES]

The current health of the player is 10.

When play begins:
	now a random apple is poisonous.
	
Understand "give [things] to [someone]" as giving it to.


[COURTYARD]
The Courtyard is a room. "[If The Courtyard is unvisited]You wake up in a daze. Where are you? The breeze is warm but there is something off about the air around you. There are beds of poorly maintained flowers. The grass is green, and the foliage is healthy, so there must be something keeping the plants alive. Moss grows over the stone steps that lead north to a small castle- perhaps one may even call it a large watchtower? You feel inclined to go inside.[END IF][If The Courtyard is visited] Overgrown flowers and mossy stone steps. Nothing too outdone.[END IF]"


[GREAT HALL]
The Great Hall is a room. "[If The Great Hall is unvisited]What is this place? Your eyes quickly dart around the room to make sense of your surroundings. The stone walls make every movement in the room echo. To the north you see a large marble archway, the west a door, and the east another entranceway.[END IF][If The Great Hall is visited]A long hall. The stone walls make every movement in the room echo. To the north you see a large marble archway, the west a door, and the east another entranceway.[END IF]"

The Jester is a person in the Great Hall.


[THRONE ROOM]
The Throne Room is a room. "An immense marble room with stained glass windows. A room too large to make sense from the outside. All colors of light cascade around the room. In the very back is a black velvet throne."

The Wicked Witch is a person in the Throne Room. 


[EAST WING]
The East Wing is a room. "A rectangular room. Mostly just a kitchen with a window looking out to the courtyard."

A wooden cupboard is a container. A wooden cupboard is opaque. A wooden cupboard is closed. A wooden cupboard is openable. A wooden cupboard is in the east wing. The wooden cupboard is fixed in place. The description of the wooden cupboard is "It seems knawed on at the corners.[If the Throne Room is unvisited] Perhaps the only signs of life besides the jester in this castle."

A food is a kind of thing that is edible. Food has some text called flavor. The flavor of food is usually "Tolerable." 
Toxicity is a kind of value. The toxicities are safe and poisonous. Food has a toxicity. Food is usually safe.
The plural of apple is apples. An apple is a kind of food. There are 5 apples in the wooden cupboard. 
After eating safe apple: 
	if current health of the player is less than 10:
		increase the current health of the player by 1;
	say "Mm, crisp and refreshing. That made me feel better. (Your current health is now [current health of player].)".
After eating poisonous apple:
	if the current health of the player is 1:
		end the story saying "You fool, the apple was poisonous.";
	decrease the current health of the player by 1;
	say "BLEGH! The apple was poisoned! Who could have done this... (Your current health is now [current health of player].)".
	
The plural of poisonous potato is poisonous potatoes. A poisonous potato is a kind of food. A poisonous potato is poisonous. There are 2 poisonous potatoes in the wooden cupboard.
After eating poisonous potato:
	if the current health of the player is 2:
		end the story saying "You fool, the potato was poisonous.";
	decrease the current health of the player by 2;
	say "BLEGH! Why would I do that!? (Your current health is now [current health of player].)".
	
A wooden sword is in the wooden cupboard.

Intricate Bronze Key is in The East Wing. The description of Intricate Bronze Key is "Weighted, and crested with fine jewels."
A Paper Note is a thing. A Paper Note is in The East Wing. The printing of the Paper Note is "Rid of the witch. Take the key and READ the Scarlett Book in the room to the WEST of the castle. and don't forget to keep an eye on your VITALS.' PS: don't be shy, try asking the people in the castle about things-". The description of the Paper Note is "The handwriting is barely legible. It looks like whoever wrote it was in a rush."


[SECRET ROOM]
The Secret Room is a room. "A room the size of a broomcloset. Clean of dust unlike the rest of the castle. Someone must be keeping this space clean."
	
The Scarlett Book is a thing. Scarlett Book is in the Secret Room. The printing of the book is "Take the blessing of the gods. It's the only way you may attack the witch.". The description of the Scarlett Book is "A leatherbound, blood colored book which is surprisingly warm to the touch. What happens when you read the contents?"

The Blessing of the Gods is a thing. The Blessing of the Gods is in the Secret Room. The description of the Blessing of the Gods is "An glowing orb of matter. Touching it makes you feel strengthened".


[BRONZE DOOR]
The Bronze Metal Door is a door. The Bronze Metal Door is locked. "A door which [if the player is in The Great Hall]seems to conceal a special room[otherwise]leads back to the Great Hall[END IF]." The matching key of The Bronze Metal Door is the Intricate Bronze Key. 

North of the Courtyard is The Great Hall. North of the Great Hall is the Throne Room. West of the Great Hall is the Bronze Metal Door. West of the Bronze Metal Door is the Secret Room. East of the Great Hall is the East Wing.


[HEALTH]
A person has a number called max health.
A person has a number called current health.

The max health of a person is 10.
The max health of the player is 10.

Vitals is an action applying to nothing.
Understand "vitals" as vitals.
Report vitals:
	say "Your current health is [current health of the player].".
	
	
[TABLES & ACTIONS]

Table of the Wicked Witch Responses
Topic	Response	Index
"Who are you"	"The Lord of the castle, obviously."	"Who are you"
"What are you doing here"	"I can ask you the same thing."	"What are you doing here"
"What are you"	"Evil."	"What are you"
"What can you tell me"	"Nothing."	"What can you tell me"
"the Jester"	"You mean Hector?"	"The Jester"
"Zeya"	"My creator?"	"Zeya"

After asking the Wicked Witch about something:
	if the topic understood is a topic listed in the Table of the Wicked Witch Responses:
		say "[Response entry]";
	if the topic understood is not a topic listed in the Table of the Wicked Witch Responses:
		if the current health of the player is 1:
			end the story saying "The Wicked Witch didn't have the time to converse about things like that with you. She snapped your neck before eating you whole.";
		decrease the current health of the player by 1;
		say "I don't care about things like that. [italic type]She kicks you.[roman type] (Your current health is now [current health of player].)".
				
Instead of attacking the Wicked Witch:
	If the player does not carry the Blessing of the Gods:
		end the story saying "YOU FOOL. YOU THINK YOU CAN ATTACK ME!?[italic type] Tentacle like arms burst from her back before the world goes black.";
	If the player carries the Blessing of the Gods:
		end the story saying "A sudden strength comes over you. Gold and white lights flood the room. You blink and wake up in your bedroom.".
		[if the current health of the player is 3 or less:
			end the story saying "You miss horribly, the strikes the back of your neck. The world goes black.".
		decrease the current health of the player by 3.
		say "You try attacking the witch with the wooden sword. She dodges (Your current health is now [current health of player].)".]

Table of the Jester Responses
Topic	Response	Index
"Who are you"	"The Jester of the castle, the entertainment, the energy!."	"Who are you"
"What are you doing here"	"I'm trapped. if I could leave, I would.."	"What are you doing here"
"What are you"	"Just Jokes."	"What are you"
"What can you tell me"	"About what."	"What can you tell me"
"Hints"	"Type 'vitals'. That helps people"	"Hints"
"The Wicked Witch"	"HUSH NOW. Talke to her yourself. She's sensitive to topics. There is a certain phrase to make her leave."	"The Wicked Witch"
"Zeya"	"My creator?"	"Zeya"

After asking the Jester about something:
	if the topic understood is a topic listed in the Table of the Jester Responses:
		say "[Response entry]";
	if the topic understood is not a topic listed in the Table of the Jester Responses:
		say "How would I know, I'm only a Jester.".
		
Instead of attacking the Jester:
	say "[one of]You think you're quick, huh?[or]And just what do you think you're doing?[or]You sly dog.[at random][italic type]The jester parries your attack. (Your current health is now [current health of player].)"

[NEW COMMAND: TALKING]
Understand "talk to [someone]" as talking.
Talking is an action applying to one thing.
Check talking:
	if the noun is not a person:
		say "[The noun] wouldn't understand you.";
	if the noun is the Jester:
		say "[one of][italic type]The juster jumps at the sight of you.[line break][roman type]Dear me, I haven't seen another living soul here in DECADES. I'm Eugene. The Jester of the house. Welcome to Fort Granite, our humble abode. Here's ehh- [italic type]*the Jester leans in*[roman type] a little hint, between the two of us: using the command VITALS usually helps people. That's all.[or]Hmm.. you're not awake, are you?[or]Watch your tone in the Throne Room- the lady has been in a real mood recently. Watched her eat a man whole. [italic type]He laughs nervously.[roman type][or]I heard someone say something recently... VITALS, was it? It must have helped him examine some aspect of himself.[in random order]".
		
[NEW COMMAND: READING]
A thing has some text called printing. The printing of a thing is usually "blank". 
Understand the command "read" as something new. 
Understand "read [something]" as reading. 
Reading is an action applying to one thing. 
Check reading: 
	if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. 
Carry out reading: 
	say "You read: [printing of the noun][line break]". Report reading: do nothing. 