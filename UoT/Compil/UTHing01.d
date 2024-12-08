BEGIN ~UTHing01~

//------------------------------- 主选单 -------------------------------//

IF ~Global("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN First
SAY
	@50
IF ~~
THEN GOTO Second
END

IF ~~
THEN BEGIN Second
SAY
	@51
IF ~~
THEN GOTO Third
END

IF ~~
THEN BEGIN Third
SAY
	@52
	IF ~Global("UTTalkedToHinge","MYAREA",0)~ THEN DO
		~SetGlobal("UTTalkedToHinge","MYAREA",1)~ GOTO Start
END

IF ~GlobalGT("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN Start
SAY 
	@53	
IF ~~
THEN REPLY
	@54
	GOTO Challenge
IF ~~
THEN REPLY
	@55
	GOTO Storage
IF ~~
THEN REPLY
	@56
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTCutR2")
	~ EXIT
IF ~~
THEN REPLY
	@57
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
IF ~~
THEN REPLY
	@58
	GOTO Miscellaneous
END

//------------------------------- 战斗 -------------------------------//

IF ~~ 
THEN BEGIN Challenge
SAY
	~~
IF ~~
THEN REPLY
	@60
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb01")
	~ EXIT
IF ~~
THEN REPLY
	@61
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb02")
	~ EXIT
IF ~~
THEN REPLY
	@62
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb03")
	~ EXIT
IF ~~
THEN REPLY
	@63
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb04")
	~ EXIT
IF ~~
THEN REPLY
	@64
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb05")
	~ EXIT
IF ~~
THEN REPLY
	@65
	GOTO Start
IF ~~
THEN REPLY
	@57
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- 商店 -------------------------------//

IF ~~ 
THEN BEGIN Storage
SAY
	~~
IF ~~
THEN REPLY
	@66
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		StartStore("trshop",LastTalkedToBy(Myself))
	~ EXIT
IF ~~
THEN REPLY
	@65
	GOTO Start
IF ~~
THEN REPLY
	@57
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- 杂项 -------------------------------//

IF ~~ 
THEN BEGIN Miscellaneous
SAY
	~~
IF ~Global("Comet","MYAREA",0)~ 
THEN REPLY
	@67
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",1)
	~ EXIT
IF ~Global("Comet","MYAREA",1)~ 
THEN REPLY
	@68
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",0)
	~ EXIT
IF ~~
THEN REPLY
	@65
	GOTO Start
IF ~~
THEN REPLY
	@57
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END