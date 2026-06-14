; =========================================================
; Game Engine Function: sub_8533C
; Address            : 0x8533C - 0x85414
; =========================================================

8533C:  PUSH            {R4-R7,LR}
8533E:  ADD             R7, SP, #0xC
85340:  PUSH.W          {R8,R9,R11}
85344:  MOV             R4, R0
85346:  MOV             R8, R1
85348:  LDR             R0, [R0]
8534A:  LDR             R1, [R4,#4]
8534C:  SUBS            R5, R1, R0
8534E:  MOVS            R1, #1
85350:  ADD.W           R6, R1, R5,ASR#2
85354:  CMP.W           R6, #0x40000000
85358:  BCS             loc_85406
8535A:  LDR             R1, [R4,#8]
8535C:  MOV.W           R9, #0
85360:  SUBS            R0, R1, R0
85362:  MOV             R1, #0x7FFFFFFC
8536A:  CMP.W           R6, R0,ASR#1
8536E:  IT LS
85370:  ASRLS           R6, R0, #1
85372:  CMP             R0, R1
85374:  IT CS
85376:  MOVCS           R6, #0x3FFFFFFF
8537A:  CBZ             R6, loc_8538A
8537C:  CMP.W           R6, #0x40000000
85380:  BCS             loc_8540C
85382:  LSLS            R0, R6, #2; unsigned int
85384:  BLX             j__Znwj; operator new(uint)
85388:  B               loc_8538C
8538A:  MOVS            R0, #0
8538C:  ASRS            R2, R5, #2
8538E:  LDR.W           R1, [R8]; std::nothrow_t *
85392:  ADD.W           R2, R0, R2,LSL#2
85396:  STR.W           R9, [R8]
8539A:  LDRD.W          R5, R3, [R4]
8539E:  ADD.W           R12, R0, R6,LSL#2
853A2:  MOV             R0, R2
853A4:  STR.W           R1, [R0],#4
853A8:  CMP             R3, R5
853AA:  BEQ             loc_853E8
853AC:  MOVS            R6, #0
853AE:  LDR.W           R1, [R3,#-4]!
853B2:  CMP             R3, R5
853B4:  STR             R6, [R3]
853B6:  STR.W           R1, [R2,#-4]!
853BA:  BNE             loc_853AE
853BC:  LDRD.W          R5, R6, [R4]
853C0:  STRD.W          R2, R0, [R4]
853C4:  CMP             R6, R5
853C6:  STR.W           R12, [R4,#8]
853CA:  BEQ             loc_853F0
853CC:  MOVS            R4, #0
853CE:  B               loc_853D4
853D0:  CMP             R6, R5
853D2:  BEQ             loc_853F0
853D4:  LDR.W           R0, [R6,#-4]!
853D8:  CMP             R0, #0
853DA:  STR             R4, [R6]
853DC:  BEQ             loc_853D0
853DE:  BL              sub_7DACC
853E2:  BLX             j__ZdlPv; operator delete(void *)
853E6:  B               loc_853D0
853E8:  STRD.W          R2, R0, [R4]
853EC:  STR.W           R12, [R4,#8]
853F0:  CBZ             R5, loc_85400
853F2:  MOV             R0, R5; void *
853F4:  POP.W           {R8,R9,R11}
853F8:  POP.W           {R4-R7,LR}
853FC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
85400:  POP.W           {R8,R9,R11}
85404:  POP             {R4-R7,PC}
85406:  MOV             R0, R4
85408:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
8540C:  LDR             R0, =(aAllocatorTAllo - 0x85412); "allocator<T>::allocate(size_t n) 'n' ex"... ...
8540E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
85410:  BL              sub_7B270
