Scriptname LT07SSRL_MenuScript extends ObjectReference  

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

Message Property LT07SSRL_PlayerAltmerSelectionMenu Auto
Message Property LT07SSRL_PlayerArgonianSelectionMenu Auto
Message Property LT07SSRL_PlayerBosmerSelectionMenu Auto
Message Property LT07SSRL_PlayerBretonSelectionMenu Auto
Message Property LT07SSRL_PlayerDunmerSelectionMenu Auto
Message Property LT07SSRL_PlayerImperialSelectionMenu Auto
Message Property LT07SSRL_PlayerKhajiitlectionMenu Auto
Message Property LT07SSRL_PlayerNordSelectionMenu Auto
Message Property LT07SSRL_PlayerOrsimerSelectionMenu Auto
Message Property LT07SSRL_PlayerRedguardSelectionMenu Auto

Message Property LT07SSRL_AltmerMessage Auto
Message Property LT07SSRL_ArgonianMessage Auto
Message Property LT07SSRL_BosmerMessage Auto
Message Property LT07SSRL_BretonMessage Auto
Message Property LT07SSRL_DunmerMessage Auto
Message Property LT07SSRL_ImperialMessage Auto
Message Property LT07SSRL_KhajiitMessage Auto
Message Property LT07SSRL_NordMessage Auto
Message Property LT07SSRL_OrsimerMessage Auto
Message Property LT07SSRL_RedguardMessage Auto

Event OnActivate(ObjectReference akActionRef)

    ActorBase PlayerBase = Game.GetPlayer().GetBaseObject() as ActorBase
	Race PlayerRace = PlayerBase.GetRace()

    Debug.MessageBox(PlayerRace)

	If PlayerRace == HighElfRace
	    ShowAltmerSelectionMenu()
    ElseIf PlayerRace == ArgonianRace
        ShowArgonianSelectionMenu()
    ElseIf PlayerRace == WoodElfRace
        ShowBosmerSelectionMenu()
    ElseIf PlayerRace == BretonRace
        ShowBretonSelectionMenu()
    ElseIf PlayerRace == DarkElfRace
        ShowDunmerSelectionMenu()
    ElseIf PlayerRace == ImperialRace
        ShowImperialSelectionMenu()
    ElseIf PlayerRace == KhajiitRace
        ShowKhajiitSelectionMenu()
    ElseIf PlayerRace == NordRace
        ShowNordSelectionMenu()
    ElseIf PlayerRace == OrcRace
        ShowOrsimerSelectionMenu()
    ElseIf PlayerRace == RedguardRace
        ShowRedguardSelectionMenu()
    EndIf

EndEvent

Function ShowAltmerSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowArgonianSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowBosmerSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowBretonSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowDunmerSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowImperialSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowKhajiitSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowNordSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_OrsimerMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowOrsimerSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_RedguardMessage.show()
    EndIf
EndFunction

Function ShowRedguardSelectionMenu(int aiButton = 9)
    IF aiButton == 9
		
    ElseIf aiButton == 0
        LT07SSRL_AltmerMessage.show()
    ElseIf aiButton == 1
        LT07SSRL_ArgonianMessage.show()
    ElseIf aiButton == 2
        LT07SSRL_BosmerMessage.show()
    ElseIf aiButton == 3
        LT07SSRL_BretonMessage.show()
    ElseIf aiButton == 4
        LT07SSRL_DunmerMessage.show()
    ElseIf aiButton == 5
        LT07SSRL_ImperialMessage.show()
    ElseIf aiButton == 6
        LT07SSRL_KhajiitMessage.show()
    ElseIf aiButton == 7
        LT07SSRL_NordMessage.show()
    ElseIf aiButton == 8
        LT07SSRL_OrsimerMessage.show()
    EndIf
EndFunction