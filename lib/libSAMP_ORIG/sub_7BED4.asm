; =========================================================
; Game Engine Function: sub_7BED4
; Address            : 0x7BED4 - 0x7BF00
; =========================================================

7BED4:  PUSH            {R4,R6,R7,LR}
7BED6:  ADD             R7, SP, #8
7BED8:  LDRB.W          R1, [R0,#-0x4C]
7BEDC:  CBZ             R1, locret_7BEFE
7BEDE:  SUB.W           R4, R0, #0x54 ; 'T'
7BEE2:  LDR.W           R0, [R4,#0x84]
7BEE6:  CMP             R0, #0
7BEE8:  ITT NE
7BEEA:  LDRNE           R1, [R4,#0x70]
7BEEC:  BLNE            sub_75410
7BEF0:  LDR             R0, [R4]
7BEF2:  LDR             R1, [R4,#0x70]
7BEF4:  LDR             R2, [R0,#4]
7BEF6:  MOV             R0, R4
7BEF8:  POP.W           {R4,R6,R7,LR}
7BEFC:  BX              R2
7BEFE:  POP             {R4,R6,R7,PC}
