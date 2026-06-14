; =========================================================
; Game Engine Function: sub_10E434
; Address            : 0x10E434 - 0x10E4CC
; =========================================================

10E434:  PUSH            {R4-R7,LR}
10E436:  ADD             R7, SP, #0xC
10E438:  PUSH.W          {R8-R10}
10E43C:  SUB             SP, SP, #0x28
10E43E:  MOV             LR, SP
10E440:  ADD.W           R4, LR, #0x28 ; '('
10E444:  MOV             R10, R3
10E446:  MOVS            R5, #0
10E448:  LDRB            R6, [R0,R5]
10E44A:  SUB.W           R12, R6, #0x30 ; '0'
10E44E:  CMP.W           R12, #0xA
10E452:  BCS             loc_10E474
10E454:  ADDS            R6, R0, R5
10E456:  STR.W           R12, [R4,#-4]!
10E45A:  ADD.W           R8, R6, #1
10E45E:  ADDS            R6, R5, #1
10E460:  CMP             R8, R1
10E462:  BEQ             loc_10E46A
10E464:  CMP             R5, #9
10E466:  MOV             R5, R6
10E468:  BNE             loc_10E448
10E46A:  ADD.W           R8, R0, R6
10E46E:  RSB.W           R9, R6, #0xA
10E472:  B               loc_10E480
10E474:  ADD.W           R8, R0, R5
10E478:  LDR.W           R12, [R4]
10E47C:  RSB.W           R9, R5, #0xA
10E480:  LDR             R3, =(unk_B4314 - 0x10E490)
10E482:  ADD.W           R0, LR, R9,LSL#2
10E486:  ADDS            R5, R0, #4
10E488:  ADD.W           R0, LR, #0x24 ; '$'
10E48C:  ADD             R3, PC; unk_B4314
10E48E:  CMP             R5, R0
10E490:  BCS             loc_10E4A4
10E492:  ADDS            R6, R3, #4
10E494:  LDR.W           R1, [R5],#4
10E498:  LDR.W           R4, [R6],#4
10E49C:  CMP             R5, R0
10E49E:  MLA.W           R12, R4, R1, R12
10E4A2:  BCC             loc_10E494
10E4A4:  RSB.W           R0, R9, #9
10E4A8:  LDR             R1, [SP,#0x40+var_1C]
10E4AA:  STR.W           R12, [R2]
10E4AE:  LDR.W           R0, [R3,R0,LSL#2]
10E4B2:  UMULL.W         R0, R1, R1, R0
10E4B6:  STR.W           R0, [R10]
10E4BA:  CMP             R1, #0
10E4BC:  IT NE
10E4BE:  MOVNE           R1, #1
10E4C0:  SUB.W           R0, R8, R1
10E4C4:  ADD             SP, SP, #0x28 ; '('
10E4C6:  POP.W           {R8-R10}
10E4CA:  POP             {R4-R7,PC}
