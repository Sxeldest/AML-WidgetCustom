; =========================================================
; Game Engine Function: sub_110B9C
; Address            : 0x110B9C - 0x110BC8
; =========================================================

110B9C:  PUSH            {R4,R6,R7,LR}
110B9E:  ADD             R7, SP, #8
110BA0:  MOV             R4, R0
110BA2:  LDR             R0, [R1,#0x10]
110BA4:  CBZ             R0, loc_110BB2
110BA6:  CMP             R1, R0
110BA8:  BEQ             loc_110BB8
110BAA:  LDR             R1, [R0]
110BAC:  LDR             R1, [R1,#8]
110BAE:  BLX             R1
110BB0:  B               loc_110BB4
110BB2:  MOVS            R0, #0
110BB4:  STR             R0, [R4,#0x10]
110BB6:  B               loc_110BC4
110BB8:  STR             R4, [R4,#0x10]
110BBA:  LDR             R0, [R1,#0x10]
110BBC:  LDR             R1, [R0]
110BBE:  LDR             R2, [R1,#0xC]
110BC0:  MOV             R1, R4
110BC2:  BLX             R2
110BC4:  MOV             R0, R4
110BC6:  POP             {R4,R6,R7,PC}
