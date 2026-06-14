; =========================================================
; Game Engine Function: _ZN11FxManager_c16FxRwMatrixCreateEv
; Address            : 0x36DA18 - 0x36DA2E
; =========================================================

36DA18:  LDR.W           R2, [R0,#0x88]
36DA1C:  ADD.W           R1, R0, R2,LSL#2
36DA20:  ADDS            R2, #1
36DA22:  LDR.W           R1, [R1,#0x8C]
36DA26:  STR.W           R2, [R0,#0x88]
36DA2A:  MOV             R0, R1
36DA2C:  BX              LR
