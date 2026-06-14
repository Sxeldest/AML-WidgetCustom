; =========================================================
; Game Engine Function: sub_147DA0
; Address            : 0x147DA0 - 0x147E1E
; =========================================================

147DA0:  PUSH            {R4-R7,LR}
147DA2:  ADD             R7, SP, #0xC
147DA4:  PUSH.W          {R11}
147DA8:  MOV             R4, R0
147DAA:  LDR             R0, =(off_234970 - 0x147DB2)
147DAC:  MOV             R5, R1
147DAE:  ADD             R0, PC; off_234970
147DB0:  LDR             R0, [R0]; dword_23DEF0
147DB2:  LDR             R0, [R0]
147DB4:  BL              sub_E35A0
147DB8:  MOV             R1, R5
147DBA:  BL              sub_105696
147DBE:  CBZ             R0, loc_147E18
147DC0:  VLDR            D16, [R0,#8]
147DC4:  LDR             R1, =(off_234A24 - 0x147DCC)
147DC6:  LDR             R2, [R0,#0x10]
147DC8:  ADD             R1, PC; off_234A24
147DCA:  STR             R2, [R4,#0x18]
147DCC:  VSTR            D16, [R4,#0x10]
147DD0:  LDR             R6, [R1]; dword_23DEEC
147DD2:  VLDR            D16, [R0,#0x14]
147DD6:  LDR             R2, [R0,#0x1C]
147DD8:  STR             R2, [R4,#0x24]
147DDA:  VSTR            D16, [R4,#0x1C]
147DDE:  VLDR            D16, [R0,#0x20]
147DE2:  LDR             R1, [R6]
147DE4:  LDR             R0, [R0,#0x28]
147DE6:  STR             R0, [R4,#0x30]
147DE8:  VSTR            D16, [R4,#0x28]
147DEC:  LDR             R0, [R1,#0x78]
147DEE:  MOVS            R1, #1
147DF0:  STR             R1, [R4]
147DF2:  ADD.W           R1, R4, #0x10
147DF6:  STR             R5, [R4,#4]
147DF8:  BL              sub_134D18
147DFC:  LDR             R0, [R6]
147DFE:  LDR.W           R4, [R0,#0x84]
147E02:  LDRB.W          R0, [R4,#0x50]
147E06:  CBZ             R0, loc_147E12
147E08:  LDR             R0, [R4]
147E0A:  MOVS            R1, #0
147E0C:  LDR             R2, [R0,#0x24]
147E0E:  MOV             R0, R4
147E10:  BLX             R2
147E12:  MOVS            R0, #0
147E14:  STRB.W          R0, [R4,#0x50]
147E18:  POP.W           {R11}
147E1C:  POP             {R4-R7,PC}
