; =========================================================
; Game Engine Function: sub_119D24
; Address            : 0x119D24 - 0x119D4A
; =========================================================

119D24:  PUSH            {R4,R6,R7,LR}
119D26:  ADD             R7, SP, #8
119D28:  SUB             SP, SP, #8
119D2A:  MOV             R4, R0
119D2C:  BL              sub_11AFD8
119D30:  LDR             R0, =(unk_2635D0 - 0x119D38)
119D32:  STR             R4, [SP,#0x10+var_C]
119D34:  ADD             R0, PC; unk_2635D0
119D36:  LDR             R0, [R0,#(dword_2635E0 - 0x2635D0)]
119D38:  CBZ             R0, loc_119D46
119D3A:  LDR             R1, [R0]
119D3C:  LDR             R2, [R1,#0x18]
119D3E:  ADD             R1, SP, #0x10+var_C
119D40:  BLX             R2
119D42:  ADD             SP, SP, #8
119D44:  POP             {R4,R6,R7,PC}
119D46:  BL              sub_DC92C
