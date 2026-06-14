; =========================================================
; Game Engine Function: sub_690B8
; Address            : 0x690B8 - 0x6916C
; =========================================================

690B8:  PUSH            {R4,R5,R7,LR}
690BA:  ADD             R7, SP, #8
690BC:  MOV             R4, R1
690BE:  MOV             R5, R0
690C0:  BL              sub_68E3C
690C4:  CBZ             R0, loc_690D4
690C6:  LDR             R1, [R5,#4]
690C8:  MOV             R3, R4
690CA:  LDR             R2, [R5,#0x10]
690CC:  POP.W           {R4,R5,R7,LR}
690D0:  B.W             sub_69070
690D4:  LDR             R0, =(byte_1A4258 - 0x690DA)
690D6:  ADD             R0, PC; byte_1A4258
690D8:  LDRB            R0, [R0]
690DA:  DMB.W           ISH
690DE:  LDR             R4, =(dword_1A4250 - 0x690E4)
690E0:  ADD             R4, PC; dword_1A4250
690E2:  LSLS            R0, R0, #0x1F
690E4:  BEQ             loc_69134
690E6:  LDRB            R0, [R4,#(byte_1A4256 - 0x1A4250)]
690E8:  CBZ             R0, loc_69122
690EA:  LDRB            R1, [R4]
690EC:  EOR.W           R0, R0, #0x5A ; 'Z'
690F0:  LDRB            R2, [R4,#(dword_1A4250+1 - 0x1A4250)]
690F2:  STRB            R0, [R4,#(byte_1A4256 - 0x1A4250)]
690F4:  EOR.W           R1, R1, #0x5A ; 'Z'
690F8:  LDRB            R0, [R4,#(word_1A4254 - 0x1A4250)]
690FA:  LDRB            R3, [R4,#(dword_1A4250+2 - 0x1A4250)]
690FC:  STRB            R1, [R4]
690FE:  EOR.W           R1, R2, #0x5A ; 'Z'
69102:  LDRB            R5, [R4,#(dword_1A4250+3 - 0x1A4250)]
69104:  EOR.W           R0, R0, #0x5A ; 'Z'
69108:  LDRB.W          R12, [R4,#(word_1A4254+1 - 0x1A4250)]
6910C:  STRB            R1, [R4,#(dword_1A4250+1 - 0x1A4250)]
6910E:  EOR.W           R1, R3, #0x5A ; 'Z'
69112:  STRB            R1, [R4,#(dword_1A4250+2 - 0x1A4250)]
69114:  EOR.W           R1, R5, #0x5A ; 'Z'
69118:  STRB            R0, [R4,#(word_1A4254 - 0x1A4250)]
6911A:  EOR.W           R0, R12, #0x5A ; 'Z'
6911E:  STRB            R1, [R4,#(dword_1A4250+3 - 0x1A4250)]
69120:  STRB            R0, [R4,#(word_1A4254+1 - 0x1A4250)]
69122:  LDR             R1, =(aSampOrig - 0x6912C); "SAMP_ORIG" ...
69124:  MOVS            R0, #4
69126:  LDR             R2, =(dword_1A4250 - 0x6912E)
69128:  ADD             R1, PC; "SAMP_ORIG"
6912A:  ADD             R2, PC; dword_1A4250
6912C:  POP.W           {R4,R5,R7,LR}
69130:  B.W             sub_10C158
69134:  LDR             R0, =(byte_1A4258 - 0x6913A)
69136:  ADD             R0, PC; byte_1A4258 ; __guard *
69138:  BLX             j___cxa_guard_acquire
6913C:  CMP             R0, #0
6913E:  BEQ             loc_690E6
69140:  MOVS            R1, #0x5A ; 'Z'
69142:  LDR             R0, =(sub_66E8E+1 - 0x6915A)
69144:  LDR             R2, =(off_110560 - 0x6915C)
69146:  STRB            R1, [R4,#(byte_1A4256 - 0x1A4250)]
69148:  MOVW            R1, #0x2C34
6914C:  STRH            R1, [R4,#(word_1A4254 - 0x1A4250)]
6914E:  MOV             R1, #0x3F7A3514
69156:  ADD             R0, PC; sub_66E8E ; lpfunc
69158:  ADD             R2, PC; off_110560 ; lpdso_handle
6915A:  STR             R1, [R4]
6915C:  MOV             R1, R4; obj
6915E:  BLX             __cxa_atexit
69162:  LDR             R0, =(byte_1A4258 - 0x69168)
69164:  ADD             R0, PC; byte_1A4258 ; __guard *
69166:  BLX             j___cxa_guard_release
6916A:  B               loc_690E6
