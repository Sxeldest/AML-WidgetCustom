; =========================================================
; Game Engine Function: sub_F4E84
; Address            : 0xF4E84 - 0xF4EAA
; =========================================================

F4E84:  PUSH            {R4,R6,R7,LR}
F4E86:  ADD             R7, SP, #8
F4E88:  SUB             SP, SP, #8
F4E8A:  MOV             R4, R0
F4E8C:  BL              sub_F4EB0
F4E90:  LDR             R0, =(unk_240048 - 0xF4E98)
F4E92:  STR             R4, [SP,#0x10+var_C]
F4E94:  ADD             R0, PC; unk_240048
F4E96:  LDR             R0, [R0,#(dword_240058 - 0x240048)]
F4E98:  CBZ             R0, loc_F4EA6
F4E9A:  LDR             R1, [R0]
F4E9C:  LDR             R2, [R1,#0x18]
F4E9E:  ADD             R1, SP, #0x10+var_C
F4EA0:  BLX             R2
F4EA2:  ADD             SP, SP, #8
F4EA4:  POP             {R4,R6,R7,PC}
F4EA6:  BL              sub_DC92C
