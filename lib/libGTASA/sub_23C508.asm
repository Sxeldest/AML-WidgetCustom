; =========================================================
; Game Engine Function: sub_23C508
; Address            : 0x23C508 - 0x23C770
; =========================================================

23C508:  PUSH            {R4-R7,LR}
23C50A:  ADD             R7, SP, #0xC
23C50C:  PUSH.W          {R8-R11}
23C510:  SUB.W           SP, SP, #0x1020
23C514:  SUB             SP, SP, #0xC
23C516:  MOV             R10, R0
23C518:  LDR             R0, =(__stack_chk_guard_ptr - 0x23C522)
23C51A:  STR             R1, [SP,#0x1048+var_1030]
23C51C:  MOV             R9, R2
23C51E:  ADD             R0, PC; __stack_chk_guard_ptr
23C520:  MOVW            R3, #0xB32C
23C524:  MOVW            R2, #0xB328
23C528:  LDR             R0, [R0]; __stack_chk_guard
23C52A:  LDR             R0, [R0]
23C52C:  STR.W           R0, [R7,#var_24]
23C530:  LDR.W           R0, [R10,R3]
23C534:  ADD             R3, R10
23C536:  LDR.W           R1, [R10,R2]
23C53A:  STR             R3, [SP,#0x1048+var_102C]
23C53C:  SUBS            R6, R1, R0
23C53E:  MOVW            R3, #0xB320
23C542:  CMP             R6, R9
23C544:  ADD             R3, R10
23C546:  STR             R3, [SP,#0x1048+var_1028]
23C548:  BGE.W           loc_23C666
23C54C:  SUB.W           R1, R9, R1
23C550:  MOV             R5, R9
23C552:  ADD.W           R9, R1, R0
23C556:  LDR             R0, =(off_677664 - 0x23C560)
23C558:  ADD             R2, R10
23C55A:  STR             R2, [SP,#0x1048+var_1038]
23C55C:  ADD             R0, PC; off_677664
23C55E:  MOVW            R2, #0xB338
23C562:  ADD             R2, R10
23C564:  STR             R2, [SP,#0x1048+var_1034]
23C566:  LDR             R0, [R0]
23C568:  MOVW            R2, #0xB33C
23C56C:  STR             R0, [SP,#0x1048+var_103C]
23C56E:  ADD.W           R4, R10, R2
23C572:  LDR             R0, =(off_677664 - 0x23C582)
23C574:  MOVW            R2, #0xB31C
23C578:  ADD.W           R8, R10, R2
23C57C:  ADD             R6, SP, #0x1048+var_1024
23C57E:  ADD             R0, PC; off_677664
23C580:  LDR             R0, [R0]
23C582:  STR             R0, [SP,#0x1048+var_1044]
23C584:  LDR             R0, =(off_677664 - 0x23C58A)
23C586:  ADD             R0, PC; off_677664
23C588:  LDR             R0, [R0]
23C58A:  STR             R0, [SP,#0x1048+var_1040]
23C58C:  B               loc_23C648
23C58E:  LDR.W           R3, [R8]
23C592:  MOV             R0, R10
23C594:  MOV             R1, R6
23C596:  MOV.W           R2, #0x1000
23C59A:  BLX             R3
23C59C:  MOV             R11, R0
23C59E:  CMP.W           R11, #0xFFFFFFFF
23C5A2:  BLE             loc_23C5C8
23C5A4:  CMP.W           R11, #0
23C5A8:  BEQ             loc_23C5E2
23C5AA:  LDR             R0, [SP,#0x1048+var_1028]; int
23C5AC:  MOV             R1, R6; void *
23C5AE:  MOV             R2, R11; size_t
23C5B0:  BL              sub_2346FC
23C5B4:  MOV             R3, R0
23C5B6:  CBZ             R3, loc_23C5D8
23C5B8:  LDRB            R0, [R4]
23C5BA:  LSLS            R0, R0, #0x1A
23C5BC:  BPL             loc_23C61E
23C5BE:  MOVS            R0, #1
23C5C0:  ANDS.W          R1, R0, #3
23C5C4:  BEQ             loc_23C648
23C5C6:  B               loc_23C650
23C5C8:  LDRB            R0, [R4]
23C5CA:  LSLS            R0, R0, #0x1A
23C5CC:  BPL             loc_23C604
23C5CE:  MOVS            R0, #1
23C5D0:  ANDS.W          R1, R0, #3
23C5D4:  BEQ             loc_23C648
23C5D6:  B               loc_23C650
23C5D8:  SUB.W           R9, R9, R11
23C5DC:  CMP.W           R11, #0x1000
23C5E0:  BGE             loc_23C5FA
23C5E2:  LDRB            R0, [R4]
23C5E4:  LSLS            R0, R0, #0x1A
23C5E6:  BMI             loc_23C5F0
23C5E8:  LDR             R0, [SP,#0x1048+var_1034]
23C5EA:  LDR             R0, [R0]
23C5EC:  CMP             R0, #3
23C5EE:  BGE             loc_23C638
23C5F0:  MOVS            R0, #3
23C5F2:  ANDS.W          R1, R0, #3
23C5F6:  BEQ             loc_23C648
23C5F8:  B               loc_23C650
23C5FA:  MOVS            R0, #0
23C5FC:  ANDS.W          R1, R0, #3
23C600:  BEQ             loc_23C648
23C602:  B               loc_23C650
23C604:  LDR             R0, [SP,#0x1048+var_103C]
23C606:  MOVW            R2, #0x2E7
23C60A:  LDR             R1, =(aCProjectsOswra_69 - 0x23C612); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C60C:  LDR             R0, [R0]; stream
23C60E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C610:  BLX             fprintf
23C614:  MOVS            R0, #1
23C616:  ANDS.W          R1, R0, #3
23C61A:  BEQ             loc_23C648
23C61C:  B               loc_23C650
23C61E:  LDR             R0, [SP,#0x1048+var_1040]
23C620:  MOVW            R2, #0x2EE
23C624:  LDR             R1, =(aCProjectsOswra_70 - 0x23C62C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C626:  LDR             R0, [R0]; stream
23C628:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C62A:  BLX             fprintf
23C62E:  MOVS            R0, #1
23C630:  ANDS.W          R1, R0, #3
23C634:  BEQ             loc_23C648
23C636:  B               loc_23C650
23C638:  LDR             R0, [SP,#0x1048+var_1044]
23C63A:  MOVS            R1, #0x16; size
23C63C:  MOVS            R2, #1; n
23C63E:  LDR             R3, [R0]; s
23C640:  ADR             R0, aNoteInputDataE; "Note: Input data end.\n"
23C642:  BLX             fwrite
23C646:  B               loc_23C5F0
23C648:  CMP.W           R9, #1
23C64C:  BGE             loc_23C58E
23C64E:  B               loc_23C654
23C650:  CMP             R1, #3
23C652:  BNE             loc_23C74A
23C654:  LDR             R0, [SP,#0x1048+var_102C]
23C656:  MOV             R9, R5
23C658:  LDR             R1, [SP,#0x1048+var_1038]
23C65A:  LDR             R0, [R0]
23C65C:  LDR             R1, [R1]
23C65E:  SUBS            R2, R1, R0
23C660:  CMP             R2, R9
23C662:  IT LT
23C664:  MOVLT           R9, R2
23C666:  SUBS            R1, R1, R0
23C668:  CMP             R1, R9
23C66A:  BGE             loc_23C682
23C66C:  LDR             R1, [SP,#0x1048+var_102C]
23C66E:  MOVW            R0, #0xB330
23C672:  LDR.W           R0, [R10,R0]
23C676:  MOV             R8, #0xFFFFFFF6
23C67A:  STR             R0, [R1]
23C67C:  CMP             R8, R9
23C67E:  BNE             loc_23C716
23C680:  B               loc_23C726
23C682:  LDR             R1, [SP,#0x1048+var_1028]
23C684:  LDR             R4, [R1]
23C686:  CMP             R4, #0
23C688:  BEQ             loc_23C70E
23C68A:  MOVS            R5, #0
23C68C:  LDR             R1, [R4,#4]
23C68E:  ADDS            R2, R1, R5
23C690:  CMP             R2, R0
23C692:  BGT             loc_23C69E
23C694:  LDR             R4, [R4,#0xC]
23C696:  MOV             R5, R2
23C698:  CMP             R4, #0
23C69A:  BNE             loc_23C68C
23C69C:  B               loc_23C70E
23C69E:  CMP.W           R9, #1
23C6A2:  BLT             loc_23C70E
23C6A4:  SUBS            R0, R0, R5
23C6A6:  LDR             R2, [R4]
23C6A8:  SUBS            R6, R1, R0
23C6AA:  MOV             R8, R9
23C6AC:  CMP             R9, R6
23C6AE:  ADD.W           R1, R2, R0; void *
23C6B2:  IT GT
23C6B4:  MOVGT           R8, R6
23C6B6:  LDR             R0, [SP,#0x1048+var_1030]; void *
23C6B8:  MOV             R2, R8; size_t
23C6BA:  BLX             memcpy_1
23C6BE:  LDR             R0, [SP,#0x1048+var_102C]
23C6C0:  CMP             R9, R6
23C6C2:  MOV             R1, R0
23C6C4:  LDR             R0, [R1]
23C6C6:  ADD             R0, R8
23C6C8:  STR             R0, [R1]
23C6CA:  BLE             loc_23C712
23C6CC:  LDR             R1, [R4,#0xC]
23C6CE:  CBZ             R1, loc_23C712
23C6D0:  MOV             R6, R1
23C6D2:  LDR             R1, [R4,#4]
23C6D4:  LDRD.W          R2, R3, [R6]
23C6D8:  SUB.W           R4, R9, R8
23C6DC:  ADD             R5, R1
23C6DE:  SUBS            R1, R0, R5
23C6E0:  SUBS            R0, R3, R1
23C6E2:  ADD             R1, R2; void *
23C6E4:  CMP             R4, R0
23C6E6:  IT GT
23C6E8:  MOVGT           R4, R0
23C6EA:  LDR             R0, [SP,#0x1048+var_1030]
23C6EC:  MOV             R2, R4; size_t
23C6EE:  ADD             R0, R8; void *
23C6F0:  BLX             memcpy_1
23C6F4:  LDR             R0, [SP,#0x1048+var_102C]
23C6F6:  ADD             R8, R4
23C6F8:  CMP             R8, R9
23C6FA:  MOV             R1, R0
23C6FC:  LDR             R0, [R1]
23C6FE:  ADD             R0, R4
23C700:  STR             R0, [R1]
23C702:  BGE             loc_23C712
23C704:  LDR             R1, [R6,#0xC]
23C706:  MOV             R4, R6
23C708:  CMP             R1, #0
23C70A:  BNE             loc_23C6D0
23C70C:  B               loc_23C712
23C70E:  MOV.W           R8, #0
23C712:  CMP             R8, R9
23C714:  BEQ             loc_23C726
23C716:  MOVW            R0, #0xB33C
23C71A:  LDRB.W          R0, [R10,R0]
23C71E:  LSLS            R0, R0, #0x1A
23C720:  BPL             loc_23C75A
23C722:  MOV.W           R9, #0xFFFFFFFF
23C726:  LDR             R0, =(__stack_chk_guard_ptr - 0x23C730)
23C728:  LDR.W           R1, [R7,#var_24]
23C72C:  ADD             R0, PC; __stack_chk_guard_ptr
23C72E:  LDR             R0, [R0]; __stack_chk_guard
23C730:  LDR             R0, [R0]
23C732:  SUBS            R0, R0, R1
23C734:  ITTTT EQ
23C736:  MOVEQ           R0, R9
23C738:  ADDEQ.W         SP, SP, #0x1020
23C73C:  ADDEQ           SP, SP, #0xC
23C73E:  POPEQ.W         {R8-R11}
23C742:  IT EQ
23C744:  POPEQ           {R4-R7,PC}
23C746:  BLX             __stack_chk_fail
23C74A:  CMP             R0, #0
23C74C:  BNE             loc_23C722
23C74E:  LDR             R0, [SP,#0x1048+var_102C]
23C750:  MOV             R9, R5
23C752:  LDR             R1, [SP,#0x1048+var_1038]
23C754:  LDR             R0, [R0]
23C756:  LDR             R1, [R1]
23C758:  B               loc_23C666
23C75A:  LDR             R0, =(off_677664 - 0x23C766)
23C75C:  MOV.W           R2, #0x300
23C760:  LDR             R1, =(aCProjectsOswra_71 - 0x23C768); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C762:  ADD             R0, PC; off_677664
23C764:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C766:  LDR             R0, [R0]
23C768:  LDR             R0, [R0]; stream
23C76A:  BLX             fprintf
23C76E:  B               loc_23C722
