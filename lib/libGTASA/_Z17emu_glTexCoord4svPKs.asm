; =========================================================
; Game Engine Function: _Z17emu_glTexCoord4svPKs
; Address            : 0x1B83DC - 0x1B848E
; =========================================================

1B83DC:  PUSH            {R4-R7,LR}
1B83DE:  ADD             R7, SP, #0xC
1B83E0:  PUSH.W          {R8-R11}
1B83E4:  SUB             SP, SP, #4
1B83E6:  LDR             R1, =(Imm_ptr - 0x1B83F0)
1B83E8:  LDRH.W          R9, [R0,#6]
1B83EC:  ADD             R1, PC; Imm_ptr
1B83EE:  LDRH.W          R10, [R0,#4]
1B83F2:  LDRH            R6, [R0,#2]
1B83F4:  LDR             R1, [R1]; Imm
1B83F6:  LDRH.W          R11, [R0]
1B83FA:  LDR             R0, [R1,#(dword_6B32CC - 0x6B32A4)]
1B83FC:  CBNZ            R0, loc_1B8410
1B83FE:  LDR             R0, =(Imm_ptr - 0x1B8408)
1B8400:  MOVS            R2, #3
1B8402:  MOVS            R3, #4
1B8404:  ADD             R0, PC; Imm_ptr
1B8406:  LDR             R1, [R0]; Imm
1B8408:  MOVS            R0, #8
1B840A:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B840E:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B8410:  LDR             R1, =(Imm_ptr - 0x1B8416)
1B8412:  ADD             R1, PC; Imm_ptr
1B8414:  LDR             R1, [R1]; Imm
1B8416:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B841A:  ADD.W           R8, R4, R0
1B841E:  CMP             R2, R8
1B8420:  BGE             loc_1B8464
1B8422:  LDR             R0, =(Imm_ptr - 0x1B842E)
1B8424:  ADD.W           R1, R8, R8,LSL#1
1B8428:  STR             R6, [SP,#0x20+var_20]
1B842A:  ADD             R0, PC; Imm_ptr
1B842C:  LDR             R6, [R0]; Imm
1B842E:  ADD.W           R0, R1, R1,LSR#31
1B8432:  ASRS            R0, R0, #1; byte_count
1B8434:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B8436:  BLX             malloc
1B843A:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B843C:  MOV             R5, R0
1B843E:  CBZ             R6, loc_1B8458
1B8440:  MOV             R0, R5; void *
1B8442:  MOV             R1, R6; void *
1B8444:  MOV             R2, R4; size_t
1B8446:  BLX             memcpy_1
1B844A:  MOV             R0, R6; p
1B844C:  BLX             free
1B8450:  LDR             R0, =(Imm_ptr - 0x1B8456)
1B8452:  ADD             R0, PC; Imm_ptr
1B8454:  LDR             R0, [R0]; Imm
1B8456:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B8458:  LDR             R0, =(Imm_ptr - 0x1B8460)
1B845A:  LDR             R6, [SP,#0x20+var_20]
1B845C:  ADD             R0, PC; Imm_ptr
1B845E:  LDR             R0, [R0]; Imm
1B8460:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B8462:  B               loc_1B846C
1B8464:  LDR             R0, =(Imm_ptr - 0x1B846A)
1B8466:  ADD             R0, PC; Imm_ptr
1B8468:  LDR             R0, [R0]; Imm
1B846A:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B846C:  LDR             R0, =(Imm_ptr - 0x1B8472)
1B846E:  ADD             R0, PC; Imm_ptr
1B8470:  LDR             R0, [R0]; Imm
1B8472:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B8476:  ADDS            R0, R5, R4
1B8478:  STRH.W          R11, [R5,R4]
1B847C:  STRH            R6, [R0,#2]
1B847E:  STRH.W          R10, [R0,#4]
1B8482:  STRH.W          R9, [R0,#6]
1B8486:  ADD             SP, SP, #4
1B8488:  POP.W           {R8-R11}
1B848C:  POP             {R4-R7,PC}
