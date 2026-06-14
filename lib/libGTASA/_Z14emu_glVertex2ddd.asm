; =========================================================
; Game Engine Function: _Z14emu_glVertex2ddd
; Address            : 0x1B84B0 - 0x1B855E
; =========================================================

1B84B0:  VMOV            D17, R0, R1
1B84B4:  LDR             R0, =(Imm_ptr - 0x1B84BE)
1B84B6:  VMOV            D16, R2, R3
1B84BA:  ADD             R0, PC; Imm_ptr
1B84BC:  LDR             R0, [R0]; Imm
1B84BE:  LDR             R0, [R0,#(dword_6B32B4 - 0x6B32A4)]
1B84C0:  CBNZ            R0, loc_1B84D4
1B84C2:  LDR             R0, =(Imm_ptr - 0x1B84CC)
1B84C4:  MOVS            R2, #0
1B84C6:  MOVS            R3, #2
1B84C8:  ADD             R0, PC; Imm_ptr
1B84CA:  LDR             R1, [R0]; Imm
1B84CC:  MOVS            R0, #8
1B84CE:  STRD.W          R3, R0, [R1,#(dword_6B32B0 - 0x6B32A4)]
1B84D2:  STR             R2, [R1,#(dword_6B32B8 - 0x6B32A4)]
1B84D4:  PUSH            {R4-R7,LR}
1B84D6:  ADD             R7, SP, #0xC
1B84D8:  PUSH.W          {R8}
1B84DC:  VPUSH           {D8-D9}
1B84E0:  LDR             R1, =(Imm_ptr - 0x1B84EA)
1B84E2:  VCVT.F32.F64    S16, D16
1B84E6:  ADD             R1, PC; Imm_ptr
1B84E8:  LDR             R1, [R1]; Imm
1B84EA:  LDRD.W          R2, R4, [R1,#(dword_6B32A8 - 0x6B32A4)]
1B84EE:  ADD.W           R8, R4, R0
1B84F2:  VCVT.F32.F64    S18, D17
1B84F6:  CMP             R2, R8
1B84F8:  BGE             loc_1B8538
1B84FA:  LDR             R0, =(Imm_ptr - 0x1B8504)
1B84FC:  ADD.W           R1, R8, R8,LSL#1
1B8500:  ADD             R0, PC; Imm_ptr
1B8502:  LDR             R6, [R0]; Imm
1B8504:  ADD.W           R0, R1, R1,LSR#31
1B8508:  ASRS            R0, R0, #1; byte_count
1B850A:  STR             R0, [R6,#(dword_6B32A8 - 0x6B32A4)]
1B850C:  BLX             malloc
1B8510:  LDR             R6, [R6]
1B8512:  MOV             R5, R0
1B8514:  CBZ             R6, loc_1B852E
1B8516:  MOV             R0, R5; void *
1B8518:  MOV             R1, R6; void *
1B851A:  MOV             R2, R4; size_t
1B851C:  BLX             memcpy_1
1B8520:  MOV             R0, R6; p
1B8522:  BLX             free
1B8526:  LDR             R0, =(Imm_ptr - 0x1B852C)
1B8528:  ADD             R0, PC; Imm_ptr
1B852A:  LDR             R0, [R0]; Imm
1B852C:  LDR             R4, [R0,#(dword_6B32AC - 0x6B32A4)]
1B852E:  LDR             R0, =(Imm_ptr - 0x1B8534)
1B8530:  ADD             R0, PC; Imm_ptr
1B8532:  LDR             R0, [R0]; Imm
1B8534:  STR             R5, [R0]
1B8536:  B               loc_1B8540
1B8538:  LDR             R0, =(Imm_ptr - 0x1B853E)
1B853A:  ADD             R0, PC; Imm_ptr
1B853C:  LDR             R0, [R0]; Imm
1B853E:  LDR             R5, [R0]
1B8540:  LDR             R0, =(Imm_ptr - 0x1B8546)
1B8542:  ADD             R0, PC; Imm_ptr
1B8544:  LDR             R0, [R0]; Imm
1B8546:  STR.W           R8, [R0,#(dword_6B32AC - 0x6B32A4)]
1B854A:  ADDS            R0, R5, R4
1B854C:  VSTR            S18, [R0]
1B8550:  VSTR            S16, [R0,#4]
1B8554:  VPOP            {D8-D9}
1B8558:  POP.W           {R8}
1B855C:  POP             {R4-R7,PC}
