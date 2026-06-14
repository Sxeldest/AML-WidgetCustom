; =========================================================
; Game Engine Function: sub_7C4F0
; Address            : 0x7C4F0 - 0x7C724
; =========================================================

7C4F0:  PUSH            {R4-R7,LR}
7C4F2:  ADD             R7, SP, #0xC
7C4F4:  PUSH.W          {R8-R11}
7C4F8:  SUB             SP, SP, #0xC
7C4FA:  LDRD.W          R6, R5, [R0]
7C4FE:  MOV             R10, R0
7C500:  LDR             R0, [R0,#8]
7C502:  SUB.W           R8, R1, R6
7C506:  BIC.W           R3, R8, #3
7C50A:  CMP             R5, R0
7C50C:  ADD.W           R9, R6, R3
7C510:  MOV.W           R11, R8,ASR#2
7C514:  BCS             loc_7C5B2
7C516:  CMP             R9, R5
7C518:  BEQ             loc_7C5FE
7C51A:  SUB.W           R0, R5, R9
7C51E:  STR             R2, [SP,#0x28+var_20]
7C520:  SUBS            R2, R0, #4; n
7C522:  MOV             R0, R5
7C524:  BIC.W           R4, R2, #3
7C528:  ADD.W           R1, R9, R4
7C52C:  MOV.W           R12, R2,ASR#2
7C530:  CMP             R1, R5
7C532:  BCS.W           loc_7C654
7C536:  ADD.W           R8, R3, R4
7C53A:  ADDS            R3, R1, #4
7C53C:  CMP             R5, R3
7C53E:  MVN.W           R0, R6
7C542:  MOV             R4, R3
7C544:  IT HI
7C546:  MOVHI           R4, R5
7C548:  ADD             R4, R0
7C54A:  SUB.W           LR, R4, R8
7C54E:  MOVS            R4, #0
7C550:  CMP.W           R4, LR,LSR#2
7C554:  BEQ             loc_7C644
7C556:  CMP             R5, R3
7C558:  IT HI
7C55A:  MOVHI           R3, R5
7C55C:  ADD             R0, R3
7C55E:  ADD.W           R3, R12, R11
7C562:  SUB.W           R0, R0, R8
7C566:  ADD.W           R3, R3, R0,LSR#2
7C56A:  ADD.W           R3, R6, R3,LSL#2
7C56E:  ADDS            R3, #4
7C570:  CMP             R5, R3
7C572:  ITTTT CC
7C574:  LSRCC           R0, R0, #2
7C576:  ADDCC.W         R0, R5, R0,LSL#2
7C57A:  ADDCC           R0, #4
7C57C:  CMPCC           R1, R0
7C57E:  BCC             loc_7C644
7C580:  MOVS            R0, #1
7C582:  ADD.W           LR, R0, LR,LSR#2
7C586:  MOVW            R0, #0xFFFC
7C58A:  MOV             R4, R5
7C58C:  MOVT            R0, #0x7FFF
7C590:  ADDS            R0, #2
7C592:  AND.W           R8, LR, R0
7C596:  ADD.W           R0, R5, R8,LSL#2
7C59A:  ADD.W           R3, R1, R8,LSL#2
7C59E:  MOV             R6, R8
7C5A0:  VLD1.32         {D16}, [R1]!
7C5A4:  SUBS            R6, #2
7C5A6:  VST1.32         {D16}, [R4]!
7C5AA:  BNE             loc_7C5A0
7C5AC:  CMP             LR, R8
7C5AE:  BNE             loc_7C648
7C5B0:  B               loc_7C654
7C5B2:  SUBS            R1, R5, R6
7C5B4:  STR.W           R9, [SP,#0x28+var_24]
7C5B8:  MOVS            R3, #1
7C5BA:  ADD.W           R9, R3, R1,ASR#2
7C5BE:  CMP.W           R9, #0x40000000
7C5C2:  BCS.W           loc_7C70E
7C5C6:  SUBS            R0, R0, R6
7C5C8:  MOV             R1, #0x7FFFFFFC
7C5D0:  CMP.W           R9, R0,ASR#1
7C5D4:  IT LS
7C5D6:  MOVLS.W         R9, R0,ASR#1
7C5DA:  CMP             R0, R1
7C5DC:  IT CS
7C5DE:  MOVCS           R9, #0x3FFFFFFF
7C5E2:  CMP.W           R9, #0
7C5E6:  STR             R2, [SP,#0x28+var_20]
7C5E8:  BEQ             loc_7C60C
7C5EA:  CMP.W           R9, #0x40000000
7C5EE:  BCS.W           loc_7C714
7C5F2:  MOV.W           R0, R9,LSL#2; unsigned int
7C5F6:  BLX             j__Znwj; operator new(uint)
7C5FA:  MOV             R4, R0
7C5FC:  B               loc_7C60E
7C5FE:  LDR             R0, [R2]
7C600:  MOV             R1, R9
7C602:  STR.W           R0, [R1],#4
7C606:  STR.W           R1, [R10,#4]
7C60A:  B               loc_7C704
7C60C:  MOVS            R4, #0
7C60E:  ADD.W           R3, R4, R9,LSL#2
7C612:  ADD.W           R2, R4, R11,LSL#2
7C616:  CMP             R11, R9
7C618:  BNE             loc_7C63C
7C61A:  LDR             R5, [SP,#0x28+var_24]
7C61C:  CMP.W           R8, #1
7C620:  BLT             loc_7C688
7C622:  ADD.W           R0, R11, #1
7C626:  MOV             R1, #0xFFFFFFFD
7C62A:  MOV             R9, R2
7C62C:  MOV             R11, R3
7C62E:  ADD.W           R0, R0, R0,LSR#31
7C632:  AND.W           R0, R1, R0,LSL#1
7C636:  SUB.W           R9, R2, R0
7C63A:  B               loc_7C6BE
7C63C:  LDR             R5, [SP,#0x28+var_24]
7C63E:  MOV             R9, R2
7C640:  MOV             R11, R3
7C642:  B               loc_7C6BE
7C644:  MOV             R3, R1
7C646:  MOV             R0, R5
7C648:  LDR.W           R1, [R3],#4
7C64C:  STR.W           R1, [R0],#4
7C650:  CMP             R3, R5
7C652:  BCC             loc_7C648
7C654:  STR.W           R0, [R10,#4]
7C658:  CBZ             R2, loc_7C668
7C65A:  SUB.W           R0, R5, R12,LSL#2; dest
7C65E:  MOV             R1, R9; src
7C660:  BLX             j_memmove
7C664:  LDR.W           R0, [R10,#4]
7C668:  LDR             R2, [SP,#0x28+var_20]
7C66A:  MOVS            R1, #0
7C66C:  CMP             R0, R2
7C66E:  MOV.W           R0, #0
7C672:  IT HI
7C674:  MOVHI           R0, #1
7C676:  CMP             R9, R2
7C678:  IT LS
7C67A:  MOVLS           R1, #1
7C67C:  ANDS            R0, R1
7C67E:  LDR.W           R0, [R2,R0,LSL#2]
7C682:  STR.W           R0, [R9]
7C686:  B               loc_7C704
7C688:  MOV.W           R9, R8,ASR#1
7C68C:  CMP.W           R8, #0
7C690:  IT EQ
7C692:  MOVEQ.W         R9, #1
7C696:  CMP.W           R9, #0x40000000
7C69A:  BCS             loc_7C71C
7C69C:  MOV.W           R0, R9,LSL#2; unsigned int
7C6A0:  BLX             j__Znwj; operator new(uint)
7C6A4:  BIC.W           R1, R9, #3
7C6A8:  ADD.W           R11, R0, R9,LSL#2
7C6AC:  ADD.W           R9, R0, R1
7C6B0:  CBZ             R4, loc_7C6BC
7C6B2:  MOV             R0, R4; void *
7C6B4:  BLX             j__ZdlPv; operator delete(void *)
7C6B8:  LDR.W           R6, [R10]
7C6BC:  LDR             R5, [SP,#0x28+var_24]
7C6BE:  LDR             R0, [SP,#0x28+var_20]
7C6C0:  SUBS            R2, R5, R6; n
7C6C2:  SUB.W           R8, R9, R2
7C6C6:  CMP             R2, #1
7C6C8:  MOV             R4, R9
7C6CA:  LDR             R0, [R0]
7C6CC:  STR.W           R0, [R4],#4
7C6D0:  ITTT GE
7C6D2:  MOVGE           R0, R8; dest
7C6D4:  MOVGE           R1, R6; src
7C6D6:  BLXGE           j_memcpy
7C6DA:  LDR.W           R0, [R10,#4]
7C6DE:  SUBS            R6, R0, R5
7C6E0:  CMP             R6, #1
7C6E2:  BLT             loc_7C6F0
7C6E4:  MOV             R0, R4; dest
7C6E6:  MOV             R1, R5; src
7C6E8:  MOV             R2, R6; n
7C6EA:  BLX             j_memcpy
7C6EE:  ADD             R4, R6
7C6F0:  LDR.W           R0, [R10]; void *
7C6F4:  STRD.W          R4, R11, [R10,#4]
7C6F8:  CMP             R0, #0
7C6FA:  STR.W           R8, [R10]
7C6FE:  IT NE
7C700:  BLXNE           j__ZdlPv; operator delete(void *)
7C704:  MOV             R0, R9
7C706:  ADD             SP, SP, #0xC
7C708:  POP.W           {R8-R11}
7C70C:  POP             {R4-R7,PC}
7C70E:  MOV             R0, R10
7C710:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7C714:  LDR             R0, =(aAllocatorTAllo - 0x7C71A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7C716:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7C718:  BL              sub_7B270
7C71C:  LDR             R0, =(aAllocatorTAllo - 0x7C722); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7C71E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7C720:  BL              sub_7B270
