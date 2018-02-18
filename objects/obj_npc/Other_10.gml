/// @description Insert description here
// You can write your code in this editor
//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
	#region First Dialogue
		var i = 0;
		//Line 0
		myText[i]		= "Hello are you trying some: EFFECTS?";
		myEffects[i]	= [13,1, 18,0];
		myEmotion[i]	= 0;
		myEmote[i]		= 6;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_npc;
		myEffects[i] = [28, 3];   

		//Line 1
		i++;
		myText[i]		= "We both know purple is the best colour.";
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_npc;
		myTextCol[i]    = [13, c_purple, 20, c_white];
		myEffects[i]    = [13, 6, 20, 0, 32,4];      

		//Line 2
		i++;
		myText[i]		= "Say it... or else.";
		myTextSpeed[i]	= [1,0.5, 10,0.1];
		myEmotion[i]	= 0;
		myEmote[i]		= 4;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_npc;
		myEffects[i]    = [13,1];  

		//Line 3
		i++;
		myText[i]		= ["Purple is the best colour. (SARCASM)", "Red is the best colour."];
		myEmotion[i]	= 0;
		myEmote[i]		= -1;
		myTypes[i]		= 1;
		myNextLine[i]	= [4,5];
		myChangeVars[i] = [id, "choice_variable", ["blue", "green"]];
		mySpeaker[i]	= obj_player;

		//Line 4
		i++;
		myText[i]		= "Exactly! Thank you!";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		myTypes[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= obj_npc;
		myEffects[i]    = [1,6];  

		//Line 5
		i++;
		myText[i]		= "Nooooooooooooooooooooooooooo!";
		myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_npc;
		myEffects[i]    = [1,6];  
		#endregion
	break;
	
	case "green":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "I can't believe you like green better...";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_npc;
		myTextCol[i]	= [26,c_lime, 31,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "blue":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hey there, fellow blue lover!";
		myTextSpeed[i]	= [1,1, 10,0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_npc;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}
