; =========================================================
; Game Engine Function: ReleaseALFilters
; Address            : 0x254F88 - 0x255134
; =========================================================

254F88:  PUSH            {R4-R7,LR}
254F8A:  ADD             R7, SP, #0xC
254F8C:  PUSH.W          {R8-R11}
254F90:  SUB             SP, SP, #0x14
254F92:  LDR.W           R1, [R0,#0x8C]
254F96:  CMP             R1, #1
254F98:  BLT.W           loc_25512C
254F9C:  LDR             R2, =(dword_6D681C - 0x254FAC)
254F9E:  MOVS            R6, #0
254FA0:  LDR             R4, =(dword_6D681C - 0x254FB2)
254FA2:  MOVS            R5, #1
254FA4:  LDR.W           R8, =(dword_6D681C - 0x254FB8)
254FA8:  ADD             R2, PC; dword_6D681C
254FAA:  LDR.W           R10, =(dword_6D681C - 0x254FBE)
254FAE:  ADD             R4, PC; dword_6D681C
254FB0:  LDR.W           R9, =(dword_6D681C - 0x254FC0)
254FB4:  ADD             R8, PC; dword_6D681C
254FB6:  LDR.W           R11, =(dword_6D681C - 0x254FC4)
254FBA:  ADD             R10, PC; dword_6D681C
254FBC:  ADD             R9, PC; dword_6D681C
254FBE:  MOVS            R3, #0
254FC0:  ADD             R11, PC; dword_6D681C
254FC2:  STR             R0, [SP,#0x30+var_2C]
254FC4:  LDR.W           R0, [R0,#0x88]
254FC8:  STR             R3, [SP,#0x30+var_20]
254FCA:  ADD.W           R0, R0, R3,LSL#3
254FCE:  LDR             R1, [R0,#4]
254FD0:  STR             R6, [R0,#4]
254FD2:  STR             R1, [SP,#0x30+p]
254FD4:  LDR             R0, [R1,#0x2C]
254FD6:  STR             R0, [SP,#0x30+var_28]
254FD8:  DMB.W           ISH
254FDC:  LDREX.W         R0, [R2,#0xC]
254FE0:  STREX.W         R1, R5, [R2,#0xC]
254FE4:  CMP             R1, #0
254FE6:  BNE             loc_254FDC
254FE8:  B               loc_254FFE
254FEA:  BLX             sched_yield
254FEE:  DMB.W           ISH
254FF2:  LDREX.W         R0, [R4,#0xC]
254FF6:  STREX.W         R1, R5, [R4,#0xC]
254FFA:  CMP             R1, #0
254FFC:  BNE             loc_254FF2
254FFE:  CMP             R0, #1
255000:  DMB.W           ISH
255004:  BEQ             loc_254FEA
255006:  LDR             R2, =(dword_6D681C - 0x255010)
255008:  DMB.W           ISH
25500C:  ADD             R2, PC; dword_6D681C
25500E:  LDREX.W         R0, [R2,#8]
255012:  STREX.W         R1, R5, [R2,#8]
255016:  CMP             R1, #0
255018:  BNE             loc_25500E
25501A:  B               loc_255030
25501C:  BLX             sched_yield
255020:  DMB.W           ISH
255024:  LDREX.W         R0, [R8,#8]
255028:  STREX.W         R1, R5, [R8,#8]
25502C:  CMP             R1, #0
25502E:  BNE             loc_255024
255030:  CMP             R0, #1
255032:  DMB.W           ISH
255036:  BEQ             loc_25501C
255038:  LDR             R3, =(dword_6D681C - 0x255042)
25503A:  DMB.W           ISH
25503E:  ADD             R3, PC; dword_6D681C
255040:  LDREX.W         R0, [R3]
255044:  ADDS            R1, R0, #1
255046:  STREX.W         R2, R1, [R3]
25504A:  CMP             R2, #0
25504C:  BNE             loc_255040
25504E:  CMP             R0, #0
255050:  DMB.W           ISH
255054:  BNE             loc_255088
255056:  LDR             R2, =(dword_6D681C - 0x255060)
255058:  DMB.W           ISH
25505C:  ADD             R2, PC; dword_6D681C
25505E:  LDREX.W         R0, [R2,#0x10]
255062:  STREX.W         R1, R5, [R2,#0x10]
255066:  CMP             R1, #0
255068:  BNE             loc_25505E
25506A:  B               loc_255080
25506C:  BLX             sched_yield
255070:  DMB.W           ISH
255074:  LDREX.W         R0, [R10,#0x10]
255078:  STREX.W         R1, R5, [R10,#0x10]
25507C:  CMP             R1, #0
25507E:  BNE             loc_255074
255080:  CMP             R0, #1
255082:  DMB.W           ISH
255086:  BEQ             loc_25506C
255088:  LDR             R1, =(dword_6D681C - 0x255092)
25508A:  DMB.W           ISH
25508E:  ADD             R1, PC; dword_6D681C
255090:  LDREX.W         R0, [R1,#8]
255094:  STREX.W         R0, R6, [R1,#8]
255098:  CMP             R0, #0
25509A:  BNE             loc_255090
25509C:  DMB.W           ISH
2550A0:  DMB.W           ISH
2550A4:  LDREX.W         R0, [R9,#0xC]
2550A8:  STREX.W         R0, R6, [R9,#0xC]
2550AC:  CMP             R0, #0
2550AE:  BNE             loc_2550A4
2550B0:  LDR             R0, =(dword_6D6830 - 0x2550BA)
2550B2:  DMB.W           ISH
2550B6:  ADD             R0, PC; dword_6D6830
2550B8:  LDR             R1, [R0]
2550BA:  LDR             R0, [SP,#0x30+var_28]
2550BC:  SUBS            R0, #1
2550BE:  CMP             R0, R1
2550C0:  BCS             loc_2550E0
2550C2:  LDR             R1, =(dword_6D6834 - 0x2550C8)
2550C4:  ADD             R1, PC; dword_6D6834
2550C6:  LDR             R1, [R1]
2550C8:  DMB.W           ISH
2550CC:  ADD.W           R0, R1, R0,LSL#2
2550D0:  LDREX.W         R1, [R0]
2550D4:  STREX.W         R1, R6, [R0]
2550D8:  CMP             R1, #0
2550DA:  BNE             loc_2550D0
2550DC:  DMB.W           ISH
2550E0:  DMB.W           ISH
2550E4:  LDREX.W         R0, [R11]
2550E8:  SUBS            R1, R0, #1
2550EA:  STREX.W         R2, R1, [R11]
2550EE:  CMP             R2, #0
2550F0:  BNE             loc_2550E4
2550F2:  CMP             R0, #1
2550F4:  DMB.W           ISH
2550F8:  BNE             loc_255112
2550FA:  LDR             R1, =(dword_6D681C - 0x255104)
2550FC:  DMB.W           ISH
255100:  ADD             R1, PC; dword_6D681C
255102:  LDREX.W         R0, [R1,#0x10]
255106:  STREX.W         R0, R6, [R1,#0x10]
25510A:  CMP             R0, #0
25510C:  BNE             loc_255102
25510E:  DMB.W           ISH
255112:  LDR             R0, [SP,#0x30+p]; p
255114:  BLX             free
255118:  LDR             R0, [SP,#0x30+var_2C]
25511A:  LDR             R3, [SP,#0x30+var_20]
25511C:  LDR             R2, =(dword_6D681C - 0x255128)
25511E:  LDR.W           R1, [R0,#0x8C]
255122:  ADDS            R3, #1
255124:  ADD             R2, PC; dword_6D681C
255126:  CMP             R3, R1
255128:  BLT.W           loc_254FC4
25512C:  ADD             SP, SP, #0x14
25512E:  POP.W           {R8-R11}
255132:  POP             {R4-R7,PC}
