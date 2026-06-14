; =========================================================
; Game Engine Function: sub_181D6C
; Address            : 0x181D6C - 0x181D9A
; =========================================================

181D6C:  PUSH            {R4,R6,R7,LR}
181D6E:  ADD             R7, SP, #8
181D70:  SUB             SP, SP, #0xA0
181D72:  MOV             R4, SP
181D74:  MOVS            R1, #0xA0; n
181D76:  MOV             R0, R4; int
181D78:  BLX             sub_22178C
181D7C:  LDR             R0, =(off_234E88 - 0x181D84)
181D7E:  MOV             R1, R4
181D80:  ADD             R0, PC; off_234E88
181D82:  LDR             R0, [R0]; unk_382751
181D84:  BL              sub_18CDAE
181D88:  MOV.W           R0, #0xFFFFFFFF
181D8C:  LDRB.W          R1, [R4],#0x10
181D90:  ADDS            R0, #1
181D92:  CMP             R1, #0
181D94:  BNE             loc_181D8C
181D96:  ADD             SP, SP, #0xA0
181D98:  POP             {R4,R6,R7,PC}
