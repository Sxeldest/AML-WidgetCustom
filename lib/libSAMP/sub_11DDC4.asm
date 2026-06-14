; =========================================================
; Game Engine Function: sub_11DDC4
; Address            : 0x11DDC4 - 0x11DE0C
; =========================================================

11DDC4:  PUSH            {R4,R5,R7,LR}
11DDC6:  ADD             R7, SP, #8
11DDC8:  MOV             R4, R0
11DDCA:  LDR             R0, [R0,#0x10]
11DDCC:  MOV             R5, R1
11DDCE:  MOVS            R1, #0
11DDD0:  CMP             R4, R0
11DDD2:  STR             R1, [R4,#0x10]
11DDD4:  BEQ             loc_11DDDC
11DDD6:  CBZ             R0, loc_11DDE6
11DDD8:  MOVS            R1, #5
11DDDA:  B               loc_11DDDE
11DDDC:  MOVS            R1, #4
11DDDE:  LDR             R2, [R0]
11DDE0:  LDR.W           R1, [R2,R1,LSL#2]
11DDE4:  BLX             R1
11DDE6:  LDR             R0, [R5,#0x10]
11DDE8:  CBZ             R0, loc_11DDF6
11DDEA:  CMP             R5, R0
11DDEC:  BEQ             loc_11DDFC
11DDEE:  STR             R0, [R4,#0x10]
11DDF0:  MOVS            R0, #0
11DDF2:  STR             R0, [R5,#0x10]
11DDF4:  B               loc_11DE08
11DDF6:  MOVS            R0, #0
11DDF8:  STR             R0, [R4,#0x10]
11DDFA:  B               loc_11DE08
11DDFC:  STR             R4, [R4,#0x10]
11DDFE:  LDR             R0, [R5,#0x10]
11DE00:  LDR             R1, [R0]
11DE02:  LDR             R2, [R1,#0xC]
11DE04:  MOV             R1, R4
11DE06:  BLX             R2
11DE08:  MOV             R0, R4
11DE0A:  POP             {R4,R5,R7,PC}
