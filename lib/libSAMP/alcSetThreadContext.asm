; =========================================================
; Game Engine Function: alcSetThreadContext
; Address            : 0x1BF770 - 0x1BF8BC
; =========================================================

1BF770:  PUSH            {R4-R6,R10,R11,LR}
1BF774:  ADD             R11, SP, #0x10
1BF778:  MOV             R4, R0
1BF77C:  CMP             R4, #0
1BF780:  BEQ             loc_1BF81C
1BF784:  LDR             R0, =(unk_3827A0 - 0x1BF790)
1BF788:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF78C:  BL              j_EnterCriticalSection
1BF790:  LDR             R0, =(dword_382838 - 0x1BF79C)
1BF794:  LDR             R0, [PC,R0]; dword_382838
1BF798:  CMP             R0, #0
1BF79C:  BEQ             loc_1BF7E4
1BF7A0:  MOVW            R1, #:lower16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1BF7A4:  MOVW            R2, #:lower16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BF7A8:  MOVT            R1, #:upper16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1BF7AC:  MOVT            R2, #:upper16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BF7B0:  LDR             R3, [R0,R1]
1BF7B4:  CMP             R3, #0
1BF7B8:  BNE             loc_1BF7CC
1BF7BC:  B               loc_1BF7D8
1BF7C0:  LDR             R3, [R3,#0x104]
1BF7C4:  CMP             R3, #0
1BF7C8:  BEQ             loc_1BF7D8
1BF7CC:  CMP             R3, R4
1BF7D0:  BNE             loc_1BF7C0
1BF7D4:  B               loc_1BF824
1BF7D8:  LDR             R0, [R0,R2]
1BF7DC:  CMP             R0, #0
1BF7E0:  BNE             loc_1BF7B0
1BF7E4:  LDR             R0, =(unk_3827A0 - 0x1BF7F0)
1BF7E8:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF7EC:  BL              j_LeaveCriticalSection
1BF7F0:  LDR             R0, =(byte_382798 - 0x1BF7FC)
1BF7F4:  LDRB            R0, [PC,R0]; byte_382798
1BF7F8:  CMP             R0, #0
1BF7FC:  BEQ             loc_1BF808
1BF800:  MOV             R0, #5; sig
1BF804:  BL              raise
1BF808:  LDR             R0, =(dword_38283C - 0x1BF81C)
1BF80C:  MOVW            R1, #0xA002
1BF810:  MOV             R4, #0
1BF814:  STR             R1, [PC,R0]; dword_38283C
1BF818:  B               loc_1BF8B4
1BF81C:  MOV             R4, #0
1BF820:  B               loc_1BF878
1BF824:  DMB             ISH
1BF828:  LDREX           R0, [R4]
1BF82C:  ADD             R3, R0, #1
1BF830:  STREX           R0, R3, [R4]
1BF834:  CMP             R0, #0
1BF838:  BNE             loc_1BF828
1BF83C:  LDR             R0, =(LogLevel_ptr - 0x1BF84C)
1BF840:  DMB             ISH
1BF844:  LDR             R0, [PC,R0]; LogLevel
1BF848:  LDR             R0, [R0]
1BF84C:  CMP             R0, #4
1BF850:  BCC             loc_1BF86C
1BF854:  LDR             R0, =(aAlccontextIncr_0 - 0x1BF868); "ALCcontext_IncRef" ...
1BF858:  MOV             R2, R4
1BF85C:  LDR             R1, =(aPIncreasingRef - 0x1BF86C); "%p increasing refcount to %u\n" ...
1BF860:  ADD             R0, PC, R0; "ALCcontext_IncRef"
1BF864:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BF868:  BL              j_al_print
1BF86C:  LDR             R0, =(unk_3827A0 - 0x1BF878)
1BF870:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF874:  BL              j_LeaveCriticalSection
1BF878:  LDR             R0, =(dword_38279C - 0x1BF884)
1BF87C:  ADD             R6, PC, R0; dword_38279C
1BF880:  LDR             R0, [R6]; key
1BF884:  BL              pthread_getspecific
1BF888:  MOV             R5, R0
1BF88C:  LDR             R0, [R6]; key
1BF890:  MOV             R1, R4; pointer
1BF894:  BL              pthread_setspecific
1BF898:  MOV             R4, #1
1BF89C:  CMP             R5, #0
1BF8A0:  BEQ             loc_1BF8B4
1BF8A4:  MOV             R0, R5
1BF8A8:  BL              j_ALCcontext_DecRef
1BF8AC:  MOV             R0, R4
1BF8B0:  POP             {R4-R6,R10,R11,PC}
1BF8B4:  MOV             R0, R4
1BF8B8:  POP             {R4-R6,R10,R11,PC}
