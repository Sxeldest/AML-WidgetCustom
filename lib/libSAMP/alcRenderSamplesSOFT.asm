; =========================================================
; Game Engine Function: alcRenderSamplesSOFT
; Address            : 0x1C07AC - 0x1C0910
; =========================================================

1C07AC:  PUSH            {R4-R7,R11,LR}
1C07B0:  ADD             R11, SP, #0x10
1C07B4:  MOV             R7, R0
1C07B8:  MOV             R5, R2
1C07BC:  MOV             R6, R1
1C07C0:  CMP             R7, #0
1C07C4:  BEQ             loc_1C08A8
1C07C8:  LDR             R0, =(unk_3827A0 - 0x1C07D4)
1C07CC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C07D0:  BL              j_EnterCriticalSection
1C07D4:  LDR             R0, =(dword_382838 - 0x1C07E0)
1C07D8:  ADD             R1, PC, R0; dword_382838
1C07DC:  MOV             R0, #0x2895C
1C07E4:  LDR             R4, [R1]
1C07E8:  CMP             R4, #0
1C07EC:  ADDNE           R1, R4, R0
1C07F0:  CMPNE           R4, R7
1C07F4:  BNE             loc_1C07E4
1C07F8:  CMP             R4, #0
1C07FC:  BEQ             loc_1C089C
1C0800:  DMB             ISH
1C0804:  LDREX           R0, [R4]
1C0808:  ADD             R3, R0, #1
1C080C:  STREX           R0, R3, [R4]
1C0810:  CMP             R0, #0
1C0814:  BNE             loc_1C0804
1C0818:  LDR             R0, =(LogLevel_ptr - 0x1C0828)
1C081C:  DMB             ISH
1C0820:  LDR             R0, [PC,R0]; LogLevel
1C0824:  LDR             R0, [R0]
1C0828:  CMP             R0, #4
1C082C:  BCC             loc_1C0848
1C0830:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1C0844); "ALCdevice_IncRef" ...
1C0834:  MOV             R2, R4
1C0838:  LDR             R1, =(aPIncreasingRef - 0x1C0848); "%p increasing refcount to %u\n" ...
1C083C:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1C0840:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1C0844:  BL              j_al_print
1C0848:  LDR             R0, =(unk_3827A0 - 0x1C0854)
1C084C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C0850:  BL              j_LeaveCriticalSection
1C0854:  LDRB            R0, [R4,#6]
1C0858:  CMP             R0, #0
1C085C:  BEQ             loc_1C08F4
1C0860:  CMP             R5, #0
1C0864:  BLT             loc_1C0878
1C0868:  CMP             R6, #0
1C086C:  BNE             loc_1C08FC
1C0870:  CMP             R5, #0
1C0874:  BEQ             loc_1C08FC
1C0878:  LDR             R0, =(byte_382798 - 0x1C0884)
1C087C:  LDRB            R0, [PC,R0]; byte_382798
1C0880:  CMP             R0, #0
1C0884:  BEQ             loc_1C0890
1C0888:  MOV             R0, #5; sig
1C088C:  BL              raise
1C0890:  MOVW            R0, #0xA004
1C0894:  STR             R0, [R4,#0x24]
1C0898:  B               loc_1C08E8
1C089C:  LDR             R0, =(unk_3827A0 - 0x1C08A8)
1C08A0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C08A4:  BL              j_LeaveCriticalSection
1C08A8:  MOV             R5, #0
1C08AC:  MOV             R4, #0
1C08B0:  LDR             R0, =(byte_382798 - 0x1C08BC)
1C08B4:  LDRB            R0, [PC,R0]; byte_382798
1C08B8:  CMP             R0, #0
1C08BC:  BEQ             loc_1C08C8
1C08C0:  MOV             R0, #5; sig
1C08C4:  BL              raise
1C08C8:  LDR             R0, =(dword_38283C - 0x1C08DC)
1C08CC:  CMP             R5, #0
1C08D0:  MOVW            R1, #0xA001
1C08D4:  ADD             R0, PC, R0; dword_38283C
1C08D8:  ADDNE           R0, R4, #0x24 ; '$'
1C08DC:  CMP             R5, #1
1C08E0:  STR             R1, [R0]
1C08E4:  POPNE           {R4-R7,R11,PC}
1C08E8:  MOV             R0, R4
1C08EC:  POP             {R4-R7,R11,LR}
1C08F0:  B               j_ALCdevice_DecRef
1C08F4:  MOV             R5, #1
1C08F8:  B               loc_1C08B0
1C08FC:  MOV             R0, R4
1C0900:  MOV             R1, R6
1C0904:  MOV             R2, R5
1C0908:  BL              j_aluMixData
1C090C:  B               loc_1C08E8
