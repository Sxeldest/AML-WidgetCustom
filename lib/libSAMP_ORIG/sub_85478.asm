; =========================================================
; Game Engine Function: sub_85478
; Address            : 0x85478 - 0x8561A
; =========================================================

85478:  PUSH            {R4-R7,LR}
8547A:  ADD             R7, SP, #0xC
8547C:  PUSH.W          {R8-R11}
85480:  SUB             SP, SP, #0x14
85482:  LDRD.W          R5, R9, [R0]
85486:  MOV             R10, R1
85488:  MOVW            R1, #0xAAAB
8548C:  MOV             R8, R0
8548E:  SUB.W           R0, R9, R5
85492:  MOVT            R1, #0x2AAA
85496:  SMMUL.W         R0, R0, R1
8549A:  ASRS            R1, R0, #2
8549C:  ADD.W           R6, R1, R0,LSR#31
854A0:  MOVW            R0, #0xAAAA
854A4:  ADDS            R4, R6, #1
854A6:  MOVT            R0, #0xAAA
854AA:  CMP             R4, R0
854AC:  BHI.W           loc_8560C
854B0:  LDR.W           R1, [R8,#8]
854B4:  MOV             R2, #0xAAAAAAAB
854BC:  SUBS            R1, R1, R5
854BE:  ASRS            R1, R1, #3
854C0:  MULS            R1, R2
854C2:  MOV             R2, #0x5555555
854CA:  CMP.W           R4, R1,LSL#1
854CE:  IT LS
854D0:  LSLLS           R4, R1, #1
854D2:  CMP             R1, R2
854D4:  IT CS
854D6:  MOVCS           R4, R0
854D8:  CBZ             R4, loc_854EE
854DA:  CMP             R4, R0
854DC:  BHI.W           loc_85612
854E0:  ADD.W           R0, R4, R4,LSL#1
854E4:  LSLS            R0, R0, #3; unsigned int
854E6:  BLX             j__Znwj; operator new(uint)
854EA:  MOV             R11, R0
854EC:  B               loc_854F2
854EE:  MOV.W           R11, #0
854F2:  MOV             R1, R10
854F4:  ADD.W           R2, R6, R6,LSL#1
854F8:  LDR.W           R0, [R1,#0x10]!
854FC:  ADD.W           R6, R11, R2,LSL#3
85500:  CBZ             R0, loc_8550A
85502:  CMP             R10, R0
85504:  BEQ             loc_8559C
85506:  STR             R0, [R6,#0x10]
85508:  B               loc_8550E
8550A:  ADD.W           R1, R6, #0x10
8550E:  MOVS            R0, #0
85510:  STR             R0, [R1]
85512:  CMP             R9, R5
85514:  BEQ             loc_855AE
85516:  SUB.W           R10, R9, #0x18
8551A:  STRD.W          R11, R4, [SP,#0x30+var_30]
8551E:  STR.W           R8, [SP,#0x30+var_28]
85522:  SUB.W           R0, R6, #8
85526:  MOV.W           R8, #0
8552A:  MOV.W           R11, #0
8552E:  MOV             R4, R9
85530:  STR             R0, [SP,#0x30+var_20]
85532:  SUB.W           R0, R6, #0x18
85536:  STR             R0, [SP,#0x30+var_24]
85538:  B               loc_85550
8553A:  LDR             R0, [SP,#0x30+var_20]
8553C:  ADD             R0, R11
8553E:  STR.W           R8, [R0]
85542:  SUB.W           R11, R11, #0x18
85546:  SUBS            R4, #0x18
85548:  ADD.W           R0, R9, R11
8554C:  CMP             R0, R5
8554E:  BEQ             loc_8558A
85550:  ADD.W           R0, R9, R11
85554:  LDR.W           R1, [R0,#-8]
85558:  CMP             R1, #0
8555A:  BEQ             loc_8553A
8555C:  ADD.W           R2, R10, R11
85560:  CMP             R2, R1
85562:  BEQ             loc_85572
85564:  SUB.W           R0, R4, #8
85568:  ADD.W           R2, R6, R11
8556C:  STR.W           R1, [R2,#-8]
85570:  B               loc_8553E
85572:  LDR             R1, [SP,#0x30+var_24]
85574:  ADD.W           R2, R6, R11
85578:  ADD             R1, R11
8557A:  STR.W           R1, [R2,#-8]
8557E:  LDR.W           R0, [R0,#-8]
85582:  LDR             R2, [R0]
85584:  LDR             R2, [R2,#0xC]
85586:  BLX             R2
85588:  B               loc_85542
8558A:  LDR.W           R8, [SP,#0x30+var_28]
8558E:  ADD.W           R0, R6, R11
85592:  LDRD.W          R11, R4, [SP,#0x30+var_30]
85596:  LDR.W           R9, [R8]
8559A:  B               loc_855B0
8559C:  LDR             R1, [R0]
8559E:  STR             R6, [R6,#0x10]
855A0:  LDR             R2, [R1,#0xC]
855A2:  MOV             R1, R6
855A4:  BLX             R2
855A6:  LDRD.W          R5, R9, [R8]
855AA:  CMP             R9, R5
855AC:  BNE             loc_85516
855AE:  MOV             R0, R6
855B0:  ADD.W           R1, R4, R4,LSL#1
855B4:  LDR.W           R4, [R8,#4]
855B8:  ADD.W           R2, R6, #0x18
855BC:  STR.W           R0, [R8]
855C0:  ADD.W           R1, R11, R1,LSL#3
855C4:  STR.W           R1, [R8,#8]
855C8:  STR.W           R2, [R8,#4]
855CC:  B               loc_855D8
855CE:  MOVS            R1, #4
855D0:  LDR             R2, [R0]
855D2:  LDR.W           R1, [R2,R1,LSL#2]
855D6:  BLX             R1
855D8:  CMP             R4, R9
855DA:  BEQ             loc_855EE
855DC:  LDR.W           R0, [R4,#-8]
855E0:  SUBS            R4, #0x18
855E2:  CMP             R4, R0
855E4:  BEQ             loc_855CE
855E6:  CMP             R0, #0
855E8:  BEQ             loc_855D8
855EA:  MOVS            R1, #5
855EC:  B               loc_855D0
855EE:  CMP.W           R9, #0
855F2:  BEQ             loc_85604
855F4:  MOV             R0, R9; void *
855F6:  ADD             SP, SP, #0x14
855F8:  POP.W           {R8-R11}
855FC:  POP.W           {R4-R7,LR}
85600:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
85604:  ADD             SP, SP, #0x14
85606:  POP.W           {R8-R11}
8560A:  POP             {R4-R7,PC}
8560C:  MOV             R0, R8
8560E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
85612:  LDR             R0, =(aAllocatorTAllo - 0x85618); "allocator<T>::allocate(size_t n) 'n' ex"... ...
85614:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
85616:  BL              sub_7B270
