; =========================================================
; Game Engine Function: sub_F3E84
; Address            : 0xF3E84 - 0xF3EAE
; =========================================================

F3E84:  PUSH            {R7,LR}
F3E86:  MOV             R7, SP
F3E88:  SUB             SP, SP, #0x10
F3E8A:  LDR             R0, [R0,#0x10]
F3E8C:  STRD.W          R2, R1, [SP,#0x18+var_10]
F3E90:  STRB.W          R3, [R7,#-9]
F3E94:  CBZ             R0, loc_F3EAA
F3E96:  LDR             R1, [R0]
F3E98:  ADD             R2, SP, #0x18+var_10
F3E9A:  SUB.W           R3, R7, #9
F3E9E:  LDR.W           R12, [R1,#0x18]
F3EA2:  ADD             R1, SP, #0x18+var_C
F3EA4:  BLX             R12
F3EA6:  ADD             SP, SP, #0x10
F3EA8:  POP             {R7,PC}
F3EAA:  BL              sub_DC92C
