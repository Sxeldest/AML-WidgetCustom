; =========================================================
; Game Engine Function: _Z13LoadingScreenPKcS0_S0_
; Address            : 0x3F604C - 0x3F6064
; =========================================================

3F604C:  CMP             R0, #0
3F604E:  IT EQ
3F6050:  BEQ.W           sub_19E844
3F6054:  PUSH            {R7,LR}
3F6056:  MOV             R7, SP
3F6058:  BLX             j__ZN14CLoadingScreen16SetLoadingBarMsgEPKcS1_; CLoadingScreen::SetLoadingBarMsg(char const*,char const*)
3F605C:  POP.W           {R7,LR}
3F6060:  B.W             sub_19E844
