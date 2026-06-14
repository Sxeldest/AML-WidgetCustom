; =========================================================
; Game Engine Function: _Z7TheGamev
; Address            : 0x3F6068 - 0x3F6088
; =========================================================

3F6068:  PUSH            {R7,LR}
3F606A:  MOV             R7, SP
3F606C:  BLX             j__ZN6CTimer10InitialiseEv; CTimer::Initialise(void)
3F6070:  LDR             R0, =(aDataGtaDat - 0x3F6076); "DATA\\GTA.DAT"
3F6072:  ADD             R0, PC; "DATA\\GTA.DAT"
3F6074:  BLX             j__ZN5CGame10InitialiseEPKc; CGame::Initialise(char const*)
3F6078:  ADR             R0, aStartingGame; "Starting Game"
3F607A:  MOVS            R1, #0; char *
3F607C:  BLX             j__ZN14CLoadingScreen16SetLoadingBarMsgEPKcS1_; CLoadingScreen::SetLoadingBarMsg(char const*,char const*)
3F6080:  POP.W           {R7,LR}
3F6084:  B.W             sub_19E844
