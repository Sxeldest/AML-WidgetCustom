; =========================================================
; Game Engine Function: sub_A77B4
; Address            : 0xA77B4 - 0xA77DC
; =========================================================

A77B4:  LDR             R0, =(off_114D5C - 0xA77BE)
A77B6:  MOVW            R1, #0x19AC
A77BA:  ADD             R0, PC; off_114D5C
A77BC:  LDR             R0, [R0]; dword_1ACF68
A77BE:  LDR             R0, [R0]
A77C0:  LDR             R0, [R0,R1]
A77C2:  LDRB.W          R1, [R0,#0x7F]
A77C6:  CMP             R1, #0
A77C8:  IT NE
A77CA:  BXNE            LR
A77CC:  LDR.W           R1, [R0,#0x15C]
A77D0:  MOVS            R0, #5
A77D2:  CMP             R1, #0
A77D4:  IT EQ
A77D6:  MOVEQ           R0, #6
A77D8:  B.W             sub_A75DC
