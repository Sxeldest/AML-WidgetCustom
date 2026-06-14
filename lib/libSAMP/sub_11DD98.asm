; =========================================================
; Game Engine Function: sub_11DD98
; Address            : 0x11DD98 - 0x11DDC4
; =========================================================

11DD98:  PUSH            {R4,R6,R7,LR}
11DD9A:  ADD             R7, SP, #8
11DD9C:  MOV             R4, R0
11DD9E:  LDR             R0, [R1,#0x10]
11DDA0:  CBZ             R0, loc_11DDAE
11DDA2:  CMP             R1, R0
11DDA4:  BEQ             loc_11DDB4
11DDA6:  LDR             R1, [R0]
11DDA8:  LDR             R1, [R1,#8]
11DDAA:  BLX             R1
11DDAC:  B               loc_11DDB0
11DDAE:  MOVS            R0, #0
11DDB0:  STR             R0, [R4,#0x10]
11DDB2:  B               loc_11DDC0
11DDB4:  STR             R4, [R4,#0x10]
11DDB6:  LDR             R0, [R1,#0x10]
11DDB8:  LDR             R1, [R0]
11DDBA:  LDR             R2, [R1,#0xC]
11DDBC:  MOV             R1, R4
11DDBE:  BLX             R2
11DDC0:  MOV             R0, R4
11DDC2:  POP             {R4,R6,R7,PC}
