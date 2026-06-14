; =========================================================
; Game Engine Function: _Z14emu_glNormal3dddd
; Address            : 0x1B94B8 - 0x1B9572
; =========================================================

1B94B8:  PUSH            {R4-R7,LR}
1B94BA:  ADD             R7, SP, #0xC
1B94BC:  PUSH.W          {R8}
1B94C0:  VPUSH           {D8-D10}
1B94C4:  VMOV            D18, R0, R1
1B94C8:  LDR             R0, =(Imm_ptr - 0x1B94D6)
1B94CA:  VLDR            D16, [R7,#arg_0]
1B94CE:  VMOV            D17, R2, R3
1B94D2:  ADD             R0, PC; Imm_ptr
1B94D4:  LDR             R0, [R0]; Imm
1B94D6:  LDR             R0, [R0,#(dword_6B32E4 - 0x6B32A4)]
1B94D8:  CBNZ            R0, loc_1B94EC
1B94DA:  LDR             R0, =(Imm_ptr - 0x1B94E4)
1B94DC:  MOVS            R2, #0
1B94DE:  MOVS            R3, #3
1B94E0:  ADD             R0, PC; Imm_ptr
1B94E2:  LDR             R1, [R0]; Imm
1B94E4:  MOVS            R0, #0xC
1B94E6:  STRD.W          R3, R0, [R1,#(dword_6B32E0 - 0x6B32A4)]
1B94EA:  STR             R2, [R1,#(dword_6B32E8 - 0x6B32A4)]
1B94EC:  LDR             R1, =(Imm_ptr - 0x1B94F6)
1B94EE:  VCVT.F32.F64    S16, D16
1B94F2:  ADD             R1, PC; Imm_ptr
1B94F4:  LDR             R1, [R1]; Imm
1B94F6:  LDRD.W          R2, R4, [R1,#(dword_6B32D8 - 0x6B32A4)]
1B94FA:  ADD.W           R8, R4, R0
1B94FE:  VCVT.F32.F64    S18, D17
1B9502:  CMP             R2, R8
1B9504:  VCVT.F32.F64    S20, D18
1B9508:  BGE             loc_1B9548
1B950A:  LDR             R0, =(Imm_ptr - 0x1B9514)
1B950C:  ADD.W           R1, R8, R8,LSL#1
1B9510:  ADD             R0, PC; Imm_ptr
1B9512:  LDR             R6, [R0]; Imm
1B9514:  ADD.W           R0, R1, R1,LSR#31
1B9518:  ASRS            R0, R0, #1; byte_count
1B951A:  STR             R0, [R6,#(dword_6B32D8 - 0x6B32A4)]
1B951C:  BLX             malloc
1B9520:  LDR             R6, [R6,#(dword_6B32D4 - 0x6B32A4)]
1B9522:  MOV             R5, R0
1B9524:  CBZ             R6, loc_1B953E
1B9526:  MOV             R0, R5; void *
1B9528:  MOV             R1, R6; void *
1B952A:  MOV             R2, R4; size_t
1B952C:  BLX             memcpy_1
1B9530:  MOV             R0, R6; p
1B9532:  BLX             free
1B9536:  LDR             R0, =(Imm_ptr - 0x1B953C)
1B9538:  ADD             R0, PC; Imm_ptr
1B953A:  LDR             R0, [R0]; Imm
1B953C:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B953E:  LDR             R0, =(Imm_ptr - 0x1B9544)
1B9540:  ADD             R0, PC; Imm_ptr
1B9542:  LDR             R0, [R0]; Imm
1B9544:  STR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9546:  B               loc_1B9550
1B9548:  LDR             R0, =(Imm_ptr - 0x1B954E)
1B954A:  ADD             R0, PC; Imm_ptr
1B954C:  LDR             R0, [R0]; Imm
1B954E:  LDR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9550:  LDR             R0, =(Imm_ptr - 0x1B9556)
1B9552:  ADD             R0, PC; Imm_ptr
1B9554:  LDR             R0, [R0]; Imm
1B9556:  STR.W           R8, [R0,#(dword_6B32DC - 0x6B32A4)]
1B955A:  ADDS            R0, R5, R4
1B955C:  VSTR            S20, [R0]
1B9560:  VSTR            S18, [R0,#4]
1B9564:  VSTR            S16, [R0,#8]
1B9568:  VPOP            {D8-D10}
1B956C:  POP.W           {R8}
1B9570:  POP             {R4-R7,PC}
