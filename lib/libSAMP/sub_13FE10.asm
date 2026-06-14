; =========================================================
; Game Engine Function: sub_13FE10
; Address            : 0x13FE10 - 0x13FE48
; =========================================================

13FE10:  PUSH            {R4,R6,R7,LR}
13FE12:  ADD             R7, SP, #8
13FE14:  LDR             R0, [R0,#0x1C]
13FE16:  CBZ             R0, loc_13FE2A
13FE18:  LDR             R0, =(off_23496C - 0x13FE1E)
13FE1A:  ADD             R0, PC; off_23496C
13FE1C:  LDR             R0, [R0]; dword_23DEF4
13FE1E:  LDR             R0, [R0]
13FE20:  LDRB.W          R0, [R0,#0x208]
13FE24:  CBZ             R0, loc_13FE30
13FE26:  MOVS            R0, #0xF
13FE28:  POP             {R4,R6,R7,PC}
13FE2A:  MOV.W           R0, #0x3E8
13FE2E:  POP             {R4,R6,R7,PC}
13FE30:  LDR             R0, =(off_234C28 - 0x13FE38)
13FE32:  LDR             R1, =(off_234970 - 0x13FE3A)
13FE34:  ADD             R0, PC; off_234C28
13FE36:  ADD             R1, PC; off_234970
13FE38:  LDR             R0, [R0]; dword_239040
13FE3A:  LDR             R1, [R1]; dword_23DEF0
13FE3C:  LDR             R4, [R0]
13FE3E:  LDR             R0, [R1]
13FE40:  BL              sub_F9A54
13FE44:  ADD             R0, R4
13FE46:  POP             {R4,R6,R7,PC}
