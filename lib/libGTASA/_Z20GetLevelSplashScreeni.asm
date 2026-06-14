; =========================================================
; Game Engine Function: _Z20GetLevelSplashScreeni
; Address            : 0x3F603C - 0x3F6046
; =========================================================

3F603C:  LDR             R1, =(unk_667CA4 - 0x3F6042)
3F603E:  ADD             R1, PC; unk_667CA4
3F6040:  LDR.W           R0, [R1,R0,LSL#2]
3F6044:  BX              LR
