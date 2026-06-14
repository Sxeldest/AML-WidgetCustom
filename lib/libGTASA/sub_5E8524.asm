; =========================================================
; Game Engine Function: sub_5E8524
; Address            : 0x5E8524 - 0x5E8638
; =========================================================

5E8524:  PUSH            {R4-R7,LR}
5E8526:  ADD             R7, SP, #0xC
5E8528:  PUSH.W          {R8-R11}
5E852C:  SUB             SP, SP, #0xC
5E852E:  MOV             R11, R0
5E8530:  LDR             R0, =(__stack_chk_guard_ptr - 0x5E853A)
5E8532:  MOV             R10, R2
5E8534:  MOV             R9, R1
5E8536:  ADD             R0, PC; __stack_chk_guard_ptr
5E8538:  CMP.W           R11, #0
5E853C:  LDR             R0, [R0]; __stack_chk_guard
5E853E:  LDR             R0, [R0]
5E8540:  STR             R0, [SP,#0x28+var_20]
5E8542:  BEQ             loc_5E8584
5E8544:  CMP.W           R10, #4
5E8548:  BCC             loc_5E85B4
5E854A:  LDR.W           R5, [R9]
5E854E:  MOV             R4, R10
5E8550:  LDR             R1, [R5]
5E8552:  SUBS            R0, R1, #1
5E8554:  CMP             R0, #0x7F
5E8556:  BCC             loc_5E856E
5E8558:  CMP             R1, #0
5E855A:  BEQ             loc_5E860E
5E855C:  MOV             R0, R11
5E855E:  MOVS            R2, #0
5E8560:  BL              sub_5E8280
5E8564:  ADDS            R1, R0, #1
5E8566:  BEQ             loc_5E8602
5E8568:  SUBS            R4, R4, R0
5E856A:  ADD             R11, R0
5E856C:  B               loc_5E8578
5E856E:  LDR.W           R5, [R9]
5E8572:  SUBS            R4, #1
5E8574:  STRB.W          R1, [R11],#1
5E8578:  ADDS            R5, #4
5E857A:  CMP             R4, #3
5E857C:  STR.W           R5, [R9]
5E8580:  BHI             loc_5E8550
5E8582:  B               loc_5E85B6
5E8584:  LDR.W           R0, [R9]
5E8588:  LDR             R1, [R0]
5E858A:  CBZ             R1, loc_5E8608
5E858C:  ADDS            R4, R0, #4
5E858E:  ADD             R5, SP, #0x28+var_24
5E8590:  MOV.W           R10, #0
5E8594:  CMP             R1, #0x80
5E8596:  BCC             loc_5E85A6
5E8598:  MOV             R0, R5
5E859A:  MOVS            R2, #0
5E859C:  BL              sub_5E8280
5E85A0:  ADDS            R1, R0, #1
5E85A2:  BNE             loc_5E85A8
5E85A4:  B               loc_5E8602
5E85A6:  MOVS            R0, #1
5E85A8:  LDR.W           R1, [R4],#4
5E85AC:  ADD             R10, R0
5E85AE:  CMP             R1, #0
5E85B0:  BNE             loc_5E8594
5E85B2:  B               loc_5E861C
5E85B4:  MOV             R4, R10
5E85B6:  CBZ             R4, loc_5E861C
5E85B8:  LDR.W           R6, [R9]
5E85BC:  ADD.W           R8, SP, #0x28+var_24
5E85C0:  LDR             R1, [R6]
5E85C2:  SUBS            R0, R1, #1
5E85C4:  CMP             R0, #0x7F
5E85C6:  BCC             loc_5E85EC
5E85C8:  CBZ             R1, loc_5E860E
5E85CA:  MOV             R0, R8
5E85CC:  MOVS            R2, #0
5E85CE:  BL              sub_5E8280
5E85D2:  MOV             R5, R0
5E85D4:  ADDS            R0, R5, #1
5E85D6:  BEQ             loc_5E8602
5E85D8:  CMP             R4, R5
5E85DA:  BCC             loc_5E8618
5E85DC:  LDR             R1, [R6]
5E85DE:  MOV             R0, R11
5E85E0:  MOVS            R2, #0
5E85E2:  BL              sub_5E8280
5E85E6:  SUBS            R4, R4, R5
5E85E8:  ADD             R11, R5
5E85EA:  B               loc_5E85F6
5E85EC:  LDR.W           R6, [R9]
5E85F0:  SUBS            R4, #1
5E85F2:  STRB.W          R1, [R11],#1
5E85F6:  ADDS            R6, #4
5E85F8:  CMP             R4, #0
5E85FA:  STR.W           R6, [R9]
5E85FE:  BNE             loc_5E85C0
5E8600:  B               loc_5E861C
5E8602:  MOV.W           R10, #0xFFFFFFFF
5E8606:  B               loc_5E861C
5E8608:  MOV.W           R10, #0
5E860C:  B               loc_5E861C
5E860E:  MOVS            R0, #0
5E8610:  STRB.W          R0, [R11]
5E8614:  STR.W           R0, [R9]
5E8618:  SUB.W           R10, R10, R4
5E861C:  LDR             R0, =(__stack_chk_guard_ptr - 0x5E8624)
5E861E:  LDR             R1, [SP,#0x28+var_20]
5E8620:  ADD             R0, PC; __stack_chk_guard_ptr
5E8622:  LDR             R0, [R0]; __stack_chk_guard
5E8624:  LDR             R0, [R0]
5E8626:  SUBS            R0, R0, R1
5E8628:  ITTTT EQ
5E862A:  MOVEQ           R0, R10
5E862C:  ADDEQ           SP, SP, #0xC
5E862E:  POPEQ.W         {R8-R11}
5E8632:  POPEQ           {R4-R7,PC}
5E8634:  BLX.W           __stack_chk_fail
