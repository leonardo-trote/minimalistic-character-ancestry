Scriptname LT07MCA_MerSpeechDebuffScript extends ActiveMagicEffect  
{Adds a Speech debuff to playes with Mer ancestry.}

GlobalVariable Property SpeechAverage  Auto  
GlobalVariable Property SpeechEasy  Auto  
GlobalVariable Property SpeechHard  Auto  
GlobalVariable Property SpeechVeryHard  Auto 

Event OnEffectStart(Actor akTarget, Actor akCaster)
		AddSpeechDebuff()
endEvent

Function AddSpeechDebuff()

	SpeechEasy.SetValue(SpeechEasy.GetValue() * 1.15)
	SpeechAverage.SetValue(SpeechAverage.GetValue() * 1.15)
	SpeechHard.SetValue(SpeechHard.GetValue() * 1.15)
	SpeechVeryHard.SetValue(SpeechVeryHard.GetValue() * 1.15)

endFunction
