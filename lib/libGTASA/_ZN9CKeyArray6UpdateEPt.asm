; =========================================================
; Game Engine Function: _ZN9CKeyArray6UpdateEPt
; Address            : 0x54D4A6 - 0x54D4C8
; =========================================================

54D4A6:  LDR             R2, [R0,#4]
54D4A8:  CMP             R2, #0
54D4AA:  IT EQ
54D4AC:  BXEQ            LR
54D4AE:  LDR.W           R12, [R0]
54D4B2:  MOVS            R3, #0
54D4B4:  LDR.W           R2, [R12,R3,LSL#3]
54D4B8:  ADD             R2, R1
54D4BA:  STR.W           R2, [R12,R3,LSL#3]
54D4BE:  ADDS            R3, #1
54D4C0:  LDR             R2, [R0,#4]
54D4C2:  CMP             R3, R2
54D4C4:  BCC             loc_54D4B4
54D4C6:  BX              LR
