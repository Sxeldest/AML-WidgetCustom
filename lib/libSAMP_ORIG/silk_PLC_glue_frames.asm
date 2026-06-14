; =========================================================
; Game Engine Function: silk_PLC_glue_frames
; Address            : 0xB452C - 0xB4698
; =========================================================

B452C:  PUSH            {R4-R7,LR}
B452E:  ADD             R7, SP, #0xC
B4530:  PUSH.W          {R8,R9,R11}
B4534:  SUB             SP, SP, #0x10
B4536:  MOV             R6, R0
B4538:  LDR             R0, =(__stack_chk_guard_ptr - 0xB4542)
B453A:  MOV             R9, R2
B453C:  MOV             R5, R1
B453E:  ADD             R0, PC; __stack_chk_guard_ptr
B4540:  LDR             R0, [R0]; __stack_chk_guard
B4542:  LDR             R0, [R0]
B4544:  STR             R0, [SP,#0x28+var_1C]
B4546:  MOV.W           R0, #0x1040
B454A:  LDR             R0, [R6,R0]
B454C:  CBZ             R0, loc_B456E
B454E:  MOVW            R0, #0x1088
B4552:  MOVW            R1, #0x108C
B4556:  ADD             R0, R6
B4558:  ADD             R1, R6
B455A:  MOV             R2, R5
B455C:  MOV             R3, R9
B455E:  BLX             j_silk_sum_sqr_shift
B4562:  MOVW            R0, #0x107C
B4566:  ADD.W           R8, R6, R0
B456A:  MOVS            R4, #1
B456C:  B               loc_B467A
B456E:  MOVW            R0, #0x107C
B4572:  ADD.W           R8, R6, R0
B4576:  LDR             R1, [R6,R0]
B4578:  CMP             R1, #0
B457A:  BEQ             loc_B4678
B457C:  ADD             R0, SP, #0x28+var_24
B457E:  ADD             R1, SP, #0x28+var_20
B4580:  MOV             R2, R5
B4582:  MOV             R3, R9
B4584:  BLX             j_silk_sum_sqr_shift
B4588:  MOVW            R0, #0x108C
B458C:  LDR             R1, [SP,#0x28+var_20]
B458E:  LDR             R0, [R6,R0]
B4590:  CMP             R1, R0
B4592:  BLE             loc_B45A4
B4594:  MOVW            R2, #0x1088
B4598:  SUBS            R0, R1, R0
B459A:  LDR             R3, [R6,R2]
B459C:  ASR.W           R0, R3, R0
B45A0:  STR             R0, [R6,R2]
B45A2:  B               loc_B45B0
B45A4:  ITTTT LT
B45A6:  LDRLT           R2, [SP,#0x28+var_24]
B45A8:  SUBLT           R0, R0, R1
B45AA:  ASRLT.W         R0, R2, R0
B45AE:  STRLT           R0, [SP,#0x28+var_24]
B45B0:  MOVW            R2, #0x1088
B45B4:  LDR             R1, [SP,#0x28+var_24]
B45B6:  LDR             R0, [R6,R2]
B45B8:  MOVS            R4, #0
B45BA:  CMP             R1, R0
B45BC:  BLE             loc_B467A
B45BE:  CLZ.W           R3, R0
B45C2:  ADD             R2, R6
B45C4:  SUBS            R6, R3, #1
B45C6:  LSLS            R0, R6
B45C8:  STR             R0, [R2]
B45CA:  RSB.W           R2, R3, #0x19
B45CE:  CMP             R2, #0
B45D0:  IT LE
B45D2:  MOVLE           R2, R4
B45D4:  ASRS            R1, R2
B45D6:  CMP             R1, #1
B45D8:  STR             R1, [SP,#0x28+var_24]
B45DA:  IT LE
B45DC:  MOVLE           R1, #1
B45DE:  BLX             sub_108848
B45E2:  CMP             R0, #1
B45E4:  BLT             loc_B4638
B45E6:  CLZ.W           R1, R0
B45EA:  RSBS.W          R2, R1, #0x18
B45EE:  BEQ             loc_B4606
B45F0:  CMP.W           R2, #0xFFFFFFFF
B45F4:  BLE             loc_B45FA
B45F6:  RORS            R0, R2
B45F8:  B               loc_B4606
B45FA:  NEGS            R3, R2
B45FC:  ADDS            R2, #0x20 ; ' '
B45FE:  LSL.W           R3, R0, R3
B4602:  LSRS            R0, R2
B4604:  ORRS            R0, R3
B4606:  AND.W           R0, R0, #0x7F
B460A:  MOV.W           R2, #0xD50000
B460E:  TST.W           R1, #1
B4612:  MOV.W           R1, R1,LSR#1
B4616:  MUL.W           R0, R2, R0
B461A:  MOV.W           R2, #0x8000
B461E:  IT EQ
B4620:  MOVWEQ          R2, #0xB486
B4624:  LSR.W           R1, R2, R1
B4628:  UXTH            R2, R1
B462A:  LSRS            R0, R0, #0x10
B462C:  MULS            R2, R0
B462E:  SMLABT.W        R0, R0, R1, R1
B4632:  ADD.W           R0, R0, R2,LSR#16
B4636:  LSLS            R4, R0, #4
B4638:  RSB.W           R0, R4, #0x10000
B463C:  MOV             R1, R9
B463E:  BLX             sub_108848
B4642:  CMP.W           R9, #1
B4646:  BLT             loc_B4678
B4648:  LSLS            R0, R0, #2
B464A:  MOVS            R1, #0
B464C:  MOVW            R12, #0xFFFC
B4650:  LDRSH.W         R3, [R5,R1,LSL#1]
B4654:  AND.W           R6, R4, R12
B4658:  LSRS            R2, R4, #0x10
B465A:  ADD             R4, R0
B465C:  CMP.W           R4, #0x10000
B4660:  MUL.W           R6, R3, R6
B4664:  MUL.W           R2, R3, R2
B4668:  ADD.W           R2, R2, R6,LSR#16
B466C:  STRH.W          R2, [R5,R1,LSL#1]
B4670:  ITT LE
B4672:  ADDLE           R1, #1
B4674:  CMPLE           R1, R9
B4676:  BLT             loc_B4650
B4678:  MOVS            R4, #0
B467A:  LDR             R0, =(__stack_chk_guard_ptr - 0xB4684)
B467C:  STR.W           R4, [R8]
B4680:  ADD             R0, PC; __stack_chk_guard_ptr
B4682:  LDR             R1, [SP,#0x28+var_1C]
B4684:  LDR             R0, [R0]; __stack_chk_guard
B4686:  LDR             R0, [R0]
B4688:  SUBS            R0, R0, R1
B468A:  ITTT EQ
B468C:  ADDEQ           SP, SP, #0x10
B468E:  POPEQ.W         {R8,R9,R11}
B4692:  POPEQ           {R4-R7,PC}
B4694:  BLX             __stack_chk_fail
