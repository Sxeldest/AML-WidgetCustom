; =========================================================
; Game Engine Function: mpg123_feed
; Address            : 0x230E84 - 0x230EF0
; =========================================================

230E84:  PUSH            {R4,R5,R7,LR}
230E86:  ADD             R7, SP, #8
230E88:  MOV             R5, R0
230E8A:  CBZ             R5, loc_230ED4
230E8C:  CBZ             R2, loc_230EC6
230E8E:  CBZ             R1, loc_230ECC
230E90:  MOVW            R0, #0xB320
230E94:  ADD             R0, R5; int
230E96:  BL              sub_2346FC
230E9A:  CBZ             R0, loc_230EDC
230E9C:  MOVW            R0, #0xB33C
230EA0:  LDRB            R0, [R5,R0]
230EA2:  LSLS            R0, R0, #0x1A
230EA4:  BMI             loc_230ED4
230EA6:  LDR             R0, =(off_677664 - 0x230EB6)
230EA8:  MOVW            R2, #0x29A
230EAC:  LDR             R1, =(aCProjectsOswra_44 - 0x230EBC); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230EAE:  MOV.W           R3, #0xFFFFFFFF
230EB2:  ADD             R0, PC; off_677664
230EB4:  MOV.W           R4, #0xFFFFFFFF
230EB8:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230EBA:  LDR             R0, [R0]
230EBC:  LDR             R0, [R0]; stream
230EBE:  BLX             fprintf
230EC2:  MOV             R0, R4
230EC4:  POP             {R4,R5,R7,PC}
230EC6:  MOVS            R4, #0
230EC8:  MOV             R0, R4
230ECA:  POP             {R4,R5,R7,PC}
230ECC:  MOVW            R0, #0xB468
230ED0:  MOVS            R1, #0x1F
230ED2:  STR             R1, [R5,R0]
230ED4:  MOV.W           R4, #0xFFFFFFFF
230ED8:  MOV             R0, R4
230EDA:  POP             {R4,R5,R7,PC}
230EDC:  MOVW            R0, #0xB468
230EE0:  MOVS            R4, #0
230EE2:  LDR             R1, [R5,R0]
230EE4:  CMP             R1, #0x12
230EE6:  BNE             loc_230ED8
230EE8:  ADD             R0, R5
230EEA:  STR             R4, [R0]
230EEC:  MOV             R0, R4
230EEE:  POP             {R4,R5,R7,PC}
