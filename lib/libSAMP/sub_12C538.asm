; =========================================================
; Game Engine Function: sub_12C538
; Address            : 0x12C538 - 0x12C5E4
; =========================================================

12C538:  PUSH            {R4-R7,LR}
12C53A:  ADD             R7, SP, #0xC
12C53C:  PUSH.W          {R8}
12C540:  SUB             SP, SP, #0x18
12C542:  MOV             R4, R0
12C544:  MOV             R8, R1
12C546:  LDR             R0, [R0]
12C548:  LDR             R1, [R4,#4]
12C54A:  SUBS            R6, R1, R0
12C54C:  MOVS            R1, #1
12C54E:  ADD.W           R5, R1, R6,ASR#2
12C552:  CMP.W           R5, #0x40000000
12C556:  BCS             loc_12C5D6
12C558:  MOV             R1, R4
12C55A:  LDR.W           R2, [R1,#8]!
12C55E:  STR             R1, [SP,#0x28+var_14]
12C560:  MOVW            R1, #0xFFFC
12C564:  SUBS            R0, R2, R0
12C566:  MOVT            R1, #0x7FFF
12C56A:  CMP.W           R5, R0,ASR#1
12C56E:  IT LS
12C570:  ASRLS           R5, R0, #1
12C572:  CMP             R0, R1
12C574:  IT CS
12C576:  MOVCS           R5, #0x3FFFFFFF
12C57A:  CBZ             R5, loc_12C58A
12C57C:  CMP.W           R5, #0x40000000
12C580:  BCS             loc_12C5DC
12C582:  LSLS            R0, R5, #2; unsigned int
12C584:  BLX             j__Znwj; operator new(uint)
12C588:  B               loc_12C58C
12C58A:  MOVS            R0, #0
12C58C:  ASRS            R1, R6, #2
12C58E:  ADD.W           R2, R0, R5,LSL#2
12C592:  ADD.W           R1, R0, R1,LSL#2
12C596:  STR             R2, [SP,#0x28+var_18]
12C598:  LDR.W           R2, [R8]
12C59C:  STRD.W          R0, R1, [SP,#0x28+var_24]
12C5A0:  STR.W           R2, [R1],#4
12C5A4:  STR             R1, [SP,#0x28+var_1C]
12C5A6:  ADD             R1, SP, #0x28+var_24
12C5A8:  MOV             R0, R4
12C5AA:  BL              sub_12C60C
12C5AE:  LDRD.W          R1, R0, [SP,#0x28+var_20]
12C5B2:  CMP             R0, R1
12C5B4:  ITTTT NE
12C5B6:  SUBNE           R1, R0, R1
12C5B8:  SUBNE           R1, #4
12C5BA:  MVNNE.W         R1, R1,LSR#2
12C5BE:  ADDNE.W         R0, R0, R1,LSL#2
12C5C2:  IT NE
12C5C4:  STRNE           R0, [SP,#0x28+var_1C]
12C5C6:  LDR             R0, [SP,#0x28+var_24]; void *
12C5C8:  CBZ             R0, loc_12C5CE
12C5CA:  BLX             j__ZdlPv; operator delete(void *)
12C5CE:  ADD             SP, SP, #0x18
12C5D0:  POP.W           {R8}
12C5D4:  POP             {R4-R7,PC}
12C5D6:  MOV             R0, R4
12C5D8:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
12C5DC:  LDR             R0, =(aAllocatorTAllo - 0x12C5E2); "allocator<T>::allocate(size_t n) 'n' ex"... ...
12C5DE:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
12C5E0:  BL              sub_DC8D4
