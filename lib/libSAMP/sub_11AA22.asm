; =========================================================
; Game Engine Function: sub_11AA22
; Address            : 0x11AA22 - 0x11AA42
; =========================================================

11AA22:  PUSH            {R7,LR}
11AA24:  MOV             R7, SP
11AA26:  SUB             SP, SP, #8
11AA28:  LDR             R0, [R0,#0x10]
11AA2A:  STR             R2, [SP,#0x10+var_10]
11AA2C:  STR             R1, [SP,#0x10+var_C]
11AA2E:  CBZ             R0, loc_11AA3E
11AA30:  LDR             R1, [R0]
11AA32:  MOV             R2, SP
11AA34:  LDR             R3, [R1,#0x18]
11AA36:  ADD             R1, SP, #0x10+var_C
11AA38:  BLX             R3
11AA3A:  ADD             SP, SP, #8
11AA3C:  POP             {R7,PC}
11AA3E:  BL              sub_DC92C
