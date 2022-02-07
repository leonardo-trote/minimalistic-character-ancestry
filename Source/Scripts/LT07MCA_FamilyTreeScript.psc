Scriptname LT07MCA_FamilyTreeScript extends ObjectReference  
{Gives the player the option to choose their character ancestry.}


Message Property LT07MCA_MainMenu Auto
Message Property LT07MCA_RemoveAll Auto

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

Message Property LT07MCA_HalfAltmerConfirmation Auto
Message Property LT07MCA_HalfArgonianConfirmation Auto
Message Property LT07MCA_HalfBosmerConfirmation Auto
Message Property LT07MCA_HalfBretonConfirmation Auto
Message Property LT07MCA_HalfDunmerConfirmation Auto
Message Property LT07MCA_HalfImperialConfirmation Auto
Message Property LT07MCA_HalfKhajiitConfirmation Auto
Message Property LT07MCA_HalfNordConfirmation Auto
Message Property LT07MCA_HalfOrsimerConfirmation Auto
Message Property LT07MCA_HalfRedguardConfirmation Auto


Spell Property LT07MCA_HalfAltmerIllusionAbility Auto
Spell Property LT07MCA_HalfArgonianLockpickingAbility Auto
Spell Property LT07MCA_HalfBosmerArcheryAbility Auto
Spell Property LT07MCA_HalfBretonConjurationAbility Auto
Spell Property LT07MCA_HalfDunmerDestructionAbility Auto
Spell Property LT07MCA_HalfImperialRestorationAbility Auto
Spell Property LT07MCA_HalfKhajiitSneakAbility Auto
Spell Property LT07MCA_HalfNordTwoHandedAbility Auto
Spell Property LT07MCA_HalfOrsimerHeavyArmorAbility Auto
Spell Property LT07MCA_HalfRedguardOneHandedAbility Auto

Spell Property LT07MCA_HalfAltmerFortifyMagickaAbility Auto
Spell Property LT07MCA_HalfArgonianHealthRegenAbility Auto
Spell Property LT07MCA_HalfBosmerDiseaseResistanceAbility Auto
Spell Property LT07MCA_HalfBretonMagicResistanceAbility Auto
Spell Property LT07MCA_HalfDunmerFireResistanceAbility Auto
Spell Property LT07MCA_HalfImperialFortifyHealthAbility Auto
Spell Property LT07MCA_HalfKhajiitFortifyStaminaAbility Auto
Spell Property LT07MCA_HalfNordFrostResistanceAbility Auto
Spell Property LT07MCA_HalfOrsimerDamageResistanceAbility Auto
Spell Property LT07MCA_HalfRedguardPoisonResistanceAbility Auto

Spell Property LT07MCA_MenSpeechDebuffSpell Auto
Spell Property LT07MCA_MerSpeechDebuffSpell Auto
Spell Property LT07MCA_BeastSpeechDebuffSpell Auto

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

int Cont = 0
int isHalfAltmer = 0
int isHalfArgonian = 0
int isHalfBosmer = 0
int isHalfBreton = 0
int isHalfDunmer = 0
int isHalfImperial = 0
int isHalfKhajiit = 0
int isHalfNord = 0
int isHalfOrsimer = 0
int isHalfRedguard = 0
int familyTreeID = 0x0600aa04

Event OnEquipped(Actor akActor)
	If Cont == 0
		MainMenu()
	ElseIf Cont == 1
		RemoveEffects()
	EndIf
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
		HalfBretonConfirmation()
	ElseIf aiButton  == 1
		HalfImperialConfirmation()
	ElseIf aiButton  == 2
		HalfNordConfirmation()
	ElseIf aiButton  == 3
		HalfRedguardConfirmation()
	EndIf

endFunction

;/ show all men races, expcet breton /;
Function MenMenuBreton(int aiButton = 3)
	aiButton = LT07MCA_MenMenuBreton.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfImperialConfirmation()
	ElseIf aiButton  == 1
		HalfNordConfirmation()
	ElseIf aiButton  == 2
		HalfRedguardConfirmation()
	EndIf

endFunction

;/ show all men races, expcet imperial /;
Function MenMenuImperial(int aiButton = 3)
	aiButton = LT07MCA_MenMenuImperial.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfBretonConfirmation()
	ElseIf aiButton  == 1
		HalfNordConfirmation()
	ElseIf aiButton  == 2
		HalfRedguardConfirmation()
	EndIf

endFunction

;/ show all men races, expcet nord /;
Function MenMenuNord(int aiButton = 3)
	aiButton = LT07MCA_MenMenuNord.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfBretonConfirmation()
	ElseIf aiButton  == 1
		HalfImperialConfirmation()
	ElseIf aiButton  == 2
		HalfRedguardConfirmation()
	EndIf

endFunction

;/ show all men races, expcet redguard /;
Function MenMenuRedguard(int aiButton = 3)
	aiButton = LT07MCA_MenMenuRedguard.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfBretonConfirmation()
	ElseIf aiButton  == 1
		HalfImperialConfirmation()
	ElseIf aiButton  == 2
		HalfNordConfirmation()
	EndIf

endFunction

;/ show all mer races /;
Function MerMenuAllOptions(int aiButton = 4)
	aiButton =  LT07MCA_MerMenuAllOptions.show()

	If aiButton == 4

	ElseIf aiButton  == 0
		HalfAltmerConfirmation()
	ElseIf aiButton  == 1
		HalfBosmerConfirmation()
	ElseIf aiButton  == 2
		HalfDunmerConfirmation()
	ElseIf aiButton  == 3
		HalfOrsimerConfirmation()

	EndIf

endFunction

;/ show all men races, expcet altmer /;
Function MerMenuAltmer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuAltmer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfBosmerConfirmation()
	ElseIf aiButton  == 1
		HalfDunmerConfirmation()
	ElseIf aiButton  == 2
		HalfOrsimerConfirmation()
	EndIf
endFunction

;/ show all men races, expcet bosmer /;
Function MerMenuBosmer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuBosmer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfAltmerConfirmation()
	ElseIf aiButton  == 1
		HalfDunmerConfirmation()
	ElseIf aiButton  == 2
		HalfOrsimerConfirmation()
	EndIf
endFunction

;/ show all men races, expcet dunmer /;
Function MerMenuDunmer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuDunmer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfAltmerConfirmation()
	ElseIf aiButton  == 1
		HalfBosmerConfirmation()
	ElseIf aiButton  == 2
		HalfOrsimerConfirmation()
	EndIf
endFunction

;/ show all men races, expcet orsimer /;
Function MerMenuOrsimer(int aiButton = 3)
	aiButton = LT07MCA_MerMenuOrsimer.show()

	If aiButton == 3

	ElseIf aiButton  == 0
		HalfAltmerConfirmation()
	ElseIf aiButton  == 1
		HalfBosmerConfirmation()
	ElseIf aiButton  == 2
		HalfDunmerConfirmation()
	EndIf
endFunction

;/ show all beast races /;
Function BeastMenuAllOptions(int aiButton = 2)
	aiButton =  LT07MCA_BeastMenuAllOptions.show()

	If aiButton == 2

	ElseIf aiButton  == 0
		HalfArgonianConfirmation()
	ElseIf aiButton  == 1
		HalfKhajiitConfirmation()

	EndIf

endFunction

Function BeastMenuArgonian(int aiButton = 1)
	aiButton = LT07MCA_BeastMenuArgonian.show()

	If aiButton == 1

	ElseIf aiButton  == 0
		HalfKhajiitConfirmation()
	EndIf

endFunction

Function BeastMenuKhajiit(int aiButton = 1)
	aiButton = LT07MCA_BeastMenuKhajiit.show()

	If aiButton == 1

	ElseIf aiButton  == 0
		HalfArgonianConfirmation()
	EndIf

endFunction

Function HalfAltmerConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfAltmerConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfAltmerIllusionAbility)
		game.getPlayer().addSpell(LT07MCA_HalfAltmerFortifyMagickaAbility)
		game.getPlayer().addSpell(LT07MCA_MerSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfAltmer = 1
	EndIf
endFunction

Function HalfArgonianConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfArgonianConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfArgonianLockpickingAbility)
		game.getPlayer().addSpell(LT07MCA_HalfArgonianHealthRegenAbility)
		game.getPlayer().addSpell(LT07MCA_BeastSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfArgonian = 1
	EndIf
endFunction

Function HalfBosmerConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfBosmerConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfBosmerArcheryAbility)
		game.getPlayer().addSpell(LT07MCA_HalfBosmerDiseaseResistanceAbility)
		game.getPlayer().addSpell(LT07MCA_MerSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfBosmer = 1
	EndIf
endFunction

Function HalfBretonConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfBretonConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfBretonConjurationAbility)
		game.getPlayer().addSpell(LT07MCA_HalfBretonMagicResistanceAbility)
		game.getPlayer().addSpell(LT07MCA_MenSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfBreton = 1
	EndIf
endFunction

Function HalfDunmerConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfDunmerConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfDunmerDestructionAbility)
		game.getPlayer().addSpell(LT07MCA_HalfDunmerFireResistanceAbility)
		game.getPlayer().addSpell(LT07MCA_MerSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfDunmer = 1
	EndIf
endFunction

Function HalfImperialConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfImperialConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfImperialRestorationAbility)
		game.getPlayer().addSpell(LT07MCA_HalfImperialFortifyHealthAbility)
		game.getPlayer().addSpell(LT07MCA_MenSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfImperial = 1
	EndIf
endFunction

Function HalfKhajiitConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfKhajiitConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfKhajiitSneakAbility)
		game.getPlayer().addSpell(LT07MCA_HalfKhajiitFortifyStaminaAbility)
		game.getPlayer().addSpell(LT07MCA_BeastSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfKhajiit = 1
	EndIf
endFunction

Function HalfNordConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfNordConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfNordTwoHandedAbility)
		game.getPlayer().addSpell(LT07MCA_HalfNordFrostResistanceAbility)
		game.getPlayer().addSpell(LT07MCA_MenSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfNord = 1
	EndIf
endFunction

Function HalfOrsimerConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfOrsimerConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfOrsimerHeavyArmorAbility)
		game.getPlayer().addSpell(LT07MCA_HalfOrsimerDamageResistanceAbility)
		game.getPlayer().addSpell(LT07MCA_MerSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfOrsimer = 1
	EndIf
endFunction

Function HalfRedguardConfirmation(int aiButton = 1)
	aiButton = LT07MCA_HalfRedguardConfirmation.show()
	If aiButton == 1

	ElseIf aiButton  == 0
		game.getPlayer().addSpell(LT07MCA_HalfRedguardOneHandedAbility)
		game.getPlayer().addSpell(LT07MCA_HalfRedguardPoisonResistanceAbility)
		game.getPlayer().addSpell(LT07MCA_MenSpeechDebuffSpell)
		Cont = Cont + 1
		isHalfRedguard = 1
	EndIf
endFunction

Function RemoveEffects(int aiButton = 1)
	aiButton = LT07MCA_RemoveAll.show()
	If aiButton == 1

	ElseIf aiButton == 0
	
		if isHalfAltmer == 1
			game.getPlayer().removeSpell(LT07MCA_HalfAltmerIllusionAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfAltmerFortifyMagickaAbility)
			game.getPlayer().removeSpell(LT07MCA_MerSpeechDebuffSpell)
		
		ElseIf isHalfArgonian == 1
			game.getPlayer().removeSpell(LT07MCA_HalfArgonianLockpickingAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfArgonianHealthRegenAbility)
			game.getPlayer().removeSpell(LT07MCA_BeastSpeechDebuffSpell)
		
		ElseIf isHalfBosmer == 1
			game.getPlayer().removeSpell(LT07MCA_HalfBosmerArcheryAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfBosmerDiseaseResistanceAbility)
			game.getPlayer().removeSpell(LT07MCA_MerSpeechDebuffSpell)
			
		ElseIf isHalfBreton == 1
			game.getPlayer().removeSpell(LT07MCA_HalfBretonConjurationAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfBretonMagicResistanceAbility)
			game.getPlayer().removeSpell(LT07MCA_MenSpeechDebuffSpell)

		ElseIf isHalfDunmer == 1
			game.getPlayer().removeSpell(LT07MCA_HalfDunmerDestructionAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfDunmerFireResistanceAbility)
			game.getPlayer().removeSpell(LT07MCA_MerSpeechDebuffSpell)

		ElseIf isHalfImperial == 1
			game.getPlayer().removeSpell(LT07MCA_HalfImperialRestorationAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfImperialFortifyHealthAbility)
			game.getPlayer().removeSpell(LT07MCA_MenSpeechDebuffSpell)

		ElseIf isHalfKhajiit == 1
			game.getPlayer().removeSpell(LT07MCA_HalfKhajiitSneakAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfKhajiitFortifyStaminaAbility)
			game.getPlayer().removeSpell(LT07MCA_BeastSpeechDebuffSpell)

		Elseif isHalfNord == 1
			game.getPlayer().removeSpell(LT07MCA_HalfNordTwoHandedAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfBosmerDiseaseResistanceAbility)
			game.getPlayer().removeSpell(LT07MCA_MenSpeechDebuffSpell)

		Elseif isHalfOrsimer == 1
			game.getPlayer().removeSpell(LT07MCA_HalfOrsimerHeavyArmorAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfOrsimerDamageResistanceAbility)
			game.getPlayer().removeSpell(LT07MCA_MerSpeechDebuffSpell)

		ElseIf isHalfRedguard == 1
			game.getPlayer().removeSpell(LT07MCA_HalfRedguardOneHandedAbility)
			game.getPlayer().removeSpell(LT07MCA_HalfRedguardPoisonResistanceAbility)
			game.getPlayer().removeSpell(LT07MCA_MenSpeechDebuffSpell)

		
		Else
			debug.messageBox("You have no Active Effects from this mod.")
		endIf
		MiscObject familyTreeItem = Game.GetFormFromFile(familyTreeID , "LT07MCA_MinimalisticCharacterAncestry.esp") as MiscObject
		game.getPlayer().removeItem(familyTreeItem ,1)
	endIf
endFunction