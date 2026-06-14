; =========================================================
; Game Engine Function: sub_6209C
; Address            : 0x6209C - 0x621A4
; =========================================================

6209C:  PUSH            {R4-R7,LR}
6209E:  ADD             R7, SP, #0xC
620A0:  PUSH.W          {R8}
620A4:  LDR             R0, =(byte_1A3ADC - 0x620AA)
620A6:  ADD             R0, PC; byte_1A3ADC
620A8:  LDRB            R0, [R0]
620AA:  DMB.W           ISH
620AE:  LDR             R4, =(dword_1A3ACC - 0x620B4)
620B0:  ADD             R4, PC; dword_1A3ACC
620B2:  LSLS            R0, R0, #0x1F
620B4:  BEQ             loc_62158
620B6:  LDRB            R0, [R4,#(byte_1A3ADA - 0x1A3ACC)]
620B8:  CBZ             R0, loc_62136
620BA:  LDRB            R1, [R4]
620BC:  EOR.W           R0, R0, #0x5A ; 'Z'
620C0:  LDRB            R2, [R4,#(dword_1A3ACC+1 - 0x1A3ACC)]
620C2:  EOR.W           R1, R1, #0x5A ; 'Z'
620C6:  LDRB            R3, [R4,#(dword_1A3ACC+2 - 0x1A3ACC)]
620C8:  STRB            R1, [R4]
620CA:  EOR.W           R1, R2, #0x5A ; 'Z'
620CE:  LDRB.W          R12, [R4,#(dword_1A3ACC+3 - 0x1A3ACC)]
620D2:  STRB            R1, [R4,#(dword_1A3ACC+1 - 0x1A3ACC)]
620D4:  EOR.W           R1, R3, #0x5A ; 'Z'
620D8:  LDRB            R5, [R4,#(dword_1A3AD0 - 0x1A3ACC)]
620DA:  STRB            R1, [R4,#(dword_1A3ACC+2 - 0x1A3ACC)]
620DC:  EOR.W           R1, R12, #0x5A ; 'Z'
620E0:  LDRB.W          LR, [R4,#(dword_1A3AD0+1 - 0x1A3ACC)]
620E4:  STRB            R1, [R4,#(dword_1A3ACC+3 - 0x1A3ACC)]
620E6:  EOR.W           R1, R5, #0x5A ; 'Z'
620EA:  LDRB.W          R8, [R4,#(dword_1A3AD0+2 - 0x1A3ACC)]
620EE:  STRB            R1, [R4,#(dword_1A3AD0 - 0x1A3ACC)]
620F0:  EOR.W           R1, LR, #0x5A ; 'Z'
620F4:  LDRB            R2, [R4,#(dword_1A3AD0+3 - 0x1A3ACC)]
620F6:  STRB            R1, [R4,#(dword_1A3AD0+1 - 0x1A3ACC)]
620F8:  EOR.W           R1, R8, #0x5A ; 'Z'
620FC:  LDRB            R3, [R4,#(dword_1A3AD4 - 0x1A3ACC)]
620FE:  STRB            R1, [R4,#(dword_1A3AD0+2 - 0x1A3ACC)]
62100:  EOR.W           R1, R2, #0x5A ; 'Z'
62104:  LDRB            R6, [R4,#(dword_1A3AD4+1 - 0x1A3ACC)]
62106:  STRB            R1, [R4,#(dword_1A3AD0+3 - 0x1A3ACC)]
62108:  EOR.W           R1, R3, #0x5A ; 'Z'
6210C:  STRB            R1, [R4,#(dword_1A3AD4 - 0x1A3ACC)]
6210E:  EOR.W           R1, R6, #0x5A ; 'Z'
62112:  STRB            R1, [R4,#(dword_1A3AD4+1 - 0x1A3ACC)]
62114:  LDRB            R1, [R4,#(dword_1A3AD4+2 - 0x1A3ACC)]
62116:  STRB            R0, [R4,#(byte_1A3ADA - 0x1A3ACC)]
62118:  EOR.W           R1, R1, #0x5A ; 'Z'
6211C:  STRB            R1, [R4,#(dword_1A3AD4+2 - 0x1A3ACC)]
6211E:  LDRB            R1, [R4,#(dword_1A3AD4+3 - 0x1A3ACC)]
62120:  EOR.W           R1, R1, #0x5A ; 'Z'
62124:  STRB            R1, [R4,#(dword_1A3AD4+3 - 0x1A3ACC)]
62126:  LDRB            R1, [R4,#(word_1A3AD8 - 0x1A3ACC)]
62128:  EOR.W           R1, R1, #0x5A ; 'Z'
6212C:  STRB            R1, [R4,#(word_1A3AD8 - 0x1A3ACC)]
6212E:  LDRB            R1, [R4,#(word_1A3AD8+1 - 0x1A3ACC)]
62130:  EOR.W           R0, R1, #0x5A ; 'Z'
62134:  STRB            R0, [R4,#(word_1A3AD8+1 - 0x1A3ACC)]
62136:  LDR             R1, =(aSampOrig - 0x62140); "SAMP_ORIG" ...
62138:  MOVS            R0, #4; prio
6213A:  LDR             R2, =(dword_1A3ACC - 0x62142)
6213C:  ADD             R1, PC; "SAMP_ORIG"
6213E:  ADD             R2, PC; dword_1A3ACC ; fmt
62140:  BLX             __android_log_print
62144:  LDR             R0, =(off_1A39F4 - 0x6214A)
62146:  ADD             R0, PC; off_1A39F4
62148:  LDR             R0, [R0]
6214A:  BLX             R0
6214C:  POP.W           {R8}
62150:  POP.W           {R4-R7,LR}
62154:  B.W             sub_6C11C
62158:  LDR             R0, =(byte_1A3ADC - 0x6215E)
6215A:  ADD             R0, PC; byte_1A3ADC ; __guard *
6215C:  BLX             j___cxa_guard_acquire
62160:  CMP             R0, #0
62162:  BEQ             loc_620B6
62164:  MOVS            R1, #0x5A ; 'Z'
62166:  LDR             R0, =(sub_66C62+1 - 0x6217E)
62168:  LDR             R2, =(off_110560 - 0x6218A)
6216A:  STRB            R1, [R4,#(byte_1A3ADA - 0x1A3ACC)]
6216C:  MOVW            R1, #0x7372
62170:  STRH            R1, [R4,#(word_1A3AD8 - 0x1A3ACC)]
62172:  MOV             R1, #0x31353532
6217A:  ADD             R0, PC; sub_66C62 ; lpfunc
6217C:  STR             R1, [R4,#(dword_1A3AD4 - 0x1A3ACC)]
6217E:  MOV             R1, #0x5332F1D
62186:  ADD             R2, PC; off_110560 ; lpdso_handle
62188:  STR             R1, [R4,#(dword_1A3AD0 - 0x1A3ACC)]
6218A:  MOV             R1, #0x2E333413
62192:  STR             R1, [R4]
62194:  MOV             R1, R4; obj
62196:  BLX             __cxa_atexit
6219A:  LDR             R0, =(byte_1A3ADC - 0x621A0)
6219C:  ADD             R0, PC; byte_1A3ADC ; __guard *
6219E:  BLX             j___cxa_guard_release
621A2:  B               loc_620B6
