; =========================================================
; Game Engine Function: sub_EBF22
; Address            : 0xEBF22 - 0xEBF60
; =========================================================

EBF22:  PUSH            {R4-R7,LR}
EBF24:  ADD             R7, SP, #0xC
EBF26:  PUSH.W          {R11}
EBF2A:  SUB             SP, SP, #0x18
EBF2C:  MOV             R5, R3
EBF2E:  STR             R2, [SP,#0x28+var_28]
EBF30:  ADD             R2, SP, #0x28+var_14
EBF32:  ADD             R3, SP, #0x28+var_18
EBF34:  MOV             R4, R0
EBF36:  BL              sub_EBF60
EBF3A:  MOV             R6, R0
EBF3C:  LDR             R0, [R0]
EBF3E:  CBNZ            R0, loc_EBF58
EBF40:  ADD             R0, SP, #0x28+var_24
EBF42:  MOV             R1, R4
EBF44:  MOV             R2, R5
EBF46:  BL              sub_EC07A
EBF4A:  LDR             R3, [SP,#0x28+var_24]
EBF4C:  MOV             R0, R4
EBF4E:  LDR             R1, [SP,#0x28+var_14]
EBF50:  MOV             R2, R6
EBF52:  BL              sub_EA246
EBF56:  LDR             R0, [SP,#0x28+var_24]
EBF58:  ADD             SP, SP, #0x18
EBF5A:  POP.W           {R11}
EBF5E:  POP             {R4-R7,PC}
