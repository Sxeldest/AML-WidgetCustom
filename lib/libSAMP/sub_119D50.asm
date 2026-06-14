; =========================================================
; Game Engine Function: sub_119D50
; Address            : 0x119D50 - 0x119D76
; =========================================================

119D50:  PUSH            {R4,R6,R7,LR}
119D52:  ADD             R7, SP, #8
119D54:  SUB             SP, SP, #8
119D56:  MOV             R4, R0
119D58:  BL              sub_11B0AC
119D5C:  LDR             R0, =(unk_2635F0 - 0x119D64)
119D5E:  STR             R4, [SP,#0x10+var_C]
119D60:  ADD             R0, PC; unk_2635F0
119D62:  LDR             R0, [R0,#(dword_263600 - 0x2635F0)]
119D64:  CBZ             R0, loc_119D72
119D66:  LDR             R1, [R0]
119D68:  LDR             R2, [R1,#0x18]
119D6A:  ADD             R1, SP, #0x10+var_C
119D6C:  BLX             R2
119D6E:  ADD             SP, SP, #8
119D70:  POP             {R4,R6,R7,PC}
119D72:  BL              sub_DC92C
