; =========================================================
; Game Engine Function: sub_119CF8
; Address            : 0x119CF8 - 0x119D1E
; =========================================================

119CF8:  PUSH            {R4,R6,R7,LR}
119CFA:  ADD             R7, SP, #8
119CFC:  SUB             SP, SP, #8
119CFE:  MOV             R4, R0
119D00:  BL              sub_11AE8C
119D04:  LDR             R0, =(unk_2635B0 - 0x119D0C)
119D06:  STR             R4, [SP,#0x10+var_C]
119D08:  ADD             R0, PC; unk_2635B0
119D0A:  LDR             R0, [R0,#(dword_2635C0 - 0x2635B0)]
119D0C:  CBZ             R0, loc_119D1A
119D0E:  LDR             R1, [R0]
119D10:  LDR             R2, [R1,#0x18]
119D12:  ADD             R1, SP, #0x10+var_C
119D14:  BLX             R2
119D16:  ADD             SP, SP, #8
119D18:  POP             {R4,R6,R7,PC}
119D1A:  BL              sub_DC92C
