Scriptname LT07MCA_FamilyTreeScript extends ObjectReference  
{Gives the player the option to choose their character ancestry.}

Message Property LT07MCA_MainMenu Auto

Message Property LT07MCA_MenMenuAllOptions Auto
Message Property LT07MCA_MerMenuAllOptions Auto
Message Property LT07MCA_BeastMenuAllOptions Auto

Message Property LT07MCA_MenMenuBreton Auto
Message Property LT07MCA_MenMenuImperial Auto
Message Property LT07MCA_MenMenuNord Auto
Message Property LT07MCA_MenMenuRedguard Auto

Message Property LT07MCA_MerMenuAltmer Auto
Message Property LT07MCA_MerMenuBosmer Auto
Message Property LT07MCA_MerMenuDunmer Auto
Message Property LT07MCA_MerMenuOrsimer Auto

Message Property LT07MCA_BeastMenuArgonian Auto
Message Property LT07MCA_BeastMenuKhajiit Auto

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
		if PlayerRace == BretonRace
			MenMenuBreton()
		Elseif PlayerRace == ImperialRace
			MenMenuImperial()
        ElseIf PlayerRace == NordRace
            MenMenuNord()
        ElseIf PlayerRace == RedguardRace
            MenMenuRedguard()
        Else
            MenMenuAllOptions()
		EndIf

	ElseIf aiButton  == 1
		if PlayerRace == HighElfRace
            MerMenuAltmer()
        Elseif PlayerRace == WoodElfRace
			MerMenuBosmer()
        ElseIf PlayerRace == DarkElfRace
            MerMenuDunmer()
        ElseIf PlayerRace == OrcRace
            MerMenuOrsimer()
        Else
            MerMenuAllOptions()
		EndIf
	
    ElseIf aiButton  == 2
		if PlayerRace == ArgonianRace
            BeastMenuArgonian()
        Elseif PlayerRace == KhajiitRace
            BeastMenuKhajiit()
        Else
            BeastMenuAllOptions()
        EndIf
	EndIf
endFunction

;/ show all men races /;
Function MenMenuAllOptions(int aiButton = 4)
	aiButton =  LT07MCA_MenMenuAllOptions.show()

	If aiButton == 4

	ElseIf aiButton  == 0
		debug.messagebox("breton")
	ElseIf aiButton  == 1
		debug.messagebox("imperial")
	ElseIf aiButton  == 2
		debug.messagebox("nord")
	ElseIf aiButton  == 3
		debug.messagebox("redguard")

	EndIf

endFunction

;/ show all men races, expcet breton /;
Function MenMenuBreton(int aiButton = 3)
	aiButton = LT07MCA_MenMenuBreton.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("imperial")
	ElseIf aiButton  == 1
		debug.messagebox("nord")
	ElseIf aiButton  == 2
		debug.messagebox("redguard")
	EndIf

endFunction

;/ show all men races, expcet imperial /;
Function MenMenuImperial(int aiButton = 3)
	aiButton = LT07MCA_MenMenuImperial.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("breton")
	ElseIf aiButton  == 1
		debug.messagebox("nord")
	ElseIf aiButton  == 2
		debug.messagebox("redguard")
	EndIf

endFunction

;/ show all men races, expcet nord /;
Function MenMenuNord(int aiButton = 3)
	aiButton = LT07MCA_MenMenuNord.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("breton")
	ElseIf aiButton  == 1
		debug.messagebox("imperial")
	ElseIf aiButton  == 2
		debug.messagebox("redguard")
	EndIf

endFunction

;/ show all men races, expcet redguard /;
Function MenMenuRedguard(int aiButton = 3)
	aiButton = LT07MCA_MenMenuRedguard.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("breton")
	ElseIf aiButton  == 1
		debug.messagebox("imperial")
	ElseIf aiButton  == 2
		debug.messagebox("nord")
	EndIf

endFunction

;/ show all mer races /;
Function MerMenuAllOptions(int aiButton = 4)
	aiButton =  LT07MCA_MerMenuAllOptions.show()

	If aiButton == 4

	ElseIf aiButton  == 0
		debug.messagebox("altmer")
	ElseIf aiButton  == 1
		debug.messagebox("bosmer")
	ElseIf aiButton  == 2
		debug.messagebox("dunmer")
	ElseIf aiButton  == 3
		debug.messagebox("orsimer")

	EndIf

endFunction

;/ show all men races, expcet altmer /;
Function MerMenuAltmer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuAltmer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("bosmer")
	ElseIf aiButton  == 1
		debug.messagebox("dunmer")
	ElseIf aiButton  == 2
		debug.messagebox("orsimer")
	EndIf
endFunction

;/ show all men races, expcet bosmer /;
Function MerMenuBosmer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuBosmer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("altmer")
	ElseIf aiButton  == 1
		debug.messagebox("dunmer")
	ElseIf aiButton  == 2
		debug.messagebox("orsimer")
	EndIf
endFunction

;/ show all men races, expcet dunmer /;
Function MerMenuDunmer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuDunmer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("altmer")
	ElseIf aiButton  == 1
		debug.messagebox("bosmer")
	ElseIf aiButton  == 2
		debug.messagebox("orsimer")
	EndIf
endFunction

;/ show all men races, expcet orsimer /;
Function MerMenuOrsimer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuOrsimer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		debug.messagebox("altmer")
	ElseIf aiButton  == 1
		debug.messagebox("bosmer")
	ElseIf aiButton  == 2
		debug.messagebox("dunmer")
	EndIf
endFunction

;/ show all beast races /;
Function BeastMenuAllOptions(int aiButton = 2)
	aiButton =  LT07MCA_BeastMenuAllOptions.show()

	If aiButton == 2

	ElseIf aiButton  == 0
		debug.messagebox("argonian")
	ElseIf aiButton  == 1
		debug.messagebox("khajiit")

	EndIf

endFunction

Function BeastMenuArgonian(int aiButton = 1)
	aiButton = LT07MCA_BeastMenuArgonian.show()

	If aiButton == 1

	ElseIf aiButton  == 0
		debug.messagebox("khajiit")
	EndIf

endFunction

Function BeastMenuKhajiit(int aiButton = 1)
	aiButton = LT07MCA_BeastMenuKhajiit.show()

	If aiButton == 1

	ElseIf aiButton  == 0
		debug.messagebox("argonian")
	EndIf

endFunction
