; =========================================================
; Game Engine Function: sub_11FEC4
; Address            : 0x11FEC4 - 0x11FF0C
; =========================================================

11FEC4:  PUSH            {R4,R5,R7,LR}
11FEC6:  ADD             R7, SP, #8
11FEC8:  MOV             R4, R0
11FECA:  LDR             R0, [R0,#0x10]
11FECC:  MOV             R5, R1
11FECE:  MOVS            R1, #0
11FED0:  CMP             R4, R0
11FED2:  STR             R1, [R4,#0x10]
11FED4:  BEQ             loc_11FEDC
11FED6:  CBZ             R0, loc_11FEE6
11FED8:  MOVS            R1, #5
11FEDA:  B               loc_11FEDE
11FEDC:  MOVS            R1, #4
11FEDE:  LDR             R2, [R0]
11FEE0:  LDR.W           R1, [R2,R1,LSL#2]
11FEE4:  BLX             R1
11FEE6:  LDR             R0, [R5,#0x10]
11FEE8:  CBZ             R0, loc_11FEF6
11FEEA:  CMP             R5, R0
11FEEC:  BEQ             loc_11FEFC
11FEEE:  STR             R0, [R4,#0x10]
11FEF0:  MOVS            R0, #0
11FEF2:  STR             R0, [R5,#0x10]
11FEF4:  B               loc_11FF08
11FEF6:  MOVS            R0, #0
11FEF8:  STR             R0, [R4,#0x10]
11FEFA:  B               loc_11FF08
11FEFC:  STR             R4, [R4,#0x10]
11FEFE:  LDR             R0, [R5,#0x10]
11FF00:  LDR             R1, [R0]
11FF02:  LDR             R2, [R1,#0xC]
11FF04:  MOV             R1, R4
11FF06:  BLX             R2
11FF08:  MOV             R0, R4
11FF0A:  POP             {R4,R5,R7,PC}
