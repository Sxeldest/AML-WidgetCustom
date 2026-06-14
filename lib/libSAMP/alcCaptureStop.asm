; =========================================================
; Game Engine Function: alcCaptureStop
; Address            : 0x1BC7E0 - 0x1BC928
; =========================================================

1BC7E0:  PUSH            {R4,R5,R11,LR}
1BC7E4:  ADD             R11, SP, #8
1BC7E8:  MOV             R5, R0
1BC7EC:  CMP             R5, #0
1BC7F0:  BEQ             loc_1BC8D4
1BC7F4:  LDR             R0, =(unk_3827A0 - 0x1BC800)
1BC7F8:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC7FC:  BL              j_EnterCriticalSection
1BC800:  LDR             R0, =(dword_382838 - 0x1BC80C)
1BC804:  ADD             R1, PC, R0; dword_382838
1BC808:  MOV             R0, #0x2895C
1BC810:  LDR             R4, [R1]
1BC814:  CMP             R4, #0
1BC818:  ADDNE           R1, R4, R0
1BC81C:  CMPNE           R4, R5
1BC820:  BNE             loc_1BC810
1BC824:  CMP             R4, #0
1BC828:  BEQ             loc_1BC8C8
1BC82C:  DMB             ISH
1BC830:  LDREX           R0, [R4]
1BC834:  ADD             R3, R0, #1
1BC838:  STREX           R0, R3, [R4]
1BC83C:  CMP             R0, #0
1BC840:  BNE             loc_1BC830
1BC844:  LDR             R0, =(LogLevel_ptr - 0x1BC854)
1BC848:  DMB             ISH
1BC84C:  LDR             R0, [PC,R0]; LogLevel
1BC850:  LDR             R0, [R0]
1BC854:  CMP             R0, #4
1BC858:  BCC             loc_1BC874
1BC85C:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BC870); "ALCdevice_IncRef" ...
1BC860:  MOV             R2, R4
1BC864:  LDR             R1, =(aPIncreasingRef - 0x1BC874); "%p increasing refcount to %u\n" ...
1BC868:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BC86C:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BC870:  BL              j_al_print
1BC874:  LDR             R0, =(unk_3827A0 - 0x1BC880)
1BC878:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC87C:  BL              j_LeaveCriticalSection
1BC880:  LDRB            R0, [R4,#5]
1BC884:  CMP             R0, #0
1BC888:  BEQ             loc_1BC8FC
1BC88C:  ADD             R5, R4, #8
1BC890:  MOV             R0, R5; mutex
1BC894:  BL              j_EnterCriticalSection
1BC898:  LDRB            R0, [R4,#4]
1BC89C:  CMP             R0, #0
1BC8A0:  BEQ             loc_1BC8BC
1BC8A4:  MOV             R0, #0x28954
1BC8AC:  LDR             R0, [R4,R0]
1BC8B0:  LDR             R1, [R0,#0x1C]
1BC8B4:  MOV             R0, R4
1BC8B8:  BLX             R1
1BC8BC:  MOV             R0, R5; mutex
1BC8C0:  BL              j_LeaveCriticalSection
1BC8C4:  B               loc_1BC91C
1BC8C8:  LDR             R0, =(unk_3827A0 - 0x1BC8D4)
1BC8CC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC8D0:  BL              j_LeaveCriticalSection
1BC8D4:  LDR             R0, =(byte_382798 - 0x1BC8E0)
1BC8D8:  LDRB            R0, [PC,R0]; byte_382798
1BC8DC:  CMP             R0, #0
1BC8E0:  BEQ             loc_1BC8EC
1BC8E4:  MOV             R0, #5; sig
1BC8E8:  BL              raise
1BC8EC:  LDR             R0, =(dword_38283C - 0x1BC8FC)
1BC8F0:  MOVW            R1, #0xA001
1BC8F4:  STR             R1, [PC,R0]; dword_38283C
1BC8F8:  POP             {R4,R5,R11,PC}
1BC8FC:  LDR             R0, =(byte_382798 - 0x1BC908)
1BC900:  LDRB            R0, [PC,R0]; byte_382798
1BC904:  CMP             R0, #0
1BC908:  BEQ             loc_1BC914
1BC90C:  MOV             R0, #5; sig
1BC910:  BL              raise
1BC914:  MOVW            R0, #0xA001
1BC918:  STR             R0, [R4,#0x24]
1BC91C:  MOV             R0, R4
1BC920:  POP             {R4,R5,R11,LR}
1BC924:  B               j_ALCdevice_DecRef
