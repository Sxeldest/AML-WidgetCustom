; =========================================================
; Game Engine Function: alcMakeContextCurrent
; Address            : 0x1BF5CC - 0x1BF740
; =========================================================

1BF5CC:  PUSH            {R4,R5,R11,LR}
1BF5D0:  ADD             R11, SP, #8
1BF5D4:  MOV             R4, R0
1BF5D8:  CMP             R4, #0
1BF5DC:  BEQ             loc_1BF678
1BF5E0:  LDR             R0, =(unk_3827A0 - 0x1BF5EC)
1BF5E4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF5E8:  BL              j_EnterCriticalSection
1BF5EC:  LDR             R0, =(dword_382838 - 0x1BF5F8)
1BF5F0:  LDR             R0, [PC,R0]; dword_382838
1BF5F4:  CMP             R0, #0
1BF5F8:  BEQ             loc_1BF640
1BF5FC:  MOVW            R1, #:lower16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1BF600:  MOVW            R2, #:lower16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BF604:  MOVT            R1, #:upper16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1BF608:  MOVT            R2, #:upper16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BF60C:  LDR             R3, [R0,R1]
1BF610:  CMP             R3, #0
1BF614:  BNE             loc_1BF628
1BF618:  B               loc_1BF634
1BF61C:  LDR             R3, [R3,#0x104]
1BF620:  CMP             R3, #0
1BF624:  BEQ             loc_1BF634
1BF628:  CMP             R3, R4
1BF62C:  BNE             loc_1BF61C
1BF630:  B               loc_1BF680
1BF634:  LDR             R0, [R0,R2]
1BF638:  CMP             R0, #0
1BF63C:  BNE             loc_1BF60C
1BF640:  LDR             R0, =(unk_3827A0 - 0x1BF64C)
1BF644:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF648:  BL              j_LeaveCriticalSection
1BF64C:  LDR             R0, =(byte_382798 - 0x1BF658)
1BF650:  LDRB            R0, [PC,R0]; byte_382798
1BF654:  CMP             R0, #0
1BF658:  BEQ             loc_1BF664
1BF65C:  MOV             R0, #5; sig
1BF660:  BL              raise
1BF664:  LDR             R0, =(dword_38283C - 0x1BF678)
1BF668:  MOVW            R1, #0xA002
1BF66C:  MOV             R4, #0
1BF670:  STR             R1, [PC,R0]; dword_38283C
1BF674:  B               loc_1BF738
1BF678:  MOV             R4, #0
1BF67C:  B               loc_1BF6D4
1BF680:  DMB             ISH
1BF684:  LDREX           R0, [R4]
1BF688:  ADD             R3, R0, #1
1BF68C:  STREX           R0, R3, [R4]
1BF690:  CMP             R0, #0
1BF694:  BNE             loc_1BF684
1BF698:  LDR             R0, =(LogLevel_ptr - 0x1BF6A8)
1BF69C:  DMB             ISH
1BF6A0:  LDR             R0, [PC,R0]; LogLevel
1BF6A4:  LDR             R0, [R0]
1BF6A8:  CMP             R0, #4
1BF6AC:  BCC             loc_1BF6C8
1BF6B0:  LDR             R0, =(aAlccontextIncr_0 - 0x1BF6C4); "ALCcontext_IncRef" ...
1BF6B4:  MOV             R2, R4
1BF6B8:  LDR             R1, =(aPIncreasingRef - 0x1BF6C8); "%p increasing refcount to %u\n" ...
1BF6BC:  ADD             R0, PC, R0; "ALCcontext_IncRef"
1BF6C0:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BF6C4:  BL              j_al_print
1BF6C8:  LDR             R0, =(unk_3827A0 - 0x1BF6D4)
1BF6CC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF6D0:  BL              j_LeaveCriticalSection
1BF6D4:  LDR             R0, =(dword_382830 - 0x1BF6E4)
1BF6D8:  DMB             ISH
1BF6DC:  ADD             R1, PC, R0; dword_382830
1BF6E0:  LDREX           R0, [R1]
1BF6E4:  STREX           R2, R4, [R1]
1BF6E8:  CMP             R2, #0
1BF6EC:  BNE             loc_1BF6E0
1BF6F0:  CMP             R0, #0
1BF6F4:  DMB             ISH
1BF6F8:  BLNE            j_ALCcontext_DecRef
1BF6FC:  LDR             R0, =(dword_38279C - 0x1BF708)
1BF700:  LDR             R0, [PC,R0]; dword_38279C ; key
1BF704:  BL              pthread_getspecific
1BF708:  MOV             R5, R0
1BF70C:  MOV             R4, #1
1BF710:  CMP             R5, #0
1BF714:  BEQ             loc_1BF738
1BF718:  LDR             R0, =(dword_38279C - 0x1BF728)
1BF71C:  MOV             R1, #0; pointer
1BF720:  LDR             R0, [PC,R0]; dword_38279C ; key
1BF724:  BL              pthread_setspecific
1BF728:  MOV             R0, R5
1BF72C:  BL              j_ALCcontext_DecRef
1BF730:  MOV             R0, R4
1BF734:  POP             {R4,R5,R11,PC}
1BF738:  MOV             R0, R4
1BF73C:  POP             {R4,R5,R11,PC}
