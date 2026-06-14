; =========================================================
; Game Engine Function: sub_15C53C
; Address            : 0x15C53C - 0x15C614
; =========================================================

15C53C:  PUSH            {R4-R7,LR}
15C53E:  ADD             R7, SP, #0xC
15C540:  PUSH.W          {R8,R9,R11}
15C544:  SUB             SP, SP, #0x18
15C546:  MOV             R9, R0
15C548:  MOV             R0, SP; this
15C54A:  BLX             j__ZNKSt6__ndk14__fs10filesystem4path13__parent_pathEv; std::__fs::filesystem::path::__parent_path(void)
15C54E:  LDR             R5, [SP,#0x30+n]
15C550:  CMN.W           R5, #0x10
15C554:  BCS             loc_15C5AA
15C556:  LDR.W           R8, [SP,#0x30+src]
15C55A:  CMP             R5, #0xB
15C55C:  BCS             loc_15C56E
15C55E:  LSLS            R0, R5, #1
15C560:  STRB.W          R0, [SP,#0x30+var_28]
15C564:  ADD             R0, SP, #0x30+var_28
15C566:  ADD.W           R6, R0, #1
15C56A:  CBNZ            R5, loc_15C586
15C56C:  B               loc_15C590
15C56E:  ADD.W           R0, R5, #0x10
15C572:  BIC.W           R4, R0, #0xF
15C576:  MOV             R0, R4; unsigned int
15C578:  BLX             j__Znwj; operator new(uint)
15C57C:  MOV             R6, R0
15C57E:  STRD.W          R5, R0, [SP,#0x30+var_28+4]
15C582:  ADDS            R0, R4, #1
15C584:  STR             R0, [SP,#0x30+var_28]
15C586:  MOV             R0, R6; dest
15C588:  MOV             R1, R8; src
15C58A:  MOV             R2, R5; n
15C58C:  BLX             j_memcpy
15C590:  MOVS            R0, #0
15C592:  STRB            R0, [R6,R5]
15C594:  VLDR            D16, [SP,#0x30+var_28]
15C598:  LDR             R0, [SP,#0x30+var_20]
15C59A:  STR.W           R0, [R9,#8]
15C59E:  VSTR            D16, [R9]
15C5A2:  ADD             SP, SP, #0x18
15C5A4:  POP.W           {R8,R9,R11}
15C5A8:  POP             {R4-R7,PC}
15C5AA:  ADD             R0, SP, #0x30+var_28
15C5AC:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
15C5B0:  PUSH            {R4,R5,R7,LR}
15C5B2:  ADD             R7, SP, #8
15C5B4:  SUB             SP, SP, #0x10
15C5B6:  MOV             R5, R0
15C5B8:  ADD             R0, SP, #0x18+var_10
15C5BA:  MOV             R4, R3
15C5BC:  STR             R3, [SP,#0x18+var_18]
15C5BE:  MOV             R3, R2
15C5C0:  BL              sub_15D888
15C5C4:  LDRB.W          R1, [SP,#0x18+var_C]
15C5C8:  LDR             R0, [SP,#0x18+var_10]
15C5CA:  STR             R0, [R5]
15C5CC:  STRB            R1, [R5,#4]
15C5CE:  CBZ             R1, loc_15C5D4
15C5D0:  ADD             SP, SP, #0x10
15C5D2:  POP             {R4,R5,R7,PC}
15C5D4:  MOVS            R3, #0
15C5D6:  LDRD.W          R1, R2, [R4]
15C5DA:  STRD.W          R3, R3, [R4]
15C5DE:  LDR             R4, [R0,#0x10]
15C5E0:  STRD.W          R1, R2, [R0,#0xC]
15C5E4:  CMP             R4, #0
15C5E6:  BEQ             loc_15C5D0
15C5E8:  ADDS            R0, R4, #4
15C5EA:  DMB.W           ISH
15C5EE:  LDREX.W         R1, [R0]
15C5F2:  SUBS            R2, R1, #1
15C5F4:  STREX.W         R3, R2, [R0]
15C5F8:  CMP             R3, #0
15C5FA:  BNE             loc_15C5EE
15C5FC:  CMP             R1, #0
15C5FE:  DMB.W           ISH
15C602:  BNE             loc_15C5D0
15C604:  LDR             R0, [R4]
15C606:  LDR             R1, [R0,#8]
15C608:  MOV             R0, R4
15C60A:  BLX             R1
15C60C:  MOV             R0, R4; this
15C60E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15C612:  B               loc_15C5D0
