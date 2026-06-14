; =========================================================
; Game Engine Function: sub_10CD74
; Address            : 0x10CD74 - 0x10CDA0
; =========================================================

10CD74:  PUSH            {R4,R6,R7,LR}
10CD76:  ADD             R7, SP, #8
10CD78:  MOV             R4, R0
10CD7A:  LDR             R0, [R1,#0x10]
10CD7C:  CBZ             R0, loc_10CD8A
10CD7E:  CMP             R1, R0
10CD80:  BEQ             loc_10CD90
10CD82:  LDR             R1, [R0]
10CD84:  LDR             R1, [R1,#8]
10CD86:  BLX             R1
10CD88:  B               loc_10CD8C
10CD8A:  MOVS            R0, #0
10CD8C:  STR             R0, [R4,#0x10]
10CD8E:  B               loc_10CD9C
10CD90:  STR             R4, [R4,#0x10]
10CD92:  LDR             R0, [R1,#0x10]
10CD94:  LDR             R1, [R0]
10CD96:  LDR             R2, [R1,#0xC]
10CD98:  MOV             R1, R4
10CD9A:  BLX             R2
10CD9C:  MOV             R0, R4
10CD9E:  POP             {R4,R6,R7,PC}
