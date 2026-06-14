; =========================================================
; Game Engine Function: sub_12DC50
; Address            : 0x12DC50 - 0x12DCAA
; =========================================================

12DC50:  MOVW            R12, #0xE995
12DC54:  MOV             R3, R2
12DC56:  MOVT            R12, #0x5BD1
12DC5A:  CMP             R2, #4
12DC5C:  BCC             loc_12DC7C
12DC5E:  LDR.W           R0, [R1],#4
12DC62:  MUL.W           R3, R3, R12
12DC66:  SUBS            R2, #4
12DC68:  CMP             R2, #3
12DC6A:  MUL.W           R0, R0, R12
12DC6E:  EOR.W           R0, R0, R0,LSR#24
12DC72:  MUL.W           R0, R0, R12
12DC76:  EOR.W           R3, R3, R0
12DC7A:  BHI             loc_12DC5E
12DC7C:  CMP             R2, #1
12DC7E:  BEQ             loc_12DC94
12DC80:  CMP             R2, #2
12DC82:  BEQ             loc_12DC8E
12DC84:  CMP             R2, #3
12DC86:  BNE             loc_12DC9C
12DC88:  LDRB            R0, [R1,#2]
12DC8A:  EOR.W           R3, R3, R0,LSL#16
12DC8E:  LDRB            R0, [R1,#1]
12DC90:  EOR.W           R3, R3, R0,LSL#8
12DC94:  LDRB            R0, [R1]
12DC96:  EORS            R0, R3
12DC98:  MUL.W           R3, R0, R12
12DC9C:  EOR.W           R0, R3, R3,LSR#13
12DCA0:  MUL.W           R0, R0, R12
12DCA4:  EOR.W           R0, R0, R0,LSR#15
12DCA8:  BX              LR
