; =========================================================
; Game Engine Function: _Z17emu_glTexCoord4fvPKf
; Address            : 0x1B8250 - 0x1B82EE
; =========================================================

1B8250:  PUSH            {R4-R7,LR}
1B8252:  ADD             R7, SP, #0xC
1B8254:  PUSH.W          {R8}
1B8258:  VPUSH           {D8-D9}
1B825C:  LDR             R1, =(Imm_ptr - 0x1B8266)
1B825E:  VLD1.32         {D8-D9}, [R0]
1B8262:  ADD             R1, PC; Imm_ptr
1B8264:  LDR             R1, [R1]; Imm
1B8266:  LDR             R0, [R1,#(dword_6B32CC - 0x6B32A4)]
1B8268:  CBNZ            R0, loc_1B827C
1B826A:  LDR             R0, =(Imm_ptr - 0x1B8274)
1B826C:  MOVS            R2, #0
1B826E:  MOVS            R3, #4
1B8270:  ADD             R0, PC; Imm_ptr
1B8272:  LDR             R1, [R0]; Imm
1B8274:  MOVS            R0, #0x10
1B8276:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B827A:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B827C:  LDR             R1, =(Imm_ptr - 0x1B8282)
1B827E:  ADD             R1, PC; Imm_ptr
1B8280:  LDR             R1, [R1]; Imm
1B8282:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B8286:  ADD.W           R8, R4, R0
1B828A:  CMP             R2, R8
1B828C:  BGE             loc_1B82CC
1B828E:  LDR             R0, =(Imm_ptr - 0x1B8298)
1B8290:  ADD.W           R1, R8, R8,LSL#1
1B8294:  ADD             R0, PC; Imm_ptr
1B8296:  LDR             R6, [R0]; Imm
1B8298:  ADD.W           R0, R1, R1,LSR#31
1B829C:  ASRS            R0, R0, #1; byte_count
1B829E:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B82A0:  BLX             malloc
1B82A4:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B82A6:  MOV             R5, R0
1B82A8:  CBZ             R6, loc_1B82C2
1B82AA:  MOV             R0, R5; void *
1B82AC:  MOV             R1, R6; void *
1B82AE:  MOV             R2, R4; size_t
1B82B0:  BLX             memcpy_1
1B82B4:  MOV             R0, R6; p
1B82B6:  BLX             free
1B82BA:  LDR             R0, =(Imm_ptr - 0x1B82C0)
1B82BC:  ADD             R0, PC; Imm_ptr
1B82BE:  LDR             R0, [R0]; Imm
1B82C0:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B82C2:  LDR             R0, =(Imm_ptr - 0x1B82C8)
1B82C4:  ADD             R0, PC; Imm_ptr
1B82C6:  LDR             R0, [R0]; Imm
1B82C8:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B82CA:  B               loc_1B82D4
1B82CC:  LDR             R0, =(Imm_ptr - 0x1B82D2)
1B82CE:  ADD             R0, PC; Imm_ptr
1B82D0:  LDR             R0, [R0]; Imm
1B82D2:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B82D4:  LDR             R0, =(Imm_ptr - 0x1B82DA)
1B82D6:  ADD             R0, PC; Imm_ptr
1B82D8:  LDR             R0, [R0]; Imm
1B82DA:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B82DE:  ADDS            R0, R5, R4
1B82E0:  VST1.32         {D8-D9}, [R0]
1B82E4:  VPOP            {D8-D9}
1B82E8:  POP.W           {R8}
1B82EC:  POP             {R4-R7,PC}
