Scriptname LT07MCA_FamilyTreeScript extends ObjectReference  
{Gives the player the option to choose their character ancestry.}

Message Property LT07MCA_MainMenu Auto

Race Property ArgonianRace auto
Race Property BretonRace auto
Race Property DarkElfRace auto
Race Property HighElfRace auto
Race Property ImperialRace auto
Race Property KhajiitRace auto
Race Property NordRace auto
Race Property OrcRace auto
Race Property RedguardRace auto
Race Property WoodElfRace auto
	
Event OnEquipped(Actor akActor) 
	MainMenu()
endEvent


Function MainMenu(int aiButton = 3)
	
	ActorBase PlayerBase = Game.GetPlayer().GetBaseObject() as ActorBase
	Race PlayerRace = PlayerBase.GetRace()

	aiButton = LT07MCA_MainMenu.show()
	If aiButton == 3

	ElseIf aiButton  == 0
		 debug.messagebox(PlayerRace)
	ElseIf aiButton  == 1
		 debug.messagebox("you hit button 1")
	ElseIf aiButton  == 2
		debug.messagebox("you didnt hit button 0 or 1 hence must have hit 2")
	EndIf
endFunction
