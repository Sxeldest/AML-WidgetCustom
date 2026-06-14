; =========================================================
; Game Engine Function: sub_12EA84
; Address            : 0x12EA84 - 0x12EAB8
; =========================================================

12EA84:  PUSH            {R4,R6,R7,LR}
12EA86:  ADD             R7, SP, #8
12EA88:  MOV             R4, R0
12EA8A:  LDR             R0, =(off_234C0C - 0x12EA90)
12EA8C:  ADD             R0, PC; off_234C0C
12EA8E:  LDR             R1, [R0]; `vtable for'Button ...
12EA90:  LDR             R0, [R4,#0x68]
12EA92:  ADDS            R1, #8
12EA94:  STR             R1, [R4]
12EA96:  ADD.W           R1, R4, #0x58 ; 'X'
12EA9A:  CMP             R1, R0
12EA9C:  BEQ             loc_12EAA4
12EA9E:  CBZ             R0, loc_12EAAE
12EAA0:  MOVS            R1, #5
12EAA2:  B               loc_12EAA6
12EAA4:  MOVS            R1, #4
12EAA6:  LDR             R2, [R0]
12EAA8:  LDR.W           R1, [R2,R1,LSL#2]
12EAAC:  BLX             R1
12EAAE:  MOV             R0, R4
12EAB0:  POP.W           {R4,R6,R7,LR}
12EAB4:  B.W             sub_12BCE4
