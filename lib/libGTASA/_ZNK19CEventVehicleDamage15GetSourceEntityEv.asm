; =========================================================
; Game Engine Function: _ZNK19CEventVehicleDamage15GetSourceEntityEv
; Address            : 0x3770EE - 0x377114
; =========================================================

3770EE:  LDR             R0, [R0,#0x14]
3770F0:  CMP             R0, #0
3770F2:  ITT EQ
3770F4:  MOVEQ           R0, #0
3770F6:  BXEQ            LR
3770F8:  LDRB.W          R1, [R0,#0x3A]
3770FC:  AND.W           R1, R1, #7
377100:  CMP             R1, #2
377102:  IT NE
377104:  BXNE            LR
377106:  LDR.W           R1, [R0,#0x464]
37710A:  CMP             R1, #0
37710C:  IT EQ
37710E:  MOVEQ           R1, R0
377110:  MOV             R0, R1
377112:  BX              LR
