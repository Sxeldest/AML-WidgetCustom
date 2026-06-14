; =========================================================
; Game Engine Function: sub_691D4
; Address            : 0x691D4 - 0x69288
; =========================================================

691D4:  PUSH            {R4,R5,R7,LR}
691D6:  ADD             R7, SP, #8
691D8:  MOV             R4, R1
691DA:  MOV             R5, R0
691DC:  BL              sub_68E3C
691E0:  CBZ             R0, loc_691F0
691E2:  LDR             R1, [R5,#4]
691E4:  MOV             R3, R4
691E6:  LDR             R2, [R5,#0x24]
691E8:  POP.W           {R4,R5,R7,LR}
691EC:  B.W             sub_69070
691F0:  LDR             R0, =(byte_1A4264 - 0x691F6)
691F2:  ADD             R0, PC; byte_1A4264
691F4:  LDRB            R0, [R0]
691F6:  DMB.W           ISH
691FA:  LDR             R4, =(dword_1A425C - 0x69200)
691FC:  ADD             R4, PC; dword_1A425C
691FE:  LSLS            R0, R0, #0x1F
69200:  BEQ             loc_69250
69202:  LDRB            R0, [R4,#(byte_1A4262 - 0x1A425C)]
69204:  CBZ             R0, loc_6923E
69206:  LDRB            R1, [R4]
69208:  EOR.W           R0, R0, #0x5A ; 'Z'
6920C:  LDRB            R2, [R4,#(dword_1A425C+1 - 0x1A425C)]
6920E:  STRB            R0, [R4,#(byte_1A4262 - 0x1A425C)]
69210:  EOR.W           R1, R1, #0x5A ; 'Z'
69214:  LDRB            R0, [R4,#(word_1A4260 - 0x1A425C)]
69216:  LDRB            R3, [R4,#(dword_1A425C+2 - 0x1A425C)]
69218:  STRB            R1, [R4]
6921A:  EOR.W           R1, R2, #0x5A ; 'Z'
6921E:  LDRB            R5, [R4,#(dword_1A425C+3 - 0x1A425C)]
69220:  EOR.W           R0, R0, #0x5A ; 'Z'
69224:  LDRB.W          R12, [R4,#(word_1A4260+1 - 0x1A425C)]
69228:  STRB            R1, [R4,#(dword_1A425C+1 - 0x1A425C)]
6922A:  EOR.W           R1, R3, #0x5A ; 'Z'
6922E:  STRB            R1, [R4,#(dword_1A425C+2 - 0x1A425C)]
69230:  EOR.W           R1, R5, #0x5A ; 'Z'
69234:  STRB            R0, [R4,#(word_1A4260 - 0x1A425C)]
69236:  EOR.W           R0, R12, #0x5A ; 'Z'
6923A:  STRB            R1, [R4,#(dword_1A425C+3 - 0x1A425C)]
6923C:  STRB            R0, [R4,#(word_1A4260+1 - 0x1A425C)]
6923E:  LDR             R1, =(aSampOrig - 0x69248); "SAMP_ORIG" ...
69240:  MOVS            R0, #4
69242:  LDR             R2, =(dword_1A425C - 0x6924A)
69244:  ADD             R1, PC; "SAMP_ORIG"
69246:  ADD             R2, PC; dword_1A425C
69248:  POP.W           {R4,R5,R7,LR}
6924C:  B.W             sub_10C158
69250:  LDR             R0, =(byte_1A4264 - 0x69256)
69252:  ADD             R0, PC; byte_1A4264 ; __guard *
69254:  BLX             j___cxa_guard_acquire
69258:  CMP             R0, #0
6925A:  BEQ             loc_69202
6925C:  MOVS            R1, #0x5A ; 'Z'
6925E:  LDR             R0, =(sub_66E8E+1 - 0x69276)
69260:  LDR             R2, =(off_110560 - 0x69278)
69262:  STRB            R1, [R4,#(byte_1A4262 - 0x1A425C)]
69264:  MOVW            R1, #0x2C34
69268:  STRH            R1, [R4,#(word_1A4260 - 0x1A425C)]
6926A:  MOV             R1, #0x3F7A3514
69272:  ADD             R0, PC; sub_66E8E ; lpfunc
69274:  ADD             R2, PC; off_110560 ; lpdso_handle
69276:  STR             R1, [R4]
69278:  MOV             R1, R4; obj
6927A:  BLX             __cxa_atexit
6927E:  LDR             R0, =(byte_1A4264 - 0x69284)
69280:  ADD             R0, PC; byte_1A4264 ; __guard *
69282:  BLX             j___cxa_guard_release
69286:  B               loc_69202
