Scriptname LT07MCA_BeastSpeechDebuffScript extends ActiveMagicEffect  
{Adds a Speech debuff to players with Beast ancestry.}

GlobalVariable Property SpeechAverage  Auto  
GlobalVariable Property SpeechEasy  Auto  
GlobalVariable Property SpeechHard  Auto  
GlobalVariable Property SpeechVeryHard  Auto 

Event OnEffectStart(Actor akTarget, Actor akCaster)
		AddSpeechDebuff()
endEvent

Function AddSpeechDebuff()

	SpeechEasy.SetValue(SpeechEasy.GetValue() * 1.2)
	SpeechAverage.SetValue(SpeechAverage.GetValue() * 1.2)
	SpeechHard.SetValue(SpeechHard.GetValue() * 1.2)
	SpeechVeryHard.SetValue(SpeechVeryHard.GetValue() * 1.2)

endFunction