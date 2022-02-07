Scriptname LT07MCA_AddItemScript extends Quest  
{Adds the Family Tree item to player's inventory}

int familyTreeID = 0x0600aa04

Event OnInit()
	MiscObject familyTreeItem = Game.GetFormFromFile(familyTreeID , "LT07MCA_MinimalisticCharacterAncestry.esp") as MiscObject
	game.getPlayer().addItem(familyTreeItem ,1)
EndEvent