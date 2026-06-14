; =========================================================
; Game Engine Function: sub_DCF30
; Address            : 0xDCF30 - 0xDCF8C
; =========================================================

DCF30:  PUSH            {R4-R7,LR}
DCF32:  ADD             R7, SP, #0xC
DCF34:  PUSH.W          {R8}
DCF38:  CMP             R1, R2
DCF3A:  BEQ             loc_DCF86
DCF3C:  MOV             R6, R0
DCF3E:  LDR             R0, [R0,#8]
DCF40:  MOV             R8, R2
DCF42:  MOV             R5, R1
DCF44:  SUB.W           R4, R8, R5
DCF48:  LDR             R2, [R6,#0xC]
DCF4A:  ADDS            R1, R0, R4
DCF4C:  CMP             R2, R1
DCF4E:  BCS             loc_DCF5C
DCF50:  LDR             R0, [R6]
DCF52:  LDR             R2, [R0]
DCF54:  MOV             R0, R6
DCF56:  BLX             R2
DCF58:  LDRD.W          R0, R2, [R6,#8]
DCF5C:  SUBS            R1, R2, R0
DCF5E:  CMP             R1, R4
DCF60:  IT CC
DCF62:  MOVCC           R4, R1
DCF64:  CBZ             R4, loc_DCF7C
DCF66:  LDR             R1, [R6,#4]
DCF68:  MOV             R2, R4
DCF6A:  ADD             R0, R1
DCF6C:  MOV             R1, R5
DCF6E:  LDRB.W          R3, [R1],#1
DCF72:  SUBS            R2, #1
DCF74:  STRB.W          R3, [R0],#1
DCF78:  BNE             loc_DCF6E
DCF7A:  LDR             R0, [R6,#8]
DCF7C:  ADD             R0, R4
DCF7E:  ADD             R5, R4
DCF80:  CMP             R5, R8
DCF82:  STR             R0, [R6,#8]
DCF84:  BNE             loc_DCF44
DCF86:  POP.W           {R8}
DCF8A:  POP             {R4-R7,PC}
