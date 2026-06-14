; =========================================================
; Game Engine Function: INT123_open_feed
; Address            : 0x22FCF4 - 0x22FD60
; =========================================================

22FCF4:  PUSH            {R4,R5,R7,LR}
22FCF6:  ADD             R7, SP, #8
22FCF8:  MOV             R4, R0
22FCFA:  MOVW            R0, #0xB448
22FCFE:  LDR             R0, [R4,R0]
22FD00:  CMP             R0, #1
22FD02:  BLT             loc_22FD2E
22FD04:  MOVW            R0, #0xB33C
22FD08:  LDRB            R0, [R4,R0]
22FD0A:  LSLS            R0, R0, #0x1A
22FD0C:  ITT MI
22FD0E:  MOVMI.W         R0, #0xFFFFFFFF
22FD12:  POPMI           {R4,R5,R7,PC}
22FD14:  LDR             R0, =(off_677664 - 0x22FD20)
22FD16:  MOV.W           R2, #0x3FC
22FD1A:  LDR             R1, =(aCProjectsOswra_35 - 0x22FD22); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22FD1C:  ADD             R0, PC; off_677664
22FD1E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22FD20:  LDR             R0, [R0]
22FD22:  LDR             R0, [R0]; stream
22FD24:  BLX             fprintf
22FD28:  MOV.W           R0, #0xFFFFFFFF
22FD2C:  POP             {R4,R5,R7,PC}
22FD2E:  MOVW            R1, #0xB530
22FD32:  ADDS            R5, R4, R1
22FD34:  LDR             R0, [R4,R1]; p
22FD36:  CMP             R0, #0
22FD38:  IT NE
22FD3A:  BLXNE           free
22FD3E:  LDR             R0, =(off_685330 - 0x22FD4E)
22FD40:  MOVS            R1, #0
22FD42:  MOVW            R2, #0xB2F4
22FD46:  STR             R1, [R5]
22FD48:  STR             R1, [R4,R2]
22FD4A:  ADD             R0, PC; off_685330
22FD4C:  MOVW            R2, #0xB2E0
22FD50:  ADD.W           R1, R0, #0x60 ; '`'
22FD54:  STR             R1, [R4,R2]
22FD56:  LDR             R1, [R0,#(off_685390 - 0x685330)]; sub_23C28C
22FD58:  MOV             R0, R4
22FD5A:  BLX             R1; sub_23C28C
22FD5C:  ASRS            R0, R0, #0x1F
22FD5E:  POP             {R4,R5,R7,PC}
