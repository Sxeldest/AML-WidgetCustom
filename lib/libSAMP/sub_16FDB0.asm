; =========================================================
; Game Engine Function: sub_16FDB0
; Address            : 0x16FDB0 - 0x16FE12
; =========================================================

16FDB0:  PUSH            {R4-R7,LR}
16FDB2:  ADD             R7, SP, #0xC
16FDB4:  PUSH.W          {R11}
16FDB8:  MOV             R4, R0
16FDBA:  LDR             R0, =(dword_381B58 - 0x16FDC4)
16FDBC:  MOVW            R2, #0x1978
16FDC0:  ADD             R0, PC; dword_381B58
16FDC2:  LDR             R0, [R0]
16FDC4:  ADDS            R6, R0, R2
16FDC6:  LDR             R1, [R0,R2]
16FDC8:  LDR             R0, [R6,#8]
16FDCA:  ADD.W           R0, R0, R1,LSL#2
16FDCE:  LDR.W           R2, [R0,#-4]
16FDD2:  CMP             R2, R4
16FDD4:  BEQ             loc_16FE0C
16FDD6:  CMP             R1, #2
16FDD8:  BLT             loc_16FE0C
16FDDA:  SUBS            R1, #1
16FDDC:  MOVS            R2, #0
16FDDE:  ADDS            R3, R0, R2
16FDE0:  LDR.W           R5, [R3,#-8]
16FDE4:  CMP             R5, R4
16FDE6:  BEQ             loc_16FDF2
16FDE8:  SUBS            R1, #1
16FDEA:  SUBS            R2, #4
16FDEC:  CMP             R1, #0
16FDEE:  BGT             loc_16FDDE
16FDF0:  B               loc_16FE0C
16FDF2:  SUB.W           R0, R3, #8; dest
16FDF6:  SUBS            R1, R3, #4; src
16FDF8:  RSB.W           R2, R2, #4; n
16FDFC:  BLX             j_memmove
16FE00:  LDR             R0, [R6]
16FE02:  LDR             R1, [R6,#8]
16FE04:  ADD.W           R0, R1, R0,LSL#2
16FE08:  STR.W           R4, [R0,#-4]
16FE0C:  POP.W           {R11}
16FE10:  POP             {R4-R7,PC}
