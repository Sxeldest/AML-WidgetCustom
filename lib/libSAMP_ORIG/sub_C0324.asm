; =========================================================
; Game Engine Function: sub_C0324
; Address            : 0xC0324 - 0xC03FE
; =========================================================

C0324:  PUSH            {R4-R7,LR}
C0326:  ADD             R7, SP, #0xC
C0328:  PUSH.W          {R8-R11}
C032C:  SUB             SP, SP, #0xC
C032E:  LDR             R6, =(__stack_chk_guard_ptr - 0xC0338)
C0330:  MUL.W           R5, R1, R2
C0334:  ADD             R6, PC; __stack_chk_guard_ptr
C0336:  LDR             R6, [R6]; __stack_chk_guard
C0338:  LDR             R6, [R6]
C033A:  STR.W           R6, [R7,#var_24]
C033E:  MOVS            R6, #7
C0340:  ADD.W           R6, R6, R5,LSL#1
C0344:  BIC.W           R6, R6, #7
C0348:  SUB.W           LR, SP, R6
C034C:  LSLS            R6, R5, #1
C034E:  STR.W           R6, [R7,#n]
C0352:  MOV             SP, LR
C0354:  CBZ             R3, loc_C039C
C0356:  CMP             R2, #1
C0358:  IT GE
C035A:  CMPGE           R1, #1
C035C:  BLT             loc_C03D4
C035E:  LDR             R3, =(unk_5B2A8 - 0xC036E)
C0360:  MOV.W           R12, R2,LSL#1
C0364:  MOV.W           R10, #0
C0368:  MOV             R9, LR
C036A:  ADD             R3, PC; unk_5B2A8
C036C:  ADD.W           R3, R3, R2,LSL#2
C0370:  SUB.W           R8, R3, #8
C0374:  LDR.W           R3, [R8,R10,LSL#2]
C0378:  MOV             R6, R9
C037A:  MOV             R5, R1
C037C:  MULS            R3, R1
C037E:  ADD.W           R3, R0, R3,LSL#1
C0382:  LDRH.W          R4, [R3],#2
C0386:  SUBS            R5, #1
C0388:  STRH            R4, [R6]
C038A:  ADD             R6, R12
C038C:  BNE             loc_C0382
C038E:  ADD.W           R10, R10, #1
C0392:  ADD.W           R9, R9, #2
C0396:  CMP             R10, R2
C0398:  BNE             loc_C0374
C039A:  B               loc_C03D4
C039C:  CMP             R2, #1
C039E:  IT GE
C03A0:  CMPGE           R1, #1
C03A2:  BLT             loc_C03D4
C03A4:  MOV.W           R8, R1,LSL#1
C03A8:  LSLS            R4, R2, #1
C03AA:  MOV.W           R9, #0
C03AE:  MOV             R10, R0
C03B0:  MOV             R11, LR
C03B2:  MOV             R6, R10
C03B4:  MOV             R3, R11
C03B6:  MOV             R5, R1
C03B8:  LDRH.W          R12, [R6],#2
C03BC:  SUBS            R5, #1
C03BE:  STRH.W          R12, [R3]
C03C2:  ADD             R3, R4
C03C4:  BNE             loc_C03B8
C03C6:  ADD.W           R9, R9, #1
C03CA:  ADD             R10, R8
C03CC:  ADD.W           R11, R11, #2
C03D0:  CMP             R9, R2
C03D2:  BNE             loc_C03B2
C03D4:  LDR.W           R2, [R7,#n]; n
C03D8:  MOV             R1, LR; src
C03DA:  BLX             j_memcpy
C03DE:  LDR             R0, =(__stack_chk_guard_ptr - 0xC03E8)
C03E0:  LDR.W           R1, [R7,#var_24]
C03E4:  ADD             R0, PC; __stack_chk_guard_ptr
C03E6:  LDR             R0, [R0]; __stack_chk_guard
C03E8:  LDR             R0, [R0]
C03EA:  SUBS            R0, R0, R1
C03EC:  ITTTT EQ
C03EE:  SUBEQ.W         R4, R7, #-var_1C
C03F2:  MOVEQ           SP, R4
C03F4:  POPEQ.W         {R8-R11}
C03F8:  POPEQ           {R4-R7,PC}
C03FA:  BLX             __stack_chk_fail
