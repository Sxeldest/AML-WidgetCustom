; =========================================================
; Game Engine Function: mpg123_length
; Address            : 0x231DB0 - 0x23200A
; =========================================================

231DB0:  PUSH            {R4-R7,LR}
231DB2:  ADD             R7, SP, #0xC
231DB4:  PUSH.W          {R11}
231DB8:  MOV             R6, R0
231DBA:  CMP             R6, #0
231DBC:  BEQ.W           loc_231F36
231DC0:  MOVW            R0, #0xB2C8
231DC4:  LDR             R0, [R6,R0]
231DC6:  CBZ             R0, loc_231E02
231DC8:  MOVW            R0, #0x936C
231DCC:  LDR             R5, [R6,R0]
231DCE:  CMP.W           R5, #0xFFFFFFFF
231DD2:  BLE             loc_231E14
231DD4:  MOVW            R0, #0x92D0
231DD8:  LDR             R3, [R6,R0]
231DDA:  CMP             R3, #3
231DDC:  ITTT CC
231DDE:  ASRCC.W         R0, R5, R3
231DE2:  POPCC.W         {R11}
231DE6:  POPCC           {R4-R7,PC}
231DE8:  BNE             loc_231E52
231DEA:  MOVW            R0, #0x92D8
231DEE:  LDR             R0, [R6,R0]
231DF0:  CMP             R0, #1
231DF2:  BEQ             loc_231E36
231DF4:  CMP             R0, #2
231DF6:  BNE             loc_231E40
231DF8:  MOV.W           R2, #0x480
231DFC:  CMP             R5, #1
231DFE:  BGE             loc_231EDA
231E00:  B               loc_231E66
231E02:  LDR             R0, [R6]
231E04:  CMP             R0, #0
231E06:  BEQ             loc_231DC8
231E08:  MOV             R0, R6
231E0A:  BL              sub_2309D2
231E0E:  CMP             R0, #0
231E10:  BGE             loc_231DC8
231E12:  B               loc_231F12
231E14:  MOVW            R0, #0x9368
231E18:  LDR             R0, [R6,R0]
231E1A:  CMP             R0, #1
231E1C:  BLT             loc_231E6E
231E1E:  MOVW            R1, #0x92D8
231E22:  LDR             R1, [R6,R1]
231E24:  CMP             R1, #1
231E26:  BEQ             loc_231F18
231E28:  CMP             R1, #2
231E2A:  BNE             loc_231F22
231E2C:  MOV.W           R1, #0x480
231E30:  MUL.W           R5, R1, R0
231E34:  B               loc_231DD4
231E36:  MOV.W           R2, #0x180
231E3A:  CMP             R5, #1
231E3C:  BGE             loc_231EDA
231E3E:  B               loc_231E66
231E40:  MOVW            R0, #0x92C8
231E44:  LDR             R0, [R6,R0]
231E46:  CBZ             R0, loc_231EC4
231E48:  MOV.W           R2, #0x240
231E4C:  CMP             R5, #1
231E4E:  BGE             loc_231EDA
231E50:  B               loc_231E66
231E52:  LDR             R0, =(off_677664 - 0x231E5E)
231E54:  MOV.W           R2, #0x2D4
231E58:  LDR             R1, =(aCProjectsOswra_5 - 0x231E60); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231E5A:  ADD             R0, PC; off_677664
231E5C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231E5E:  LDR             R0, [R0]
231E60:  LDR             R0, [R0]; stream
231E62:  BLX             fprintf
231E66:  MOVS            R0, #0
231E68:  POP.W           {R11}
231E6C:  POP             {R4-R7,PC}
231E6E:  MOVW            R0, #0xB2E4
231E72:  LDR             R0, [R6,R0]
231E74:  CMP             R0, #1
231E76:  BLT             loc_231F34
231E78:  MOVW            R2, #0x9370
231E7C:  MOVW            R1, #0x92D8
231E80:  ADD             R2, R6
231E82:  LDR             R1, [R6,R1]
231E84:  VLDR            D16, [R2]
231E88:  VCMP.F64        D16, #0.0
231E8C:  VMRS            APSR_nzcv, FPSCR
231E90:  BNE.W           loc_231FBC
231E94:  SUBS            R2, R1, #2
231E96:  CMP             R2, #2
231E98:  BCS             loc_231F66
231E9A:  MOVW            R2, #0x92C8
231E9E:  LDR.W           R12, =(unk_5F1040 - 0x231EAC)
231EA2:  LDR             R2, [R6,R2]
231EA4:  MOVW            R4, #0x92E4
231EA8:  ADD             R12, PC; unk_5F1040
231EAA:  LDR             R4, [R6,R4]
231EAC:  ADD.W           R3, R2, R2,LSL#1
231EB0:  VLDR            D16, =144000.0
231EB4:  ADD.W           R3, R12, R3,LSL#6
231EB8:  ADD.W           R3, R3, R1,LSL#6
231EBC:  ADD.W           R3, R3, R4,LSL#2
231EC0:  SUBS            R3, #0x40 ; '@'
231EC2:  B               loc_231F8C
231EC4:  MOVW            R0, #0x92CC
231EC8:  MOV.W           R2, #0x480
231ECC:  LDR             R0, [R6,R0]
231ECE:  CMP             R0, #0
231ED0:  IT NE
231ED2:  MOVNE.W         R2, #0x240
231ED6:  CMP             R5, #1
231ED8:  BLT             loc_231E66
231EDA:  MOVW            R0, #0x9190
231EDE:  MOV.W           R4, #0x4000
231EE2:  LDR.W           LR, [R6,R0]
231EE6:  MOVS            R0, #0
231EE8:  MOVW            R12, #0x7FFF
231EEC:  CMP             R5, R2
231EEE:  MOV             R1, R5
231EF0:  IT GT
231EF2:  MOVGT           R1, R2
231EF4:  MLA.W           R4, R1, LR, R4
231EF8:  SUBS            R5, R5, R1
231EFA:  CMP             R5, #0
231EFC:  MOV.W           R6, R4,ASR#31
231F00:  ADD.W           R6, R4, R6,LSR#17
231F04:  BIC.W           R3, R6, R12
231F08:  SUB.W           R4, R4, R3
231F0C:  ADD.W           R0, R0, R6,ASR#15
231F10:  BGT             loc_231EEC
231F12:  POP.W           {R11}
231F16:  POP             {R4-R7,PC}
231F18:  MOV.W           R1, #0x180
231F1C:  MUL.W           R5, R1, R0
231F20:  B               loc_231DD4
231F22:  MOVW            R1, #0x92C8
231F26:  LDR             R1, [R6,R1]
231F28:  CBZ             R1, loc_231F40
231F2A:  MOV.W           R1, #0x240
231F2E:  MUL.W           R5, R1, R0
231F32:  B               loc_231DD4
231F34:  CBZ             R0, loc_231F58
231F36:  MOV.W           R0, #0xFFFFFFFF
231F3A:  POP.W           {R11}
231F3E:  POP             {R4-R7,PC}
231F40:  MOVW            R1, #0x92CC
231F44:  LDR             R2, [R6,R1]
231F46:  MOV.W           R1, #0x480
231F4A:  CMP             R2, #0
231F4C:  IT NE
231F4E:  MOVNE.W         R1, #0x240
231F52:  MUL.W           R5, R1, R0
231F56:  B               loc_231DD4
231F58:  MOV             R0, R6
231F5A:  POP.W           {R11}
231F5E:  POP.W           {R4-R7,LR}
231F62:  B.W             mpg123_tell
231F66:  CMP             R1, #1
231F68:  BNE             loc_231FB8
231F6A:  MOVW            R2, #0x92C8
231F6E:  LDR.W           R12, =(unk_5F1040 - 0x231F7E)
231F72:  LDR             R2, [R6,R2]
231F74:  MOVW            R4, #0x92E4
231F78:  LDR             R4, [R6,R4]
231F7A:  ADD             R12, PC; unk_5F1040
231F7C:  ADD.W           R3, R2, R2,LSL#1
231F80:  VLDR            D16, =48000.0
231F84:  ADD.W           R3, R12, R3,LSL#6
231F88:  ADD.W           R3, R3, R4,LSL#2
231F8C:  VLDR            S0, [R3]
231F90:  MOVW            R4, #0x92E8
231F94:  LDR             R3, =(unk_5F11C0 - 0x231FA0)
231F96:  VCVT.F64.S32    D17, S0
231F9A:  LDR             R4, [R6,R4]
231F9C:  ADD             R3, PC; unk_5F11C0
231F9E:  LDR.W           R3, [R3,R4,LSL#2]
231FA2:  LSL.W           R2, R3, R2
231FA6:  VMUL.F64        D16, D16, D17
231FAA:  VMOV            S0, R2
231FAE:  VCVT.F64.S32    D17, S0
231FB2:  VDIV.F64        D16, D16, D17
231FB6:  B               loc_231FBC
231FB8:  VMOV.F64        D16, #1.0
231FBC:  VMOV            S0, R0
231FC0:  CMP             R1, #1
231FC2:  VCVT.F64.S32    D17, S0
231FC6:  VDIV.F64        D16, D17, D16
231FCA:  BEQ             loc_231FD6
231FCC:  CMP             R1, #2
231FCE:  BNE             loc_231FDC
231FD0:  VLDR            D17, =1152.0
231FD4:  B               loc_231FFC
231FD6:  VLDR            D17, =384.0
231FDA:  B               loc_231FFC
231FDC:  MOVW            R0, #0x92C8
231FE0:  LDR             R0, [R6,R0]
231FE2:  CBZ             R0, loc_231FEA
231FE4:  VLDR            D17, =576.0
231FE8:  B               loc_231FFC
231FEA:  MOVW            R0, #0x92CC
231FEE:  ADR             R1, dword_232038
231FF0:  LDR             R0, [R6,R0]
231FF2:  CMP             R0, #0
231FF4:  IT NE
231FF6:  ADDNE           R1, #8
231FF8:  VLDR            D17, [R1]
231FFC:  VMUL.F64        D16, D16, D17
232000:  VCVT.S32.F64    S0, D16
232004:  VMOV            R5, S0
232008:  B               loc_231DD4
