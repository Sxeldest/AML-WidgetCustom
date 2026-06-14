; =========================================================
; Game Engine Function: sub_18CFBE
; Address            : 0x18CFBE - 0x18D000
; =========================================================

18CFBE:  PUSH            {R4,R5,R7,LR}
18CFC0:  ADD             R7, SP, #8
18CFC2:  SUB             SP, SP, #8
18CFC4:  MOV             R4, R0
18CFC6:  LDRB            R0, [R0,#0x14]
18CFC8:  MOV             R5, R1
18CFCA:  CBZ             R0, loc_18CFD8
18CFCC:  LDR             R0, [R4,#0x10]
18CFCE:  LDR             R1, [R5]
18CFD0:  CMP             R1, R0
18CFD2:  BNE             loc_18CFD8
18CFD4:  MOVS            R0, #1
18CFD6:  B               loc_18CFFC
18CFD8:  SUB.W           R2, R7, #-var_9
18CFDC:  MOV             R0, R4
18CFDE:  MOV             R1, R5
18CFE0:  BL              sub_18D136
18CFE4:  MOV             R1, R0
18CFE6:  LDRB.W          R0, [R7,#var_9]
18CFEA:  CBZ             R0, loc_18CFF6
18CFEC:  STR             R1, [R4,#0xC]
18CFEE:  MOVS            R2, #1
18CFF0:  LDR             R1, [R5]
18CFF2:  STRB            R2, [R4,#0x14]
18CFF4:  STR             R1, [R4,#0x10]
18CFF6:  CMP             R0, #0
18CFF8:  IT NE
18CFFA:  MOVNE           R0, #1
18CFFC:  ADD             SP, SP, #8
18CFFE:  POP             {R4,R5,R7,PC}
