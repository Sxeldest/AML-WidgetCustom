; =========================================================
; Game Engine Function: sub_10FDC4
; Address            : 0x10FDC4 - 0x10FDEA
; =========================================================

10FDC4:  PUSH            {R4,R6,R7,LR}
10FDC6:  ADD             R7, SP, #8
10FDC8:  SUB             SP, SP, #8
10FDCA:  MOV             R4, R0
10FDCC:  BL              sub_10FFF4
10FDD0:  LDR             R0, =(unk_263380 - 0x10FDD8)
10FDD2:  STR             R4, [SP,#0x10+var_C]
10FDD4:  ADD             R0, PC; unk_263380
10FDD6:  LDR             R0, [R0,#(dword_263390 - 0x263380)]
10FDD8:  CBZ             R0, loc_10FDE6
10FDDA:  LDR             R1, [R0]
10FDDC:  LDR             R2, [R1,#0x18]
10FDDE:  ADD             R1, SP, #0x10+var_C
10FDE0:  BLX             R2
10FDE2:  ADD             SP, SP, #8
10FDE4:  POP             {R4,R6,R7,PC}
10FDE6:  BL              sub_DC92C
