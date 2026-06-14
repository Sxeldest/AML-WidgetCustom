; =========================================================
; Game Engine Function: sub_83518
; Address            : 0x83518 - 0x83698
; =========================================================

83518:  PUSH            {R4-R7,LR}
8351A:  ADD             R7, SP, #0xC
8351C:  PUSH.W          {R8,R9,R11}
83520:  SUB             SP, SP, #0x18
83522:  MOV             R4, R0
83524:  LDR             R0, =(__stack_chk_guard_ptr - 0x83530)
83526:  MOV             R8, R1
83528:  MOVW            R2, #0xAAAB
8352C:  ADD             R0, PC; __stack_chk_guard_ptr
8352E:  MOVT            R2, #0xAAAA
83532:  MOVW            R12, #0x5555
83536:  LDR             R0, [R0]; __stack_chk_guard
83538:  MOVT            R12, #0x1555
8353C:  LDR             R0, [R0]
8353E:  STR             R0, [SP,#0x30+var_1C]
83540:  LDRD.W          R1, R0, [R4]
83544:  SUBS            R0, R0, R1
83546:  ASRS            R0, R0, #2
83548:  MUL.W           R5, R0, R2
8354C:  ADDS            R6, R5, #1
8354E:  CMP             R6, R12
83550:  BHI.W           loc_83684
83554:  MOV             R3, R4
83556:  LDR.W           R0, [R3,#8]!
8355A:  STR             R3, [SP,#0x30+var_20]
8355C:  SUBS            R0, R0, R1
8355E:  MOV             R1, #0xAAAAAAA
83566:  ASRS            R0, R0, #2
83568:  MULS            R0, R2
8356A:  CMP.W           R6, R0,LSL#1
8356E:  IT LS
83570:  LSLLS           R6, R0, #1
83572:  CMP             R0, R1
83574:  IT CS
83576:  MOVCS           R6, R12
83578:  CBZ             R6, loc_8358C
8357A:  CMP             R6, R12
8357C:  BHI.W           loc_83690
83580:  ADD.W           R0, R6, R6,LSL#1
83584:  LSLS            R0, R0, #2; unsigned int
83586:  BLX             j__Znwj; operator new(uint)
8358A:  B               loc_8358E
8358C:  MOVS            R0, #0
8358E:  ADD.W           R1, R5, R5,LSL#1
83592:  LDR.W           R8, [R8]
83596:  STR             R0, [SP,#0x30+var_30]
83598:  ADD.W           R5, R0, R1,LSL#2
8359C:  ADD.W           R1, R6, R6,LSL#1
835A0:  STR             R5, [SP,#0x30+var_28]
835A2:  ADD.W           R0, R0, R1,LSL#2
835A6:  STR             R0, [SP,#0x30+var_24]
835A8:  MOV             R0, R8; s
835AA:  STR             R5, [SP,#0x30+var_2C]
835AC:  BLX             strlen
835B0:  CMN.W           R0, #0x10
835B4:  BCS             loc_8368A
835B6:  MOV             R6, R0
835B8:  CMP             R0, #0xB
835BA:  BCS             loc_835C6
835BC:  LSLS            R0, R6, #1
835BE:  STRB.W          R0, [R5],#1
835C2:  CBNZ            R6, loc_835E0
835C4:  B               loc_835EA
835C6:  ADD.W           R0, R6, #0x10
835CA:  BIC.W           R9, R0, #0xF
835CE:  MOV             R0, R9; unsigned int
835D0:  BLX             j__Znwj; operator new(uint)
835D4:  ORR.W           R1, R9, #1
835D8:  STRD.W          R1, R6, [R5]
835DC:  STR             R0, [R5,#8]
835DE:  MOV             R5, R0
835E0:  MOV             R0, R5; dest
835E2:  MOV             R1, R8; src
835E4:  MOV             R2, R6; n
835E6:  BLX             j_memcpy
835EA:  MOVS            R3, #0
835EC:  STRB            R3, [R5,R6]
835EE:  LDRD.W          R1, R2, [SP,#0x30+var_2C]
835F2:  LDRD.W          R0, R6, [R4]
835F6:  ADDS            R2, #0xC
835F8:  CMP             R6, R0
835FA:  BEQ             loc_83624
835FC:  VLDR            D16, [R6,#-0xC]
83600:  LDR.W           R5, [R6,#-4]
83604:  STR.W           R5, [R1,#-4]
83608:  VSTR            D16, [R1,#-0xC]
8360C:  SUBS            R1, #0xC
8360E:  STRD.W          R3, R3, [R6,#-0xC]
83612:  STR.W           R3, [R6,#-4]
83616:  SUBS            R6, #0xC
83618:  CMP             R6, R0
8361A:  BNE             loc_835FC
8361C:  LDRD.W          R5, R0, [R4]
83620:  STR             R1, [SP,#0x30+var_2C]
83622:  B               loc_83626
83624:  MOV             R5, R0
83626:  CMP             R0, R5
83628:  LDR             R3, [SP,#0x30+var_24]
8362A:  STM             R4!, {R1-R3}
8362C:  BEQ             loc_83646
8362E:  MOV             R4, R0
83630:  LDRB.W          R1, [R4,#-0xC]!
83634:  LSLS            R1, R1, #0x1F
83636:  ITT NE
83638:  LDRNE.W         R0, [R0,#-4]; void *
8363C:  BLXNE           j__ZdlPv; operator delete(void *)
83640:  CMP             R4, R5
83642:  MOV             R0, R4
83644:  BNE             loc_83630
83646:  CBZ             R5, loc_8366A
83648:  LDR             R0, [SP,#0x30+var_1C]
8364A:  LDR             R1, =(__stack_chk_guard_ptr - 0x83650)
8364C:  ADD             R1, PC; __stack_chk_guard_ptr
8364E:  LDR             R1, [R1]; __stack_chk_guard
83650:  LDR             R1, [R1]; std::nothrow_t *
83652:  CMP             R1, R0
83654:  ITTTT EQ
83656:  MOVEQ           R0, R5; void *
83658:  ADDEQ           SP, SP, #0x18
8365A:  POPEQ.W         {R8,R9,R11}
8365E:  POPEQ.W         {R4-R7,LR}
83662:  IT EQ
83664:  BEQ.W           _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
83668:  B               loc_83680
8366A:  LDR             R0, [SP,#0x30+var_1C]
8366C:  LDR             R1, =(__stack_chk_guard_ptr - 0x83672)
8366E:  ADD             R1, PC; __stack_chk_guard_ptr
83670:  LDR             R1, [R1]; __stack_chk_guard
83672:  LDR             R1, [R1]
83674:  CMP             R1, R0
83676:  ITTT EQ
83678:  ADDEQ           SP, SP, #0x18
8367A:  POPEQ.W         {R8,R9,R11}
8367E:  POPEQ           {R4-R7,PC}
83680:  BLX             __stack_chk_fail
83684:  MOV             R0, R4
83686:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
8368A:  MOV             R0, R5
8368C:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
83690:  LDR             R0, =(aAllocatorTAllo - 0x83696); "allocator<T>::allocate(size_t n) 'n' ex"... ...
83692:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
83694:  BL              sub_7B270
