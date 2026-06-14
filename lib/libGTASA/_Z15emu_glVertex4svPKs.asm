; =========================================================
; Game Engine Function: _Z15emu_glVertex4svPKs
; Address            : 0x1B9258 - 0x1B930A
; =========================================================

1B9258:  PUSH            {R4-R7,LR}
1B925A:  ADD             R7, SP, #0xC
1B925C:  PUSH.W          {R8-R11}
1B9260:  SUB             SP, SP, #4
1B9262:  LDR             R1, =(Imm_ptr - 0x1B926C)
1B9264:  LDRH.W          R9, [R0,#6]
1B9268:  ADD             R1, PC; Imm_ptr
1B926A:  LDRH.W          R10, [R0,#4]
1B926E:  LDRH            R6, [R0,#2]
1B9270:  LDR             R1, [R1]; Imm
1B9272:  LDRH.W          R11, [R0]
1B9276:  LDR             R0, [R1,#(dword_6B32B4 - 0x6B32A4)]
1B9278:  CBNZ            R0, loc_1B928C
1B927A:  LDR             R0, =(Imm_ptr - 0x1B9284)
1B927C:  MOVS            R2, #3
1B927E:  MOVS            R3, #4
1B9280:  ADD             R0, PC; Imm_ptr
1B9282:  LDR             R1, [R0]; Imm
1B9284:  MOVS            R0, #8
1B9286:  STRD.W          R3, R0, [R1,#(dword_6B32B0 - 0x6B32A4)]
1B928A:  STR             R2, [R1,#(dword_6B32B8 - 0x6B32A4)]
1B928C:  LDR             R1, =(Imm_ptr - 0x1B9292)
1B928E:  ADD             R1, PC; Imm_ptr
1B9290:  LDR             R1, [R1]; Imm
1B9292:  LDRD.W          R2, R4, [R1,#(dword_6B32A8 - 0x6B32A4)]
1B9296:  ADD.W           R8, R4, R0
1B929A:  CMP             R2, R8
1B929C:  BGE             loc_1B92E0
1B929E:  LDR             R0, =(Imm_ptr - 0x1B92AA)
1B92A0:  ADD.W           R1, R8, R8,LSL#1
1B92A4:  STR             R6, [SP,#0x20+var_20]
1B92A6:  ADD             R0, PC; Imm_ptr
1B92A8:  LDR             R6, [R0]; Imm
1B92AA:  ADD.W           R0, R1, R1,LSR#31
1B92AE:  ASRS            R0, R0, #1; byte_count
1B92B0:  STR             R0, [R6,#(dword_6B32A8 - 0x6B32A4)]
1B92B2:  BLX             malloc
1B92B6:  LDR             R6, [R6]
1B92B8:  MOV             R5, R0
1B92BA:  CBZ             R6, loc_1B92D4
1B92BC:  MOV             R0, R5; void *
1B92BE:  MOV             R1, R6; void *
1B92C0:  MOV             R2, R4; size_t
1B92C2:  BLX             memcpy_1
1B92C6:  MOV             R0, R6; p
1B92C8:  BLX             free
1B92CC:  LDR             R0, =(Imm_ptr - 0x1B92D2)
1B92CE:  ADD             R0, PC; Imm_ptr
1B92D0:  LDR             R0, [R0]; Imm
1B92D2:  LDR             R4, [R0,#(dword_6B32AC - 0x6B32A4)]
1B92D4:  LDR             R0, =(Imm_ptr - 0x1B92DC)
1B92D6:  LDR             R6, [SP,#0x20+var_20]
1B92D8:  ADD             R0, PC; Imm_ptr
1B92DA:  LDR             R0, [R0]; Imm
1B92DC:  STR             R5, [R0]
1B92DE:  B               loc_1B92E8
1B92E0:  LDR             R0, =(Imm_ptr - 0x1B92E6)
1B92E2:  ADD             R0, PC; Imm_ptr
1B92E4:  LDR             R0, [R0]; Imm
1B92E6:  LDR             R5, [R0]
1B92E8:  LDR             R0, =(Imm_ptr - 0x1B92EE)
1B92EA:  ADD             R0, PC; Imm_ptr
1B92EC:  LDR             R0, [R0]; Imm
1B92EE:  STR.W           R8, [R0,#(dword_6B32AC - 0x6B32A4)]
1B92F2:  ADDS            R0, R5, R4
1B92F4:  STRH.W          R11, [R5,R4]
1B92F8:  STRH            R6, [R0,#2]
1B92FA:  STRH.W          R10, [R0,#4]
1B92FE:  STRH.W          R9, [R0,#6]
1B9302:  ADD             SP, SP, #4
1B9304:  POP.W           {R8-R11}
1B9308:  POP             {R4-R7,PC}
