; =========================================================
; Game Engine Function: _Z17emu_glTexCoord1fvPKf
; Address            : 0x1B7418 - 0x1B74AC
; =========================================================

1B7418:  PUSH            {R4-R7,LR}
1B741A:  ADD             R7, SP, #0xC
1B741C:  PUSH.W          {R8,R9,R11}
1B7420:  LDR             R1, =(Imm_ptr - 0x1B742A)
1B7422:  LDR.W           R8, [R0]
1B7426:  ADD             R1, PC; Imm_ptr
1B7428:  LDR             R1, [R1]; Imm
1B742A:  LDR             R0, [R1,#(dword_6B32CC - 0x6B32A4)]
1B742C:  CBNZ            R0, loc_1B7440
1B742E:  LDR             R0, =(Imm_ptr - 0x1B7438)
1B7430:  MOVS            R2, #0
1B7432:  MOVS            R3, #1
1B7434:  ADD             R0, PC; Imm_ptr
1B7436:  LDR             R1, [R0]; Imm
1B7438:  MOVS            R0, #4
1B743A:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B743E:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B7440:  LDR             R1, =(Imm_ptr - 0x1B7446)
1B7442:  ADD             R1, PC; Imm_ptr
1B7444:  LDR             R1, [R1]; Imm
1B7446:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B744A:  ADD.W           R9, R4, R0
1B744E:  CMP             R2, R9
1B7450:  BGE             loc_1B7490
1B7452:  LDR             R0, =(Imm_ptr - 0x1B745C)
1B7454:  ADD.W           R1, R9, R9,LSL#1
1B7458:  ADD             R0, PC; Imm_ptr
1B745A:  LDR             R6, [R0]; Imm
1B745C:  ADD.W           R0, R1, R1,LSR#31
1B7460:  ASRS            R0, R0, #1; byte_count
1B7462:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B7464:  BLX             malloc
1B7468:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B746A:  MOV             R5, R0
1B746C:  CBZ             R6, loc_1B7486
1B746E:  MOV             R0, R5; void *
1B7470:  MOV             R1, R6; void *
1B7472:  MOV             R2, R4; size_t
1B7474:  BLX             memcpy_1
1B7478:  MOV             R0, R6; p
1B747A:  BLX             free
1B747E:  LDR             R0, =(Imm_ptr - 0x1B7484)
1B7480:  ADD             R0, PC; Imm_ptr
1B7482:  LDR             R0, [R0]; Imm
1B7484:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7486:  LDR             R0, =(Imm_ptr - 0x1B748C)
1B7488:  ADD             R0, PC; Imm_ptr
1B748A:  LDR             R0, [R0]; Imm
1B748C:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B748E:  B               loc_1B7498
1B7490:  LDR             R0, =(Imm_ptr - 0x1B7496)
1B7492:  ADD             R0, PC; Imm_ptr
1B7494:  LDR             R0, [R0]; Imm
1B7496:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7498:  LDR             R0, =(Imm_ptr - 0x1B749E)
1B749A:  ADD             R0, PC; Imm_ptr
1B749C:  LDR             R0, [R0]; Imm
1B749E:  STR.W           R9, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B74A2:  STR.W           R8, [R5,R4]
1B74A6:  POP.W           {R8,R9,R11}
1B74AA:  POP             {R4-R7,PC}
