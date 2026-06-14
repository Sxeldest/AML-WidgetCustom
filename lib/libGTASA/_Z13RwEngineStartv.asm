; =========================================================
; Game Engine Function: _Z13RwEngineStartv
; Address            : 0x1D7804 - 0x1D7892
; =========================================================

1D7804:  PUSH            {R4-R7,LR}
1D7806:  ADD             R7, SP, #0xC
1D7808:  PUSH.W          {R11}
1D780C:  SUB             SP, SP, #8
1D780E:  LDR             R0, =(RwEngineInstance_ptr - 0x1D781A)
1D7810:  MOVS            R1, #0
1D7812:  MOVS            R2, #0
1D7814:  MOVS            R3, #0
1D7816:  ADD             R0, PC; RwEngineInstance_ptr
1D7818:  MOVS            R6, #0
1D781A:  LDR             R0, [R0]; RwEngineInstance
1D781C:  LDR             R5, [R0]
1D781E:  MOVS            R0, #2
1D7820:  LDR             R4, [R5,#0x14]
1D7822:  BLX             R4
1D7824:  CBZ             R0, loc_1D785E
1D7826:  LDR             R0, =(RwEngineInstance_ptr - 0x1D782C)
1D7828:  ADD             R0, PC; RwEngineInstance_ptr
1D782A:  LDR             R1, [R0]; RwEngineInstance
1D782C:  LDR             R0, =(dword_68253C - 0x1D7834)
1D782E:  LDR             R1, [R1]
1D7830:  ADD             R0, PC; dword_68253C
1D7832:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1D7836:  CBZ             R0, loc_1D7866
1D7838:  LDR             R0, =(RwEngineInstance_ptr - 0x1D783E)
1D783A:  ADD             R0, PC; RwEngineInstance_ptr
1D783C:  LDR             R4, [R0]; RwEngineInstance
1D783E:  LDR             R0, [R4]
1D7840:  LDR             R0, [R0,#0x10]; float
1D7842:  BLX             j__Z15RwImageSetGammaf; RwImageSetGamma(float)
1D7846:  LDR             R6, [R5,#0x14]
1D7848:  MOVS            R0, #0x11
1D784A:  MOVS            R1, #0
1D784C:  MOVS            R2, #0
1D784E:  MOVS            R3, #0
1D7850:  BLX             R6
1D7852:  LDR             R0, [R4]
1D7854:  MOVS            R1, #3
1D7856:  MOVS            R6, #1
1D7858:  STR.W           R1, [R0,#0x148]
1D785C:  B               loc_1D7888
1D785E:  STR             R6, [SP,#0x18+var_18]
1D7860:  MOVS            R0, #0x18
1D7862:  MOVS            R1, #2
1D7864:  B               loc_1D787C
1D7866:  LDR             R5, [R5,#0x14]
1D7868:  MOVS            R0, #3
1D786A:  MOVS            R1, #0
1D786C:  MOVS            R2, #0
1D786E:  MOVS            R3, #0
1D7870:  MOVS            R6, #0
1D7872:  BLX             R5
1D7874:  CBNZ            R0, loc_1D7888
1D7876:  MOVS            R0, #0x18; int
1D7878:  MOVS            R1, #3
1D787A:  STR             R6, [SP,#0x18+var_18]
1D787C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D7880:  STR             R0, [SP,#0x18+var_14]
1D7882:  MOV             R0, SP
1D7884:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D7888:  MOV             R0, R6
1D788A:  ADD             SP, SP, #8
1D788C:  POP.W           {R11}
1D7890:  POP             {R4-R7,PC}
