; =========================================================
; Game Engine Function: sub_170B40
; Address            : 0x170B40 - 0x170B8C
; =========================================================

170B40:  SUB             SP, SP, #0xC
170B42:  PUSH            {R7,LR}
170B44:  MOV             R7, SP
170B46:  SUB             SP, SP, #4
170B48:  MOV             R12, R0
170B4A:  LDR             R0, =(dword_381B58 - 0x170B52)
170B4C:  STR             R3, [R7,#0x10]
170B4E:  ADD             R0, PC; dword_381B58
170B50:  STRD.W          R1, R2, [R7,#8]
170B54:  LDR             R3, [R0]
170B56:  MOVW            R0, #0x2D20
170B5A:  LDRB            R1, [R3,R0]
170B5C:  CBZ             R1, loc_170B82
170B5E:  ADD             R0, R3
170B60:  ADD.W           R1, R7, #8
170B64:  STR             R1, [SP,#0x18+arg]
170B66:  LDR             R0, [R0,#8]; s
170B68:  CBZ             R0, loc_170B74
170B6A:  LDR             R2, [SP,#0x18+arg]; arg
170B6C:  MOV             R1, R12; format
170B6E:  BLX             vfprintf
170B72:  B               loc_170B82
170B74:  MOVW            R0, #0x2D2C
170B78:  LDR             R2, [SP,#0x18+arg]; arg
170B7A:  ADD             R0, R3; int
170B7C:  MOV             R1, R12; format
170B7E:  BL              sub_165A70
170B82:  ADD             SP, SP, #4
170B84:  POP.W           {R7,LR}
170B88:  ADD             SP, SP, #0xC
170B8A:  BX              LR
