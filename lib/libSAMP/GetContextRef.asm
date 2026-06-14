; =========================================================
; Game Engine Function: GetContextRef
; Address            : 0x1BB5D8 - 0x1BB6C0
; =========================================================

1BB5D8:  PUSH            {R4,R10,R11,LR}
1BB5DC:  ADD             R11, SP, #8
1BB5E0:  LDR             R0, =(dword_38279C - 0x1BB5EC)
1BB5E4:  LDR             R0, [PC,R0]; dword_38279C ; key
1BB5E8:  BL              pthread_getspecific
1BB5EC:  MOV             R4, R0
1BB5F0:  CMP             R4, #0
1BB5F4:  BEQ             loc_1BB648
1BB5F8:  DMB             ISH
1BB5FC:  LDREX           R0, [R4]
1BB600:  ADD             R3, R0, #1
1BB604:  STREX           R0, R3, [R4]
1BB608:  CMP             R0, #0
1BB60C:  BNE             loc_1BB5FC
1BB610:  LDR             R0, =(LogLevel_ptr - 0x1BB620)
1BB614:  DMB             ISH
1BB618:  LDR             R0, [PC,R0]; LogLevel
1BB61C:  LDR             R0, [R0]
1BB620:  CMP             R0, #4
1BB624:  BCC             loc_1BB6B8
1BB628:  LDR             R0, =(aAlccontextIncr_0 - 0x1BB63C); "ALCcontext_IncRef" ...
1BB62C:  MOV             R2, R4
1BB630:  LDR             R1, =(aPIncreasingRef - 0x1BB640); "%p increasing refcount to %u\n" ...
1BB634:  ADD             R0, PC, R0; "ALCcontext_IncRef"
1BB638:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BB63C:  BL              j_al_print
1BB640:  MOV             R0, R4
1BB644:  POP             {R4,R10,R11,PC}
1BB648:  LDR             R0, =(unk_3827A0 - 0x1BB654)
1BB64C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BB650:  BL              j_EnterCriticalSection
1BB654:  LDR             R0, =(dword_382830 - 0x1BB660)
1BB658:  LDR             R4, [PC,R0]; dword_382830
1BB65C:  CMP             R4, #0
1BB660:  BEQ             loc_1BB6AC
1BB664:  DMB             ISH
1BB668:  LDREX           R0, [R4]
1BB66C:  ADD             R3, R0, #1
1BB670:  STREX           R0, R3, [R4]
1BB674:  CMP             R0, #0
1BB678:  BNE             loc_1BB668
1BB67C:  LDR             R0, =(LogLevel_ptr - 0x1BB68C)
1BB680:  DMB             ISH
1BB684:  LDR             R0, [PC,R0]; LogLevel
1BB688:  LDR             R0, [R0]
1BB68C:  CMP             R0, #4
1BB690:  BCC             loc_1BB6AC
1BB694:  LDR             R0, =(aAlccontextIncr_0 - 0x1BB6A8); "ALCcontext_IncRef" ...
1BB698:  MOV             R2, R4
1BB69C:  LDR             R1, =(aPIncreasingRef - 0x1BB6AC); "%p increasing refcount to %u\n" ...
1BB6A0:  ADD             R0, PC, R0; "ALCcontext_IncRef"
1BB6A4:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BB6A8:  BL              j_al_print
1BB6AC:  LDR             R0, =(unk_3827A0 - 0x1BB6B8)
1BB6B0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BB6B4:  BL              j_LeaveCriticalSection
1BB6B8:  MOV             R0, R4
1BB6BC:  POP             {R4,R10,R11,PC}
