; =========================================================
; Game Engine Function: sub_110BC8
; Address            : 0x110BC8 - 0x110C10
; =========================================================

110BC8:  PUSH            {R4,R5,R7,LR}
110BCA:  ADD             R7, SP, #8
110BCC:  MOV             R4, R0
110BCE:  LDR             R0, [R0,#0x10]
110BD0:  MOV             R5, R1
110BD2:  MOVS            R1, #0
110BD4:  CMP             R4, R0
110BD6:  STR             R1, [R4,#0x10]
110BD8:  BEQ             loc_110BE0
110BDA:  CBZ             R0, loc_110BEA
110BDC:  MOVS            R1, #5
110BDE:  B               loc_110BE2
110BE0:  MOVS            R1, #4
110BE2:  LDR             R2, [R0]
110BE4:  LDR.W           R1, [R2,R1,LSL#2]
110BE8:  BLX             R1
110BEA:  LDR             R0, [R5,#0x10]
110BEC:  CBZ             R0, loc_110BFA
110BEE:  CMP             R5, R0
110BF0:  BEQ             loc_110C00
110BF2:  STR             R0, [R4,#0x10]
110BF4:  MOVS            R0, #0
110BF6:  STR             R0, [R5,#0x10]
110BF8:  B               loc_110C0C
110BFA:  MOVS            R0, #0
110BFC:  STR             R0, [R4,#0x10]
110BFE:  B               loc_110C0C
110C00:  STR             R4, [R4,#0x10]
110C02:  LDR             R0, [R5,#0x10]
110C04:  LDR             R1, [R0]
110C06:  LDR             R2, [R1,#0xC]
110C08:  MOV             R1, R4
110C0A:  BLX             R2
110C0C:  MOV             R0, R4
110C0E:  POP             {R4,R5,R7,PC}
