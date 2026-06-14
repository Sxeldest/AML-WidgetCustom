; =========================================================
; Game Engine Function: sub_F2F2C
; Address            : 0xF2F2C - 0xF2F4C
; =========================================================

F2F2C:  PUSH            {R7,LR}
F2F2E:  MOV             R7, SP
F2F30:  SUB             SP, SP, #8
F2F32:  LDR             R0, [R0,#0x10]
F2F34:  STR             R2, [SP,#0x10+var_10]
F2F36:  STR             R1, [SP,#0x10+var_C]
F2F38:  CBZ             R0, loc_F2F48
F2F3A:  LDR             R1, [R0]
F2F3C:  MOV             R2, SP
F2F3E:  LDR             R3, [R1,#0x18]
F2F40:  ADD             R1, SP, #0x10+var_C
F2F42:  BLX             R3
F2F44:  ADD             SP, SP, #8
F2F46:  POP             {R7,PC}
F2F48:  BL              sub_DC92C
