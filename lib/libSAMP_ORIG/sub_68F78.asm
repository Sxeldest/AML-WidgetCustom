; =========================================================
; Game Engine Function: sub_68F78
; Address            : 0x68F78 - 0x6904E
; =========================================================

68F78:  PUSH            {R4,R5,R7,LR}
68F7A:  ADD             R7, SP, #8
68F7C:  MOV             R4, R1
68F7E:  MOV             R5, R0
68F80:  BL              sub_68E3C
68F84:  CBZ             R0, loc_68FB6
68F86:  LDR             R1, [R5,#4]
68F88:  CMP             R4, #0
68F8A:  LDR             R2, [R5,#0xC]
68F8C:  ITE NE
68F8E:  MOVNE           R3, #1
68F90:  MOVEQ           R3, #0
68F92:  BL              sub_69070
68F96:  BL              sub_6C808
68F9A:  LDR             R0, [R0,#0x6C]
68F9C:  BL              sub_6C8B8
68FA0:  CMP             R0, #0
68FA2:  IT EQ
68FA4:  POPEQ           {R4,R5,R7,PC}
68FA6:  BL              sub_6C808
68FAA:  LDR             R0, [R0,#0x6C]
68FAC:  MOVS            R1, #0
68FAE:  POP.W           {R4,R5,R7,LR}
68FB2:  B.W             sub_6C90C
68FB6:  LDR             R0, =(byte_1A424C - 0x68FBC)
68FB8:  ADD             R0, PC; byte_1A424C
68FBA:  LDRB            R0, [R0]
68FBC:  DMB.W           ISH
68FC0:  LDR             R4, =(dword_1A4244 - 0x68FC6)
68FC2:  ADD             R4, PC; dword_1A4244
68FC4:  LSLS            R0, R0, #0x1F
68FC6:  BEQ             loc_69016
68FC8:  LDRB            R0, [R4,#(byte_1A424A - 0x1A4244)]
68FCA:  CBZ             R0, loc_69004
68FCC:  LDRB            R1, [R4]
68FCE:  EOR.W           R0, R0, #0x5A ; 'Z'
68FD2:  LDRB            R2, [R4,#(dword_1A4244+1 - 0x1A4244)]
68FD4:  STRB            R0, [R4,#(byte_1A424A - 0x1A4244)]
68FD6:  EOR.W           R1, R1, #0x5A ; 'Z'
68FDA:  LDRB            R0, [R4,#(word_1A4248 - 0x1A4244)]
68FDC:  LDRB            R3, [R4,#(dword_1A4244+2 - 0x1A4244)]
68FDE:  STRB            R1, [R4]
68FE0:  EOR.W           R1, R2, #0x5A ; 'Z'
68FE4:  LDRB            R5, [R4,#(dword_1A4244+3 - 0x1A4244)]
68FE6:  EOR.W           R0, R0, #0x5A ; 'Z'
68FEA:  LDRB.W          R12, [R4,#(word_1A4248+1 - 0x1A4244)]
68FEE:  STRB            R1, [R4,#(dword_1A4244+1 - 0x1A4244)]
68FF0:  EOR.W           R1, R3, #0x5A ; 'Z'
68FF4:  STRB            R1, [R4,#(dword_1A4244+2 - 0x1A4244)]
68FF6:  EOR.W           R1, R5, #0x5A ; 'Z'
68FFA:  STRB            R0, [R4,#(word_1A4248 - 0x1A4244)]
68FFC:  EOR.W           R0, R12, #0x5A ; 'Z'
69000:  STRB            R1, [R4,#(dword_1A4244+3 - 0x1A4244)]
69002:  STRB            R0, [R4,#(word_1A4248+1 - 0x1A4244)]
69004:  LDR             R1, =(aSampOrig - 0x6900E); "SAMP_ORIG" ...
69006:  MOVS            R0, #4
69008:  LDR             R2, =(dword_1A4244 - 0x69010)
6900A:  ADD             R1, PC; "SAMP_ORIG"
6900C:  ADD             R2, PC; dword_1A4244
6900E:  POP.W           {R4,R5,R7,LR}
69012:  B.W             sub_10C158
69016:  LDR             R0, =(byte_1A424C - 0x6901C)
69018:  ADD             R0, PC; byte_1A424C ; __guard *
6901A:  BLX             j___cxa_guard_acquire
6901E:  CMP             R0, #0
69020:  BEQ             loc_68FC8
69022:  MOVS            R1, #0x5A ; 'Z'
69024:  LDR             R0, =(sub_66E8E+1 - 0x6903C)
69026:  LDR             R2, =(off_110560 - 0x6903E)
69028:  STRB            R1, [R4,#(byte_1A424A - 0x1A4244)]
6902A:  MOVW            R1, #0x2C34
6902E:  STRH            R1, [R4,#(word_1A4248 - 0x1A4244)]
69030:  MOV             R1, #0x3F7A3514
69038:  ADD             R0, PC; sub_66E8E ; lpfunc
6903A:  ADD             R2, PC; off_110560 ; lpdso_handle
6903C:  STR             R1, [R4]
6903E:  MOV             R1, R4; obj
69040:  BLX             __cxa_atexit
69044:  LDR             R0, =(byte_1A424C - 0x6904A)
69046:  ADD             R0, PC; byte_1A424C ; __guard *
69048:  BLX             j___cxa_guard_release
6904C:  B               loc_68FC8
