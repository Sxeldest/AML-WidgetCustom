; =========================================================
; Game Engine Function: sub_16FD24
; Address            : 0x16FD24 - 0x16FDA2
; =========================================================

16FD24:  PUSH            {R4-R7,LR}
16FD26:  ADD             R7, SP, #0xC
16FD28:  PUSH.W          {R11}
16FD2C:  LDR             R6, =(dword_381B58 - 0x16FD36)
16FD2E:  MOVW            R0, #0x2D20
16FD32:  ADD             R6, PC; dword_381B58
16FD34:  LDR             R4, [R6]
16FD36:  LDRB            R1, [R4,R0]
16FD38:  CBZ             R1, loc_16FD5A
16FD3A:  ADDS            R5, R4, R0
16FD3C:  LDR             R0, =(asc_8D501 - 0x16FD42); "\n" ...
16FD3E:  ADD             R0, PC; "\n"
16FD40:  BL              sub_170B40
16FD44:  LDR             R0, [R5,#4]
16FD46:  CMP             R0, #4
16FD48:  BEQ             loc_16FD60
16FD4A:  CMP             R0, #2
16FD4C:  BEQ             loc_16FD82
16FD4E:  CMP             R0, #1
16FD50:  BNE             loc_16FD88
16FD52:  LDR             R0, [R5,#8]; stream
16FD54:  BLX             fflush
16FD58:  B               loc_16FD88
16FD5A:  POP.W           {R11}
16FD5E:  POP             {R4-R7,PC}
16FD60:  LDR             R0, [R5,#0xC]
16FD62:  CMP             R0, #2
16FD64:  BLT             loc_16FD88
16FD66:  LDR             R0, [R6]
16FD68:  LDR.W           R2, [R0,#0xCC]
16FD6C:  CBZ             R2, loc_16FD88
16FD6E:  LDR             R3, [R5,#0x14]
16FD70:  LDR             R1, =(unk_381B5C - 0x16FD7C)
16FD72:  LDR.W           R0, [R0,#0xD0]
16FD76:  CMP             R3, #0
16FD78:  ADD             R1, PC; unk_381B5C
16FD7A:  IT NE
16FD7C:  MOVNE           R1, R3
16FD7E:  BLX             R2
16FD80:  B               loc_16FD88
16FD82:  LDR             R0, [R5,#8]; stream
16FD84:  BLX             fclose
16FD88:  MOVS            R0, #0
16FD8A:  STRD.W          R0, R0, [R5,#4]
16FD8E:  STRB            R0, [R5]
16FD90:  MOVW            R0, #0x2D2C
16FD94:  ADD             R0, R4
16FD96:  POP.W           {R11}
16FD9A:  POP.W           {R4-R7,LR}
16FD9E:  B.W             sub_16DC80
