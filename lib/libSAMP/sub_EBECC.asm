; =========================================================
; Game Engine Function: sub_EBECC
; Address            : 0xEBECC - 0xEBF22
; =========================================================

EBECC:  PUSH            {R4-R7,LR}
EBECE:  ADD             R7, SP, #0xC
EBED0:  PUSH.W          {R8}
EBED4:  CMP             R1, R2
EBED6:  BEQ             loc_EBF1C
EBED8:  ADDS            R6, R0, #4
EBEDA:  MOV             R8, R2
EBEDC:  MOV             R4, R1
EBEDE:  MOV             R5, R0
EBEE0:  ADD.W           R2, R4, #0x10
EBEE4:  MOV             R0, R5
EBEE6:  MOV             R1, R6
EBEE8:  MOV             R3, R2
EBEEA:  BL              sub_EBF22
EBEEE:  LDR             R0, [R4,#4]
EBEF0:  CBZ             R0, loc_EBEFC
EBEF2:  MOV             R4, R0
EBEF4:  LDR             R0, [R0]
EBEF6:  CMP             R0, #0
EBEF8:  BNE             loc_EBEF2
EBEFA:  B               loc_EBF18
EBEFC:  MOV             R0, R4
EBEFE:  LDR.W           R1, [R0,#8]!
EBF02:  LDR             R2, [R1]
EBF04:  CMP             R2, R4
EBF06:  MOV             R4, R1
EBF08:  BEQ             loc_EBF18
EBF0A:  LDR             R1, [R0]
EBF0C:  MOV             R0, R1
EBF0E:  LDR.W           R4, [R0,#8]!
EBF12:  LDR             R2, [R4]
EBF14:  CMP             R2, R1
EBF16:  BNE             loc_EBF0A
EBF18:  CMP             R4, R8
EBF1A:  BNE             loc_EBEE0
EBF1C:  POP.W           {R8}
EBF20:  POP             {R4-R7,PC}
