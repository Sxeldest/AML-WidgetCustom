; =========================================================
; Game Engine Function: sub_FA4BC
; Address            : 0xFA4BC - 0xFA4D8
; =========================================================

FA4BC:  LDR             R2, [R0]
FA4BE:  MOV             R1, R0
FA4C0:  MOVS            R0, #1
FA4C2:  CMP             R2, #1
FA4C4:  ITT EQ
FA4C6:  LDREQ           R2, [R1,#8]
FA4C8:  CMPEQ           R2, #0
FA4CA:  BEQ             loc_FA4CE
FA4CC:  BX              LR
FA4CE:  LDR             R0, [R1,#0xC]
FA4D0:  CMP             R0, #0
FA4D2:  IT NE
FA4D4:  MOVNE           R0, #1
FA4D6:  BX              LR
