; =========================================================
; Game Engine Function: sub_FAF14
; Address            : 0xFAF14 - 0xFAF62
; =========================================================

FAF14:  PUSH            {R4-R7,LR}
FAF16:  ADD             R7, SP, #0xC
FAF18:  PUSH.W          {R8-R10}
FAF1C:  SUB             SP, SP, #0x28
FAF1E:  MOV             R6, R3
FAF20:  MOV             R8, R2
FAF22:  MOV             R5, R1
FAF24:  MOV             R4, R0
FAF26:  BL              sub_FAF68
FAF2A:  LDR             R0, [R7,#arg_1C]
FAF2C:  STR             R0, [SP,#0x40+var_20]
FAF2E:  LDR             R0, =(unk_247378 - 0xFAF3A)
FAF30:  LDR             R3, [R7,#arg_0]
FAF32:  LDRD.W          R2, R1, [R7,#arg_4]
FAF36:  ADD             R0, PC; unk_247378
FAF38:  LDRD.W          R10, LR, [R7,#arg_C]
FAF3C:  LDRD.W          R12, R9, [R7,#arg_14]
FAF40:  STRD.W          R2, R1, [SP,#0x40+var_38]
FAF44:  MOV             R1, R4
FAF46:  STRD.W          R6, R3, [SP,#0x40+var_40]
FAF4A:  MOV             R2, R5
FAF4C:  MOV             R3, R8
FAF4E:  STRD.W          R10, LR, [SP,#0x40+var_30]
FAF52:  STRD.W          R12, R9, [SP,#0x40+var_28]
FAF56:  BL              sub_FB034
FAF5A:  ADD             SP, SP, #0x28 ; '('
FAF5C:  POP.W           {R8-R10}
FAF60:  POP             {R4-R7,PC}
