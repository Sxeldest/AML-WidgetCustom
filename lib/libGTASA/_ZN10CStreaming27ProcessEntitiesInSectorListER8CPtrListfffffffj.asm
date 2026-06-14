; =========================================================
; Game Engine Function: _ZN10CStreaming27ProcessEntitiesInSectorListER8CPtrListfffffffj
; Address            : 0x2D279C - 0x2D2918
; =========================================================

2D279C:  PUSH            {R4-R7,LR}
2D279E:  ADD             R7, SP, #0xC
2D27A0:  PUSH.W          {R8-R11}
2D27A4:  SUB             SP, SP, #4
2D27A6:  VPUSH           {D8-D14}
2D27AA:  SUB             SP, SP, #8
2D27AC:  LDR             R4, [R0]
2D27AE:  CMP             R4, #0
2D27B0:  BEQ.W           loc_2D290A
2D27B4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D27C4)
2D27B6:  MOVS            R6, #:lower16:(aZ39rtaniminter+0x28); "torP18RtAnimInterpolatoriii"
2D27B8:  VLDR            S0, [R7,#arg_C]
2D27BC:  VMOV            S24, R3
2D27C0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D27C2:  VLDR            S16, [R7,#arg_8]
2D27C6:  VMUL.F32        S22, S0, S0
2D27CA:  VLDR            S18, [R7,#arg_4]
2D27CE:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
2D27D2:  VMOV            S26, R2
2D27D6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D27E8)
2D27D8:  VMOV            S28, R1
2D27DC:  VLDR            S20, [R7,#arg_0]
2D27E0:  MOVT            R6, #:upper16:(aZ39rtaniminter+0x28); "torP18RtAnimInterpolatoriii"
2D27E4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D27E6:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
2D27EA:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2D27F0)
2D27EC:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2D27EE:  LDR.W           R11, [R0]; CGame::currArea ...
2D27F2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D27F8)
2D27F4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D27F6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D27F8:  STR             R0, [SP,#0x60+var_5C]
2D27FA:  LDR             R0, =(TheCamera_ptr - 0x2D2800)
2D27FC:  ADD             R0, PC; TheCamera_ptr
2D27FE:  LDR             R0, [R0]; TheCamera
2D2800:  STR             R0, [SP,#0x60+var_60]
2D2802:  LDRD.W          R5, R4, [R4]
2D2806:  LDRH.W          R1, [R8]; CWorld::ms_nCurrentScanCode
2D280A:  LDRH            R0, [R5,#0x30]
2D280C:  CMP             R0, R1
2D280E:  BEQ             loc_2D2904
2D2810:  LDRSH.W         R0, [R5,#0x26]
2D2814:  STRH            R1, [R5,#0x30]
2D2816:  ADD.W           R1, R0, R0,LSL#2
2D281A:  ADD.W           R1, R10, R1,LSL#2
2D281E:  LDRB            R1, [R1,#0x10]
2D2820:  CMP             R1, #1
2D2822:  BEQ             loc_2D2904
2D2824:  LDR             R1, [R5,#0x1C]
2D2826:  TST.W           R1, #0x400
2D282A:  BNE             loc_2D2904
2D282C:  LDRB.W          R3, [R5,#0x33]
2D2830:  ANDS            R1, R6
2D2832:  LDR.W           R2, [R11]; CGame::currArea
2D2836:  CMP             R2, R3
2D2838:  MOV.W           R2, #0
2D283C:  IT EQ
2D283E:  MOVEQ           R2, #1
2D2840:  CMP             R3, #0xD
2D2842:  MOV.W           R3, #0
2D2846:  IT EQ
2D2848:  MOVEQ           R3, #1
2D284A:  TEQ.W           R1, #0x80
2D284E:  ITT EQ
2D2850:  ORREQ.W         R1, R3, R2
2D2854:  CMPEQ           R1, #1
2D2856:  BNE             loc_2D2904
2D2858:  LDR             R1, [SP,#0x60+var_5C]
2D285A:  LDR.W           R9, [R1,R0,LSL#2]
2D285E:  LDR.W           R0, [R9]
2D2862:  LDR             R1, [R0,#0x18]
2D2864:  MOV             R0, R9
2D2866:  BLX             R1
2D2868:  CBZ             R0, loc_2D2878
2D286A:  LDRB            R2, [R0]; unsigned __int8
2D286C:  LDRB            R1, [R0,#1]; unsigned __int8
2D286E:  MOV             R0, R2; this
2D2870:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
2D2874:  CMP             R0, #1
2D2876:  BNE             loc_2D2904
2D2878:  LDR             R1, [R5,#0x14]
2D287A:  ADD.W           R0, R1, #0x30 ; '0'
2D287E:  CMP             R1, #0
2D2880:  IT EQ
2D2882:  ADDEQ           R0, R5, #4
2D2884:  VLDR            S0, [R0]
2D2888:  VCMPE.F32       S0, S24
2D288C:  VMRS            APSR_nzcv, FPSCR
2D2890:  BLE             loc_2D2904
2D2892:  VCMPE.F32       S0, S18
2D2896:  VMRS            APSR_nzcv, FPSCR
2D289A:  BGE             loc_2D2904
2D289C:  VLDR            S2, [R0,#4]
2D28A0:  VCMPE.F32       S2, S20
2D28A4:  VMRS            APSR_nzcv, FPSCR
2D28A8:  BLE             loc_2D2904
2D28AA:  VCMPE.F32       S2, S16
2D28AE:  VMRS            APSR_nzcv, FPSCR
2D28B2:  BGE             loc_2D2904
2D28B4:  LDR             R0, [SP,#0x60+var_60]
2D28B6:  VSUB.F32        S2, S26, S2
2D28BA:  VSUB.F32        S0, S28, S0
2D28BE:  VLDR            S4, [R9,#0x30]
2D28C2:  VLDR            S6, [R0,#0xEC]
2D28C6:  VMUL.F32        S4, S4, S6
2D28CA:  VMUL.F32        S2, S2, S2
2D28CE:  VMUL.F32        S0, S0, S0
2D28D2:  VMUL.F32        S4, S4, S4
2D28D6:  VADD.F32        S0, S0, S2
2D28DA:  VMIN.F32        D2, D11, D2
2D28DE:  VCMPE.F32       S0, S4
2D28E2:  VMRS            APSR_nzcv, FPSCR
2D28E6:  BGE             loc_2D2904
2D28E8:  LDR.W           R0, [R9,#0x34]
2D28EC:  CBZ             R0, loc_2D28FA
2D28EE:  LDR             R0, [R5,#0x18]
2D28F0:  CBNZ            R0, loc_2D28FA
2D28F2:  LDR             R0, [R5]
2D28F4:  LDR             R1, [R0,#0x20]
2D28F6:  MOV             R0, R5
2D28F8:  BLX             R1
2D28FA:  LDRSH.W         R0, [R5,#0x26]; this
2D28FE:  LDR             R1, [R7,#arg_10]; int
2D2900:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D2904:  CMP             R4, #0
2D2906:  BNE.W           loc_2D2802
2D290A:  ADD             SP, SP, #8
2D290C:  VPOP            {D8-D14}
2D2910:  ADD             SP, SP, #4
2D2912:  POP.W           {R8-R11}
2D2916:  POP             {R4-R7,PC}
