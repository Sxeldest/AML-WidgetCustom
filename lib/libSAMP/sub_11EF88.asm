; =========================================================
; Game Engine Function: sub_11EF88
; Address            : 0x11EF88 - 0x11EFA8
; =========================================================

11EF88:  PUSH            {R4,R6,R7,LR}
11EF8A:  ADD             R7, SP, #8
11EF8C:  MOV             R4, R0
11EF8E:  LDR             R0, [R0,#0x10]
11EF90:  CMP             R4, R0
11EF92:  BEQ             loc_11EF9A
11EF94:  CBZ             R0, loc_11EFA4
11EF96:  MOVS            R1, #5
11EF98:  B               loc_11EF9C
11EF9A:  MOVS            R1, #4
11EF9C:  LDR             R2, [R0]
11EF9E:  LDR.W           R1, [R2,R1,LSL#2]
11EFA2:  BLX             R1
11EFA4:  MOV             R0, R4
11EFA6:  POP             {R4,R6,R7,PC}
