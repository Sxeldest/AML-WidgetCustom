; =========================================================
; Game Engine Function: png_set_eXIf_1
; Address            : 0x201A3C - 0x201ACC
; =========================================================

201A3C:  PUSH            {R4-R7,LR}
201A3E:  ADD             R7, SP, #0xC
201A40:  PUSH.W          {R8}
201A44:  MOV             R6, R0
201A46:  CMP             R6, #0
201A48:  MOV             R4, R1
201A4A:  MOV             R5, R3
201A4C:  MOV             R8, R2
201A4E:  IT NE
201A50:  CMPNE           R4, #0
201A52:  BEQ             loc_201AB6
201A54:  LDR.W           R1, [R4,#0xD0]; p
201A58:  CBZ             R1, loc_201A66
201A5A:  MOV             R0, R6; int
201A5C:  BLX             j_png_free
201A60:  MOVS            R0, #0
201A62:  STR.W           R0, [R4,#0xD0]
201A66:  MOV             R0, R6; int
201A68:  MOV             R1, R8; byte_count
201A6A:  STR.W           R8, [R4,#0xCC]
201A6E:  BLX             j_png_malloc_warn
201A72:  CMP             R0, #0
201A74:  STR.W           R0, [R4,#0xD0]
201A78:  BEQ             loc_201ABC
201A7A:  LDR.W           R1, [R4,#0xCC]
201A7E:  LDR.W           R2, [R4,#0xF4]
201A82:  CMP             R1, #1
201A84:  ORR.W           R2, R2, #0x8000
201A88:  STR.W           R2, [R4,#0xF4]
201A8C:  BLT             loc_201AAE
201A8E:  LDRB            R1, [R5]
201A90:  STRB            R1, [R0]
201A92:  LDR.W           R0, [R4,#0xCC]
201A96:  CMP             R0, #2
201A98:  BLT             loc_201AAE
201A9A:  MOVS            R0, #1
201A9C:  LDR.W           R1, [R4,#0xD0]
201AA0:  LDRB            R2, [R5,R0]
201AA2:  STRB            R2, [R1,R0]
201AA4:  ADDS            R0, #1
201AA6:  LDR.W           R1, [R4,#0xCC]
201AAA:  CMP             R0, R1
201AAC:  BLT             loc_201A9C
201AAE:  LDR             R0, [R4,#8]
201AB0:  ORR.W           R0, R0, #0x10000
201AB4:  STR             R0, [R4,#8]
201AB6:  POP.W           {R8}
201ABA:  POP             {R4-R7,PC}
201ABC:  ADR             R1, aInsufficientMe_1; "Insufficient memory for eXIf chunk data"
201ABE:  MOV             R0, R6
201AC0:  POP.W           {R8}
201AC4:  POP.W           {R4-R7,LR}
201AC8:  B.W             j_j_png_warning
