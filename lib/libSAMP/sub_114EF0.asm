; =========================================================
; Game Engine Function: sub_114EF0
; Address            : 0x114EF0 - 0x114F16
; =========================================================

114EF0:  PUSH            {R4,R6,R7,LR}
114EF2:  ADD             R7, SP, #8
114EF4:  SUB             SP, SP, #8
114EF6:  MOV             R4, R0
114EF8:  BL              sub_11568C
114EFC:  LDR             R0, =(unk_263478 - 0x114F04)
114EFE:  STR             R4, [SP,#0x10+var_C]
114F00:  ADD             R0, PC; unk_263478
114F02:  LDR             R0, [R0,#(dword_263488 - 0x263478)]
114F04:  CBZ             R0, loc_114F12
114F06:  LDR             R1, [R0]
114F08:  LDR             R2, [R1,#0x18]
114F0A:  ADD             R1, SP, #0x10+var_C
114F0C:  BLX             R2
114F0E:  ADD             SP, SP, #8
114F10:  POP             {R4,R6,R7,PC}
114F12:  BL              sub_DC92C
