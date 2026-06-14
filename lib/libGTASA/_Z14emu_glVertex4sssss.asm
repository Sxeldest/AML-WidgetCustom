; =========================================================
; Game Engine Function: _Z14emu_glVertex4sssss
; Address            : 0x1B918C - 0x1B9236
; =========================================================

1B918C:  PUSH            {R4-R7,LR}
1B918E:  ADD             R7, SP, #0xC
1B9190:  PUSH.W          {R8-R11}
1B9194:  SUB             SP, SP, #4
1B9196:  MOV             R11, R0
1B9198:  LDR             R0, =(Imm_ptr - 0x1B91A2)
1B919A:  MOV             R9, R3
1B919C:  MOV             R10, R2
1B919E:  ADD             R0, PC; Imm_ptr
1B91A0:  LDR             R0, [R0]; Imm
1B91A2:  LDR             R0, [R0,#(dword_6B32B4 - 0x6B32A4)]
1B91A4:  CBNZ            R0, loc_1B91B8
1B91A6:  LDR             R0, =(Imm_ptr - 0x1B91B0)
1B91A8:  MOVS            R5, #3
1B91AA:  MOVS            R6, #4
1B91AC:  ADD             R0, PC; Imm_ptr
1B91AE:  LDR             R4, [R0]; Imm
1B91B0:  MOVS            R0, #8
1B91B2:  STRD.W          R6, R0, [R4,#(dword_6B32B0 - 0x6B32A4)]
1B91B6:  STR             R5, [R4,#(dword_6B32B8 - 0x6B32A4)]
1B91B8:  LDR             R6, =(Imm_ptr - 0x1B91BE)
1B91BA:  ADD             R6, PC; Imm_ptr
1B91BC:  LDR             R5, [R6]; Imm
1B91BE:  LDRD.W          R6, R5, [R5,#(dword_6B32A8 - 0x6B32A4)]
1B91C2:  ADD.W           R8, R5, R0
1B91C6:  CMP             R6, R8
1B91C8:  BGE             loc_1B920C
1B91CA:  LDR             R0, =(Imm_ptr - 0x1B91D6)
1B91CC:  STR             R1, [SP,#0x20+var_20]
1B91CE:  ADD.W           R1, R8, R8,LSL#1
1B91D2:  ADD             R0, PC; Imm_ptr
1B91D4:  LDR             R4, [R0]; Imm
1B91D6:  ADD.W           R0, R1, R1,LSR#31
1B91DA:  ASRS            R0, R0, #1; byte_count
1B91DC:  STR             R0, [R4,#(dword_6B32A8 - 0x6B32A4)]
1B91DE:  BLX             malloc
1B91E2:  LDR             R4, [R4]
1B91E4:  MOV             R6, R0
1B91E6:  CBZ             R4, loc_1B9200
1B91E8:  MOV             R0, R6; void *
1B91EA:  MOV             R1, R4; void *
1B91EC:  MOV             R2, R5; size_t
1B91EE:  BLX             memcpy_1
1B91F2:  MOV             R0, R4; p
1B91F4:  BLX             free
1B91F8:  LDR             R0, =(Imm_ptr - 0x1B91FE)
1B91FA:  ADD             R0, PC; Imm_ptr
1B91FC:  LDR             R0, [R0]; Imm
1B91FE:  LDR             R5, [R0,#(dword_6B32AC - 0x6B32A4)]
1B9200:  LDR             R0, =(Imm_ptr - 0x1B9208)
1B9202:  LDR             R1, [SP,#0x20+var_20]
1B9204:  ADD             R0, PC; Imm_ptr
1B9206:  LDR             R0, [R0]; Imm
1B9208:  STR             R6, [R0]
1B920A:  B               loc_1B9214
1B920C:  LDR             R0, =(Imm_ptr - 0x1B9212)
1B920E:  ADD             R0, PC; Imm_ptr
1B9210:  LDR             R0, [R0]; Imm
1B9212:  LDR             R6, [R0]
1B9214:  LDR             R0, =(Imm_ptr - 0x1B921A)
1B9216:  ADD             R0, PC; Imm_ptr
1B9218:  LDR             R0, [R0]; Imm
1B921A:  STR.W           R8, [R0,#(dword_6B32AC - 0x6B32A4)]
1B921E:  ADDS            R0, R6, R5
1B9220:  STRH.W          R11, [R6,R5]
1B9224:  STRH            R1, [R0,#2]
1B9226:  STRH.W          R10, [R0,#4]
1B922A:  STRH.W          R9, [R0,#6]
1B922E:  ADD             SP, SP, #4
1B9230:  POP.W           {R8-R11}
1B9234:  POP             {R4-R7,PC}
