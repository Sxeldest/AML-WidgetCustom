; =========================================================
; Game Engine Function: sub_E5D44
; Address            : 0xE5D44 - 0xE5D7C
; =========================================================

E5D44:  PUSH            {R4,R5,R7,LR}
E5D46:  ADD             R7, SP, #8
E5D48:  SUB             SP, SP, #0x18
E5D4A:  MOV             R4, R0
E5D4C:  LDR             R0, [R0]
E5D4E:  LDR             R2, [R4,#8]
E5D50:  SUBS            R2, R2, R0
E5D52:  CMP.W           R1, R2,ASR#4
E5D56:  BLS             loc_E5D78
E5D58:  LDR             R2, [R4,#4]
E5D5A:  ADD             R5, SP, #0x20+var_1C
E5D5C:  ADD.W           R3, R4, #8
E5D60:  SUBS            R0, R2, R0
E5D62:  ASRS            R2, R0, #4
E5D64:  MOV             R0, R5
E5D66:  BL              sub_E5D88
E5D6A:  MOV             R0, R4
E5D6C:  MOV             R1, R5
E5D6E:  BL              sub_E5DD0
E5D72:  ADD             R0, SP, #0x20+var_1C
E5D74:  BL              sub_E5E26
E5D78:  ADD             SP, SP, #0x18
E5D7A:  POP             {R4,R5,R7,PC}
