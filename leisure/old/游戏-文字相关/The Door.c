/*
Title: The Door
Design: Archaeus
Version: 0.2
 8 9
64X57
 213
  0
Rick is not a cat, he is my friend.
After Rick being killed by a truck, I went crazy.
I can saw his eyes, staring at me, making me scared.
So I take out the dagger.*/
#include <stdio.h>
#include <conio.h>
#include <stdbool.h>

short te, i, j, ch, ac;
bool a[8], e[5], p[100], t[100];

//text
void tx(char *x)
{
	printf("%s\n", x);
	getch();
}

//quoted text
void qtx(char *x)
{
    printf("\"%s\"\n", x);
	getch();
}

//choose
void chs(char *x)
{
	printf("%s", x);
	scanf("%d", &ch);
}

int tutorial(void)
{
	tx("This tutorial will be spoken only once.\nYou need to press enter to continue the script.");
	tx("Sometimes you will have to make the choice, like this.");
	for (i = 0; !i;) {
		chs("1-press 1 and then enter to choose this\n2-press 2 and then enter to choose this\n");
		switch (ch) {
			case 1:
				tx("You have chosen number 1.");
				i++;
				break;

			case 2:
				tx("You have chosen number 2.");
				i++;
				break;

			default:
				tx("What are you doing?");
		}
	}
	tx("By the way, making some notes might be a good choice.");
	tx("And the stupid author just does't know how to save the game,");
	tx("So don't close it, or you'll have to start all over again.");
	tx("If you want some extra fun, input -1 next time you have to choose.");
	tx("Everytime you need to input 1 or 2, you can try inputting other things to find additional clues.");
	tx("But remember, only numbers are allowed to be input, or there will be unknown faults.");
	tx("After all, just enjoy the game!\n\n");
	return 0;
}

int title(void)
{
	for (i = 0; i < 100; i++) p[i] = 0;
	for (i = 0; i < 100; i++) t[i] = 0;
	tx("************************\n");
	tx("The Door\n");
	tx("A game designed by Archaeus\n");
	tx("Version 0.2\n");
	ac = a[0] + a[1] + a[2] + a[3] + a[4] + a[5] + a[6] + a[7];
	if (ac == 8) {
		tx("Finally you've got all achievements!");
		tx("CONGRATULATIONS!!!");
		tx("Thank you for playing!\n");
		tx("Do you want to quit now?");
		while(1) {
			chs("1-Yes.\n2-I want to enjoy again.\n3-Are there anything else?\n");
			switch (ch) {
				case 1:
					tx("Are you sure?");
					chs("1-Yes\n2-No\n");
					switch (ch) {
						case 1: 
							tx("Press any key to quit");
							return 1;
					    
					    case 2:
					    	break;
					    	
					    default:
					    	tx("Seems that I am not sure.");
					}
			    
			    case 2:
			    	tx("Are you sure?");
					chs("1-Yes\n2-No\n");
					switch (ch) {
						case 1: 
							for (i = 0; i < 8; i++) a[i] = 0;
							for (i = 0; i < 5; i++) e[i] = 0; 
							return 0;
					    
					    case 2:
					    	break;
					    	
					    default:
					    	tx("Seems that I am not sure.");
				    }
			    	
			    case 3:
			        tx("Why not trying inputing -1 in this last choice?");
			    	break;
			    	
			    case -1:
			    	tx("\n************************\n");
	                tx("");
			    	
			    default:
			    	qtx("JUST LISTEN TO THE AUTHER FOR ONE LAST TIME!!!");
			}
		}
	}
	else if (e[0]) {
		tx("As you've reached the true ending,");
		tx("Now it's time for acheivements.");
		printf("You have found %d out of 8 achievements.\n", ac);
		getch();
		tx("A little tip:");
		tx("There is an achievement in each chapter.");
		if (ac) {
			tx("You've found the ones in:");
			if (a[0]) printf("Chapter 0\n");
			if (a[1]) printf("Hell-Chapter 1\n");
			if (a[2]) printf("Hell-Chapter 2\n");
			if (a[3]) printf("Hell-Chapter 3\n");
			if (a[4]) printf("Heaven-Chapter 1\n");
			if (a[5]) printf("Heaven-Chapter 2\n");
			if (a[6]) printf("Heaven-Chapter 3\n");
			if (a[7]) printf("Chapter X\n");
			getch();
		}
		tx("So just go on enjoying!\n\n");
	}
	return 2;
}

//ROOM 0 -- CAT
//ROOM 1 -- GRAFFITI 
int chapter0(void)
{
	tx("************************");
	tx("Chapter 0\n");
	tx("Darkness.");
	tx("Nothing BUT darkness.");
	tx("Suddenly there's a booming sound, as if something has exploded.");
	tx("And then, back to silence.");
	tx("I wake up.");
	tx("My hands are shaking.");
	tx("So I look down.");
	tx("There is a dagger in my right hand, shining the color of rust.");
	t[0] = 1;
	tx("My hands begin to shake even harder.");
	tx("Should I just throw it away?");
	for (i = 0; i < 3;) {
		chs("1-Of course.\n2-Perhaps I should wait...\n");
		switch (ch) {
			case 1:
				tx("I throw it into the air.");
				tx("It disappears.");
				t[0] = 0;
				i += 3;
				break;

			case 2:
				tx("I instinctively hold the dagger tighter.");
				tx("I can hear it sneering at me.");
				tx("Perhaps I've made the wrong choice.");
				tx("But it's too late to regret.");
				i += 3;
				break;

			case -1:
				if (!i) {
					qtx("DON'T DO THAT!");
					i++;
				}
				else if (i == 1) {
					qtx("I TOLD YOU SO!");
					i++;
			    }
			    else {
					qtx("Some guys just love ignoring the warnings, right?");
					qtx("As you wish.");					
					qtx("YOU LOSE");
					p[0] = 1;
					tx("\nPress any key to go back to the beginning.\n");
					return chapter0();
				}
				break;

			default:
				tx("I must make my choice.");
		}
	}
	tx("I look around.");
	tx("I am in a square room, with only one door on the North.");
	tx("Did I come from there?");
	tx("In the midst of the room lies a round table.");
	tx("A painting has been placed on it.");
	if (t[0]) tx("It depicts a dead cat under a gloomy sky.");
	else tx("It depicts a cat playing with a ball of wool.");
	tx("I'm sure I know that cat.");
	tx("But WHERE?");
	tx("Something is aching inside me.");
	tx("So I move my eyes away.");
	tx("I notice that a plate has been pinned to the South wall.");
	tx("It says: ROOM 0 -- CAT");
	tx("There is nothing else in this room.");
	if (p[0]) {
		tx("Is there?");
		tx("What's that under the table?");
		tx("I find a tiny wooden box, nearly rotted.");
		tx("I gently prise it open, and find a fish bone inside.");
		t[1] = 1;
		tx("How can I use a fish bone?");
		tx("Still, I decide to take it with me.");
		tx("I have spent enough time in the first room.");
	}
	else {
		tx("So I walk straight to the door.");
		tx("Time for the next room.");
	}
    tx("I push the door open.");
	tx("\n************************\n");
	tx("Except the South door where I enter, there are doors on the East and the West.");
	tx("But the more impressing thing is:");
	tx("Graffiti has been painted on all four walls, and even on the ceiling.");
	if (t[0]) {
	    tx("There are words like \"LEAVE ME ALONE\" or \"GET OUT OF HERE\", written with red paint, making me really nervous.");
	    tx("Is there someone else in the room?");
	    tx("At least I have my dagger with me.");
	    tx("Only this time do I feel that to take the dagger is a wise choice.");
	    tx("But there is nothing.");
	    tx("Literally NOTHING.");
	    tx("An empty room?");
	    tx("As I am still hesitating, the West door suddely opened, with a line emerging from the ground--");
	    tx("GO TO HELL.");
	    tx("Should I listen to this?");
	    while(1) {
	    	chs("1--Yes.\n2--No.\n");
	    	switch (ch) {
	    		case 1:
	    			tx("I can't resist the tempetation to follow the instruction.");
	    			tx("So I just walk into that room.");
	    			if (t[1]) tx("As I do so, the fish bone rotted to ashes.");
	    			return 0;
	    			
	    		case 2:
	    			tx("Do I really have a choice?");
	    			tx("There is something in my mind...\n");
	    			printf("eei2veb9qqh8het8lpg0rwb8weq3uie9\n");
	    			printf("siv8jeh2ovo02fer199h39gh3iv9h39e\n");
	    			printf("wheifhq2992h2h3ub3ufbu3bqiuh1uhu\n");
	    			printf("asdlpv0kpjwijp2jijfieji249jfjewi\n");
	    			printf("jgiqorj3o2j8oh8ohiho2ihfeuud0vwh\n");
					printf("peigjeo2y20ye02er08ig4j9jg4jitij\n");
	    			printf("fiog93hi2hou34uhu4hou4yes13norw0\n");
	    			printf("lerhg2uh02hueowuhovwwojirijgorii\n");
	    			printf("itiboeub6owubo4ksoaj6dkjfowijw5o\n");
	    			printf("t3h2ih0ir203irihijgi230202ijrijg\n");
	    			getch();
	    			tx("\nWhat...");
	    			tx("......");
	    			break;
	    			
	    		case 13:
	    			tx("I walk to the middle of the room.");
					tx("An altar slowly rises in front of me.");
	    			tx("On it carved: ROOM 1 -- GRAFFITI");
	    			tx("It seems that I can sacrifice something to the altar.");
	    			p[1] = 1;
	    		    if (t[1]) {
	    		    	tx("Perhaps I can try the fish bone?");
						tx("I pick it up and thrust it into the altar.");
						tx("Suddenly I get a vision.");
						tx("A black-and-white cat is playing happily with a wool ball.");
						tx("I know his name: Rick.");
						tx("I used to play with that cat everyday.");
						tx("But one day, when I was out for school, I saw it lying dead on the ground.");
						tx("It had been crashed by a truck.");
						tx("At that time I was six.");
						tx("It was the first time in my life that I saw DEATH");
						tx("I was scared.");
						tx("The cat began to live in my dream.");
						tx("I just couldn't get rid of him.");
						tx("So I began to write his story.");
						tx("In the story I saw him alive.");
						tx("\nYou've got an achievment!");
						a[0] = 1;
						tx("\nChapter 0: Story about a CAT\n");
						tx("I know I can do nothing else.");
						tx("So I walk to the next room.");
						return 0;
					}
					else {
						tx("But I don't want to give the dagger away.");
						tx("So I have nothing to do with it now.");
	    		    	tx("I walk into the next room.");
	    		    	return 0;
					} 
	    		
				default:
	    			tx("There isn't anything between yes and no, right?");
			}
	    }
	}
	else {
		tx("The graffiti is constructed with dots and lines, making a symbol like a flower.");
		tx("A flower I know well.");
		tx("It is called, hydrangea.");
		tx("I used to have this kind of flower planted near my home.");
		tx("And they are still there, even after I'm gone.");
		tx("I tried to observe the room more closely,");
		tx("But there is nothing.");
	    tx("Literally NOTHING.");
	    tx("An empty room?");
	    tx("As I am still hesitating, the East door suddely opened, with a line emerging from the ground--");
	    tx("HEAVEN: THIS WAY");
	    tx("Perhaps this is the right way.");
	    while(1) {
	    	chs("1--I think so.\n2--Wait a moment.\n");
	    	switch (ch) {
	    		case 1:
	    			tx("I suspect entering heaven is of no harm.");
	    			tx("So I just walk into that room.");
	    			heaven_1();
	    			
	    		case 2:
	    			tx("Last time I didn't wait, so I can now go into the heaven,");
	    			tx("but maybe this time, to wait is a right choice.");
	    			tx("However, st1ll n0th1ng happens.");
	    			tx("Perhaps I know what to do.");
	    			break;
	    			
	    		case 5:
	    			tx("......");
	    			tx("The waiting is not worthless.");
	    			tx("A flower falls from the wall.");
	    			t[2] = 1;
	    			tx("I pick it up.");
	    			tx("It smells nice.");
	    			tx("Another line appears: ROOM 1 -- GRAFFITI");
	    			tx("I know I can walk into heaven now.");
					return 1;
	    			
	    		case 101:
	    			tx("......");
	    			tx("What am I waiting for?");
	    			tx("There is a better choice.");
	    			break;
					 
				default:
	    			tx("I really need to think twice.");
			}
	    }
	}
}

//ROOM 2 -- LIGHT
int hell_1(void)
{
	tx("\n************************");
	tx("Hell - Chapter 1\n");
	tx("Apart from the entrance, there is one door on the North, tightly shutted.");
	tx("I tried to push it open, but I failed.");
	tx("A strange word has been carved on the door:");
	qtx("OBOBAORJ");
	tx("I don't know what does it mean.");
	tx("But it makes me really uncomfortable.");
	tx("Now, time to observe the room.");
	for ( ; ; ) {
		chs("1-North\n2-South\n3-West\n4-East\n5-Ceiling\n");
		switch (ch) {
			case 1:
				tx("On the North side, the 1-door and the 2-word are still sparkling there.");
			    tx("Also, a 3-plant is set near the door.");
			    tx("What do I need to observe?");
			    for (j = 0; !j; ) {
					printf("1-door\n");
					printf("2-word\n");
					printf("3-plant\n");
			    	chs("Please enter the number.(enter 0 to observe other directions)\n");
			    	switch (ch) {
			    		case 0:
			    			j++;
			    			break;
			    			
			    		case 1:
			    			if (p[4]) {
			    				tx("The door is open.");
			    				tx("But no one is outside.");
								tx("Maybe I should go to the next room.");
								chs("1-Go.\n2-Not now.\n");
								switch (ch) {
									case 1:
										hell_2();
										
									case 2:
										if (p[5]) qtx("CHECK THE WORD");
										else tx("What can I do?");
										break;
										
									default:
										if (p[5]) qtx("CHECK THE WORD");
										else tx("I'm still hesitating.");
								}
							}
							else {
								tx("The door is still firmly closed.");
								tx("What should I do?");
							}
			    			break;
			    		
			    		case 2:
			    			qtx("OBOBAORJ");
			    			if (p[5]) {
			    				getch();
								tx("I realize something.");
			    				qtx("OBOBAORJ");
			    				qtx("PCPCBPSK");
			    				qtx("QDQDCQTL");
			    				qtx("REREDRUM");
			    				qtx("MURDERER");
			    				tx("I look down at the dagger again.");
			    				tx("What have I done?");
								tx("\nYou've got an achievment!");
								a[1] = 1;
								tx("\nChapter 1: MURDERER?\n");
								tx("I can leave this room now.");
								tx("Or, \"eacape from\" this room.");
							}
							else {
								tx("I really wonder what it is.");
			    				tx("Are there any clues?");
							}
			    			break;
			    			
			    		case 3:
			    			tx("The plant is almost dried.");
			    			tx("Maybe I can save it.");
			    			if (t[3]) {
			    				tx("Now I have the sprinkling can.");
			    				if (t[4]) {
				    				tx("I water the plant.");
			    					tx("It streches out, giving away a note:");
			    					qtx("CHANNEL 821");
			    					tx("However, I suspect that there is another channel.");
			    					tx("But of course this one is OK.");
								}
								else tx("But there is no water in it.");
							}
			    			break;
			    			
			    		default:
			    			tx("What should I do?");
					}
				}
				break;
				
			case 2:
				tx("On the South side, there is a 1-television, placed on a small 2-TV stand.");
			    tx("What do I need to observe?");
				for (j = 0; !j; ) {
					printf("1-television\n");
					printf("2-TV stand\n");
					if (p[2]) printf("3-left side\n");
					if (p[2]) printf("4-right side\n");
			    	chs("Please enter the number.(enter 0 to observe other directions)\n");
			    	switch (ch) {
			    	    case 0:
			    			j++;
			    			break;
			    			
			    		case 1:
			    	        if (t[6]) {
			    	        	tx("I use the duct tape to fix the wire.");
			    	        	tx("The screen lights up.");
			    	        	chs("I need to input the channel. (a 3-digit number)\n");
			    	        	if (ch == 579 || ch == 821) {
			    	        		tx("The television begins to play.");
									tx("A boy appears on the screen, curling in fear at the corner.");
									tx("Behind him is a large wooden door, with someone knocking on it.");
									tx("The sound gets louder.");
									tx("And louder.");
									tx("And LOUDER.");
									tx("I heard the sound of the door opens.");
									tx("The shadow of a man stands behind it.");
									p[4] = 1;
									if (ch == 821) {
										qtx("CHECK THE DOOR");
										tx("The screen closed."); 
									}
							        else {
									    tx("I recognize him as my dad.");
									    tx("I knew that he never really cares about me.");
									    tx("Sometimes I was afraid that his beer is more valuable than his family.");
									    tx("--if he really had one.");
										tx("I was brought up by him, and only him.");
										tx("I have never seen my other relatives.");
										tx("He didn't treat me badly.");
										tx("But as I said, he never really cares about me.");
										tx("He never asked me about my feelings or why I'm in fear.");
										tx("He came into the room.");
										tx("Ignoring me.");
										tx("He went straight to a silver case near the corner.");
										tx("It contains his cans of beer.");
										tx("He took one out and began to drink.");
										tx("......");
										tx("The screen closed.");
										tx("Now I can check the door.");
										p[5] = 1;
								    }
								}
								else tx("I can't just guess it.");
							}
							else {
								tx("The television is not working.");
				    	        tx("It seems that the wire is broken.");
							}
			    			break;
			    		
			    		case 2:
			    		    tx("The TV stand has two sides.");
			    		    tx("The 3-left side is locked, but the 4-right side can be opened.");
			    		    p[2] = 1;
			    			break;
			    			
			    		case 3:
			    		    if (p[2]) {
			    		        tx("It is obvious that I need a key to open it.");
			    		        if (t[5]) {
									tx("And now I have the key.");
									tx("In it, I found a duct tape.");
									tx("Maybe I can...");
									t[6] = 1;
								}
							}
							else tx("What should I do?");
							break;
							
						case 4:
			    		    if (p[2]) {
			    		        tx("Inside it is a sprinkling can.");
								tx("I can use it somehow.");
								t[3] = 1;
							}
							else tx("What should I do?");
					        break;
			    			
			    		default:
			    			tx("What should I do?");
					}
				}
				break;
				
			case 3:
				tx("On the West, there is a 1-vase on a closed 2-cabinet.");
				tx("Near them, a beautiful-carved silver 3-case is glistening.");
			    tx("What do I need to observe?");
			    for (j = 0; !j; ) {
					printf("1-vase\n");
					printf("2-cabinet\n");
					printf("3-case\n");
			    	chs("Please enter the number.(enter 0 to observe other directions)\n");
			    	switch (ch) {
			    		case 0:
			    			j++;
			    			break;
			    			
			    		case 1:
			    			if (p[3]) {
							    tx("The vase fell to the ground, broken.");
								tx("A small key falls out.");
								tx("I take the key.");
								t[5] = 1;
							}
							else {
								tx("A flower of 5 petals is arranged in the vase.");
								tx("But the cabinet is so tall that I can't reach it.");
							}
			    			break;
			    		
			    		case 2:
			    			if (p[3]) {
			    				tx("There is a sentence written on the inside lamp:");
			    				qtx("BKFK goes last.");
							}
							else {
								tx("I try hard, but still can't open the cabinet.");
								tx("Perhaps I have to leave it alone.");
							}
			    			break;
			    			
			    		case 3:
			    			tx("The contents are really disappointing.");
			    			tx("Simply a pot of water.");
			    			tx("What is more, the pot couldn't be moved.");
			    			tx("So why use a silver case?");
			    			if (t[3]) {
			    				tx("I use the sprinkling can to fetch some water.");
			    				tx("It gets heavier.");
			    				t[4] = 1;
							}
			    			break;
			    			
			    		default:
			    			tx("What should I do?");
					}
				}
				break;
				
			case 4:
				if (p[3]) {
				    tx("I can do nothing else here.");
					tx("The pandent light goes next.");
				}
				else{
					tx("Apart from the door I came from, there is only a switch on the East.");
				    qtx("Touch it when you have nothing else to do.");
				    tx("Should I touch it now?");
				    for (j = 0; !j; ) {
						chs("1-Now\n2-Later\n");
						switch (ch) {
							case 1:
								tx("Suddenly, the world turns dark.");
								tx("I can hear the sound of something broken.");
								p[3] = 1;
								tx("Something has changed.");
							    tx("A light is projected to the ground.");
								tx("It says: JLLO 2 -- QEDFI");
								tx("The world turns bright again.");
								tx("The cabinet on the West opened, revealing the lamp inside.");
								j++;
								break;
							
							case 2:
								tx("At least I know that the vase goes first.");
								j++;
				                break;
			                
				            default:
				            	tx("My time is limited.");
						}
					}
				}
				break;
				
			case 5:
				tx("I look up to the ceiling.");
				if (p[3]) {
					tx("The pandent light has been turned off.");
					tx("I can see that it consists of 7 light bulbs.");
				}
				else tx("The pandent light is so bright that I can't see it clealy.");
				break;
			
			default:
				tx("My time is limited.");
		}
	}
}

//ROOM 4 -- COLOR
int hell_2(void)
{
	tx("\n************************");
	tx("Hell - Chapter 2\n");
	qtx("I'm sitting here in darkness.");
	qtx("Silence crawls over my shoulder.");
	qtx("To every inch of my skin.");
	qtx("There is a lion, watching me.");
	qtx("A gust of wind washes my thought away.");
	qtx("Until the lion begins to roar.");
	qtx("I have woken up.");
	qtx("Or I am just sinking in another dream?");
	qtx("No one knows.");
	tx("\nSomeone is reading a poem as I enter the next room.");
	tx("I don't know who he is.");
	tx("I don't want to know who he is.");
	qtx("Observe the room now.");
	tx("I don't want to listen to his instructions.");
	tx("But what else could I do?");
	for (i = 0; i < 3; ) {
		chs("1-Observe the room.\n2-...\n");
		switch (ch) {
			case 1:
				tx("I need to listen to him.");
				i = 5;
				break;
				
			case 2:
				tx("What else can I do?");
				i++;
				break;
				
			default:
				tx("Face myself.");
				tx("Listen to my heart.");
				tx("It might be painful.");
				tx("But there is something I must do.");
		}
	}
	p[6] = 1;
	if (i == 3) {
		tx("Why.");
		tx("I've made the wrong choice.");
		tx("Why did I hesitate that long?");
		tx("I will miss something forever...");
	    p[6] = 0;
	}
	tx("I begin to observe the room.");
    tx("This room has two exits, on the North and the West.");
    qtx("You have gone too far.");
    qtx("But you still have a chance.");
	qtx("First, get to the South.");
	tx("Should I listen to him?");
	for (i = 0; !i; ) {
		qtx("1-North\n2-South\n3-West\n4-East\n5-Middle\n6-ceiling\n");
		switch (ch) {
	        case 1:
	        	if (p[6]) {
				qtx("You've lost your opportunity.");
				p[6] = 0;
				}
				tx("On the North, there are three paintings around the door:");
				tx("An 1-owl standing on a dark tree.");
				tx("A 2-crow weeping near the field.");
				tx("A 3-dove flying on the sky.");
				tx("What do I need to observe?");
			    for (j = 0; !j; ) {
					printf("1-owl\n");
					printf("2-crow\n");
					printf("3-dove\n");
			    	chs("Please enter the number.(enter 0 to observe other directions)\n");
			    	switch (ch) {
			    		case 0:
			    			j++;
			    			break;
			    			
			    		case 1:
			    			tx("The owl, with its brown wings, hidden inside dark green leaves.");
			    			break;
			    			
			    		case 2:
			    			tx("The golden field and the black crow sets a great contrast.");
			    			break;
			    			
			    		case 3:
			    			tx("The pure white dove was wounded; red blood leaks from its feather.");
			    			break;
			    	    
			    	    case 32:
			    	    	tx("A card with an owl on it also hides in the woods.");
			    	    	tx("On the backside of the card writes a sentence:");
						    qtx("Snakes always lies.");
						    tx("Memories come into my mind.");
						    tx("Owls, old and wise, which I always wish to be.");
						    tx("But the truth is, when it comes to deciding things, I'm never determined.");
						    tx("To make matters worse, the clock is always ticking.");
						    tx("And I always get more nervous.");
						    tx("And when I get nervous, I can hardly control myself.");
							t[8] = 1;
							break;
			    	    	
			    	    case 94:
			    	    	tx("A card with a crow conceals in the field.");
			    	    	tx("On the backside of the card writes a sentence:");
			    	    	qtx("Foxes can tell the truth.");
			    	    	tx("Memories come into my mind.");
			    	    	tx("Crow has some connection with bad luck.");
			    	    	tx("I had felt it even before I heard this saying.");
			    	    	tx("Near my house, crows chatted all day long.");
			    	    	tx("Maybe not only crows, but who cares?");
			    	    	tx("I hate that noise.");
			    	    	tx("So one night, I climbed onto that tree.");
			    	    	tx("What I remembered was a dead crow been thrown to the roof.");
			    	    	t[9] = 1;
							break;
			    	    	
			    	    case 56:
			    	    	tx("A card with a dove falls gently from the feather.");
			    	    	tx("On the backside of the card writes a sentence.");
			    	    	qtx("The present runs fast.");
			    	    	tx("Memories come into my mind.");
			    	    	tx("Doves are always innocent.");
			    	    	tx("Always a victim, but never a perpetrator.");
			    	    	tx("A perfect disguise.");
			    	    	tx("But what if you let them know that you are not that kind?");
			    			t[10] = 1;
							break;
			    			
			    		default:
			    			tx("The clock is ticking.");
			        }
			    }
	        	break;
	        	
	        case 2:
	        	if (p[6]) {
	        		qtx("Glad that you belive in me.");
	        		tx("On the South wall paints a lion.");
	        		tx("I'm not dare to see its eyes.");
	        		qtx("Check its eyes.");
	        		tx("But the voice is urging me.");
	        		tx("Should I?");
	        		for (j = 0; !j; ) {
	        			if (p[7]) chs("3-\"What can I do?\"\n4-Think about the way by myself.\n");
						else chs("1-Yes.\n2-No.\n");
	        			switch (ch) {
	        				case 1:
	        					tx("When I get near, I could hardly hold the dagger.");
		        				tx("I can see a card near its eyes.");
		        				tx("How can I get it?");
								tx("I must think of a way.");
								p[7] = 1;
								break;
								
							case 2:
								qtx("Well.");
								tx("I check the wall again.");
								tx("The lion has disappeared.");
								p[6] = 0;
								j++;
								break;
								
							case 3:
								if (p[7]) {
								    tx("Have you seen the altar?");
									if (p[1]) {
										tx("I know it is in Room 1.");
										tx("But what to sacrifice?");
										tx("The dagger.");
										tx("Only the dagger.");
										qtx("You should always keep the dagger, till the end.");
										tx("He has always been telling me to face myself.");
										tx("But why does he say so this time?");
										chs("0-No!\nOther numbers-Yes...\n");
									    if (ch) {
							    			tx("As I look up again, the lion has disappeared.");
							    			j++;
								    	}
									    else {
											tx("I go back to Room 1.");
											tx("As I has expected, the altar is still there.");
											tx("I throw the dagger inside.");
											t[0] = 0;
											tx("I found my weight has disappeared.");
											tx("I don't fear the lion anymore.");
											tx("In its eyes, I discovered a badge of the lion.");
											tx("On the backside of the badge writes a sentence:");
											tx("Yesterday has gone; tomorrow hasn't come; only NOW matters.");
											t[7] = 1;
											tx("What can I do with it?");
											tx("The voice won't bother me anymore.");
											tx("And as I look up, the lion has disappeared.");
											p[6] = 0;
											j++;
										}
									}
									else {
										tx("I've misses it.");
										tx("......");
										tx("As I look up again, the lion has disappeared.");
										p[6] = 0;
										j++;
									}
								}
								else tx("The clock is ticking.");
								break;
							
							case 4:
								if (p[7]) {
									tx("I don't know how...");
									tx("I just can't realize about what can I use.");
								}
								else tx("The clock is ticking.");
							    break;
							
							default:
								tx("The clock is ticking.");
						}
				    }
				}
				tx("On the South, there is a hungry wolf staring at me -- another painting near the door where I'm from.");
				tx("I pretend that I hate that wolf.");
				tx("And I walk slowly towards it.");
				tx("In its mouth, I discover a card, with a wolf on it.");
				t[11] = 1;
				tx("On the backside of the card writes a sentence.");
				qtx("The past flies away.");
				tx("Memories come into my mind.");
				tx("Wolf is a hungry creature.");
				tx("I don't like it.");
				tx("But sometimes I felt that it is me.");
				tx("Always wanting something more.");
				tx("......"); 
				break;
	        	
	        case 3:
	        	if (p[6]) {
				qtx("You've lost your opportunity.");
				p[6] = 0;
				}
				for (j = 0; !j; ) {
				    tx("On the West, there is a locked 1-door, with the structure of a 2-fox on the left and a 3-hedgehog on the right.");
	        		printf("1-door\n");
					printf("2-fox\n");
					printf("3-hedgehog\n");
			    	chs("Please enter the number.(enter 0 to observe other directions)\n");
	        		switch (ch) {
	        			case 0:
						    j++;
						    break;
							
						case 1:
						 
					}
				}
				break;
	        
	        case 4:
	        	if (p[6]) {
				qtx("You've lost your opportunity.");
				p[6] = 0;
				}
				tx("On the East,");
	        	break;
	        
	        case 5:
	        	if (p[6]) {
				qtx("You've lost your opportunity.");
				p[6] = 0;
				}
				tx("In the middle, there is a stone table with three square pits.");
				tx("There is a line upon these pits:");
				tx("Put your past, present and future in.");
				if (t[8]*t[9]*t[10]*t[11]*t[12]*t[13]*t[14]*t[15]) {
					tx("I should put three of the cards in them.");
					tx("Another line appears:");
					tx("Only two of them lies.");
					tx("Their words are in my mind:");
					printf("1-Owl: Snakes always lie.\n");
					printf("2-Crow: Foxes can tell the truth.\n");
					printf("3-Dove: The present runs fast.\n");
					printf("4-Wolf: The past flies away.\n");
					printf("5-Fox: Boars live in the past.\n");
					printf("6-Hedgehog: Liars do represent a time.\n");
					printf("7-Boar: I stabbed someone.\n");
					printf("8-Snake: Hedgehogs love the future.\n");
					for ( ; ; ) {
						tx("What cards can I put in the past, the present and the future?");
						chs("(Input a 3-digit number, watch out of the sequence!)\n");
						if (ch == 748) {
							
						}
						else tx("I can't just guess it.");
					}
				}
				else tx("Seems that I haven't found enough elements yet.");
	        	break;
	        
	        case 6:
	        	if (p[6]) {
				qtx("You've lost your opportunity.");
				p[6] = 0;
				}
				tx("On the ceiling hangs a really strange clock.");
				tx("The clock is devided into 12 parts, but not from 1 to 12.");
				tx("Instead, it has 0 to 9, and \"+\", \"*\".");
				tx("Each with a different picture nere it.");
				tx("In the middle of the clock, there are no hands.");
				tx("Only a line--");
				tx("ROOM 4 -- COLOR");
				tx("Near 0, I can't see anything, perhaps I am just seeing through it.");
				tx("Near 1, a bunch of riped grapes reflects the sun.");
				tx("Near 2, a lovely grass field swings in the wind.");
				tx("Near 3, there is a section of tree trunk.");
				tx("Near 4, only some burnt charcoal remains.");
				tx("Such is life, isn't it?");
				tx("Near 5, snow falls on everything, hiding everything inside.");
				tx("Near 6, a fire broke out from the deserted land.");
				tx("Near 7, sand gathers to form a small hill.");
				tx("Near 8, the sky and the ocean connect as one.");
				tx("Near 9, some gold coins fall to the ground.");
				tx("Near \"+\", flowers fill the peach tree with beauty.");
				tx("Near \"*\", there is a delicate architect made with lazurite.");
				tx("The strange thing is, all these paintings have no color.");
				tx("Where can I find them?");
				break;
				
	        default:
	        	if (p[6]) qtx("What are you waiting for?");
				tx("The clock is ticking.");
        }
    }
}

//ROOM 6 -- 
int hell_3b(void)
{
}

//ROOM 8 --
int hell_3g(void)
{
}

//ROOM 3 --
int heaven_1(void)
{
	tx("\n************************");
	tx("Heaven - Chapter 1\n");
}

//ROOM 5 --
int heaven_2(void)
{
}

//ROOM 7 --
int heaven_3b(void)
{
}

//ROOM 9 --
int heaven_3g(void)
{
}

//ROOM X --
int chapterx(void)
{
}

int main(void)
{
	for (i = 0; i < 8; i++) a[i] = 0;
	/*ac number of achievements
	a[0] chapter0 Story about a CAT
	a[1] hell_1 MURDERER
	*/
	
	for (i = 0; i < 5; i++) e[i] = 0;
	/*e endings
    e[0] True End
	e[1] Hell -- Bad End
    e[2] Hell -- Good End
    e[3] Heaven -- Bad End
    e[4] Heaven -- Good End
	*/
	
	/*p plots
	p[0] input -1 in the first choice (Room 0)
	p[1] go to hell after opening the altar (Room 1 - Hell)
	p[2] check the TV stand (Room 2)
	p[3] close the light (Room 2)
	p[4] the door opens (Room 2)
	p[5] watch chanell 579 (Room 2)
	p[6] listen to the instruction (Room 4)
	p[7] check the wall with the lion (Room 4)
	*/
	
	/*t things
	t[0] dagger with blood (Room 0)
	t[1] a fish bone (Room 0)
	t[2] a flower (Room 1 - Heaven)
    t[3] a sprinkling can (Room 2)
	t[4] a sprinkling can with water (Room 2)
	t[5] a little key (Room 2)
	t[6] a duct tape (Room 2) 
	t[7] badge of lion (Room 4)
	t[8] card of owl (Room 4)
	t[9] card of crow (Room 4)
	t[10] card of dove (Room 4)
	t[11] card of wolf (Room 4)
	t[12] card of fox (Room 4) 
	t[13] card of hedgehog (Room 4)
	t[14] card of boar (Room 4)
	t[15] card of snake (Room 4)
	
	items remain:
	heaven good 1,2
    heaven bad 1
	*/
	
	while(1) {
		printf("Please choose your language.\n请选择语言。\n");
	    chs("English - input 0 and then press Enter.\n中文（暂无） - 键入1（或其他数字）后按回车键\n");
		if (ch) {
			tutorial();
		    while(te = title()) switch (te) {
		    	case 1:
		    		return 0;

		    	case 2:
		    		if (chapter0()) {
        				heaven_1();
        				while (!heaven_2()) heaven_3b();
						heaven_3g();
					}
					else {
						hell_1();
						while (!hell_2()) hell_3b();
					    hell_3g();
			    	}
			    	break;
			    	    
			    default:
			    	chapterx();
			}
		}
		else {
			tutorial();
		    while(te = title()) switch (te) {
		    	case 1:
		    		return 0;
		    			
		    	case 2:
		    		if (chapter0()) {
        				heaven_1();
        				while (!heaven_2()) heaven_3b();
						heaven_3g();
					}
					else {
						hell_1();
						while (!hell_2()) hell_3b();
					    hell_3g();
			    	}
			    	break;
			    	    
			    default:
			    	chapterx();
			}
		}
	}
}

