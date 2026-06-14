; =========================================================
; Game Engine Function: sub_11AAC8
; Address            : 0x11AAC8 - 0x11AB10
; =========================================================

11AAC8:  PUSH            {R4,R5,R7,LR}
11AACA:  ADD             R7, SP, #8
11AACC:  MOV             R4, R0
11AACE:  LDR             R0, [R0,#0x10]
11AAD0:  MOV             R5, R1
11AAD2:  MOVS            R1, #0
11AAD4:  CMP             R4, R0
11AAD6:  STR             R1, [R4,#0x10]
11AAD8:  BEQ             loc_11AAE0
11AADA:  CBZ             R0, loc_11AAEA
11AADC:  MOVS            R1, #5
11AADE:  B               loc_11AAE2
11AAE0:  MOVS            R1, #4
11AAE2:  LDR             R2, [R0]
11AAE4:  LDR.W           R1, [R2,R1,LSL#2]
11AAE8:  BLX             R1
11AAEA:  LDR             R0, [R5,#0x10]
11AAEC:  CBZ             R0, loc_11AAFA
11AAEE:  CMP             R5, R0
11AAF0:  BEQ             loc_11AB00
11AAF2:  STR             R0, [R4,#0x10]
11AAF4:  MOVS            R0, #0
11AAF6:  STR             R0, [R5,#0x10]
11AAF8:  B               loc_11AB0C
11AAFA:  MOVS            R0, #0
11AAFC:  STR             R0, [R4,#0x10]
11AAFE:  B               loc_11AB0C
11AB00:  STR             R4, [R4,#0x10]
11AB02:  LDR             R0, [R5,#0x10]
11AB04:  LDR             R1, [R0]
11AB06:  LDR             R2, [R1,#0xC]
11AB08:  MOV             R1, R4
11AB0A:  BLX             R2
11AB0C:  MOV             R0, R4
11AB0E:  POP             {R4,R5,R7,PC}
